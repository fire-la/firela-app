import '../utils/logger.dart';

/// Parsed receipt data from OCR text
class ParsedReceipt {
  final String merchant;
  final double totalAmount;
  final DateTime? date;
  final List<ParsedLineItem> lineItems;
  final double confidence;
  final String rawText;
  final Map<String, String> debugMatches;

  ParsedReceipt({
    this.merchant = '',
    this.totalAmount = 0,
    this.date,
    this.lineItems = const [],
    this.confidence = 0,
    required this.rawText,
    this.debugMatches = const {},
  });

  bool get isValid => totalAmount > 0 || merchant.isNotEmpty;

  Map<String, dynamic> toMap() => {
        'merchant': merchant,
        'amount': totalAmount,
        'date': date?.toIso8601String(),
        'confidence': confidence,
        'lineItems': lineItems.map((i) => i.toMap()).toList(),
        'rawText': rawText,
      };
}

/// A single line item from a receipt
class ParsedLineItem {
  final String name;
  final double quantity;
  final double unitPrice;
  final double totalPrice;

  ParsedLineItem({
    required this.name,
    this.quantity = 1,
    this.unitPrice = 0,
    required this.totalPrice,
  });

  Map<String, dynamic> toMap() => {
        'name': name,
        'quantity': quantity,
        'unitPrice': unitPrice,
        'totalPrice': totalPrice,
      };
}

/// Parser that extracts structured receipt data from raw OCR text
class ReceiptTextParser {
  ReceiptTextParser._();
  static final ReceiptTextParser instance = ReceiptTextParser._();

  /// Parse raw OCR text into structured receipt data
  ParsedReceipt parse(String rawText, {List<String>? rawLines}) {
    final lines = rawLines ?? rawText.split('\n');
    final debugMatches = <String, String>{};

    logger.d('[ReceiptParser] Parsing ${lines.length} lines');

    // 0. Join fragmented lines (OCR often splits lines)
    final joinedText = _joinFragmentedLines(lines);
    final joinedLines = joinedText.split('\n');

    // 1. Extract total amount — prefer keyword context, then largest amount
    final totalAmount = _extractTotalAmount(joinedLines, debugMatches);

    // 2. Extract date (from joined text for cross-line patterns)
    final date = _extractDate(joinedLines, debugMatches);

    // 3. Extract merchant name
    final merchant = _extractMerchant(joinedLines, debugMatches);

    // 4. Extract line items
    final lineItems = _extractLineItems(joinedLines);

    // 5. Calculate confidence
    final confidence = _calculateConfidence(
      merchant: merchant,
      totalAmount: totalAmount,
      date: date,
      lineItems: lineItems,
    );

    final receipt = ParsedReceipt(
      merchant: merchant,
      totalAmount: totalAmount,
      date: date,
      lineItems: lineItems,
      confidence: confidence,
      rawText: rawText,
      debugMatches: debugMatches,
    );

    logger.i('[ReceiptParser] Parsed: merchant="$merchant", amount=$totalAmount, '
        'date=$date, confidence=${confidence.toStringAsFixed(1)}%');
    logger.d('[ReceiptParser] Debug matches: $debugMatches');

    return receipt;
  }

  /// Join fragmented OCR lines back together.
  ///
  /// ML Kit often splits receipt lines into many small fragments.
  /// We join lines that look like they belong together:
  /// - A line starting with lowercase/digit that follows a line ending mid-word
  /// - Date parts split across lines (e.g. "2024-0" + "1-29 12:12:20")
  /// - Amount parts split across lines (e.g. "79." + "00")
  String _joinFragmentedLines(List<String> lines) {
    final result = <String>[];
    final buffer = StringBuffer();

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) {
        if (buffer.isNotEmpty) {
          result.add(buffer.toString());
          buffer.clear();
        }
        continue;
      }

      if (buffer.isEmpty) {
        buffer.write(line);
      } else {
        final buffered = buffer.toString();
        final shouldJoin = _shouldJoin(buffered, line);
        if (shouldJoin) {
          buffer.write(' ');
          buffer.write(line);
        } else {
          result.add(buffered);
          buffer.clear();
          buffer.write(line);
        }
      }
    }
    if (buffer.isNotEmpty) {
      result.add(buffer.toString());
    }

    return result.join('\n');
  }

  /// Determine if two consecutive OCR lines should be joined.
  bool _shouldJoin(String prev, String current) {
    // Join if prev looks like a truncated date (ends with "-")
    if (RegExp(r'\d{4}-\d{0,2}-?$').hasMatch(prev) ||
        RegExp(r'\d{4}-\d{0,2}$').hasMatch(prev)) {
      return true;
    }

    // Join if prev ends mid-number (e.g. "79." or "323." or "323. 8")
    if (RegExp(r'\d+\.\s*$').hasMatch(prev) && RegExp(r'^\d').hasMatch(current)) {
      return true;
    }

    // Join if prev ends with a space and partial digit (e.g. "323. 8")
    if (RegExp(r'\d+\.\s+\d$').hasMatch(prev)) {
      return true;
    }

    // Join very short fragments (< 4 chars) with next line
    if (prev.length <= 3 && !RegExp(r'^[\-=\*#]{3,}$').hasMatch(prev)) {
      return true;
    }

    return false;
  }

  /// Extract total amount from receipt text.
  ///
  /// Strategy:
  /// 1. Look for keyword-prefixed totals (合计, 总计, etc.)
  /// 2. Look for the LAST amount that appears near the bottom of the receipt
  /// 3. Among all amounts found, prefer the one that equals the sum of items
  double _extractTotalAmount(List<String> lines, Map<String, String> debug) {
    // Pass 1: Look for keyword-prefixed totals
    final keywordPatterns = <_NamedPattern>[
      _NamedPattern(
        name: 'total_keyword',
        pattern: RegExp(r'(?:合计|总计|共计|应付|应收|实付|实收|付款|收款|消费|合计金额)\s*[：:]*\s*[¥￥]?\s*(\d+[.,]\d{2})'),
      ),
      _NamedPattern(
        name: 'total_symbol',
        pattern: RegExp(r'(?:TOTAL|Total|total|AMOUNT|Amount|amount)\s*[：:]*\s*[¥￥]?\s*(\d+[.,]\d{2})'),
      ),
    ];

    for (final p in keywordPatterns) {
      for (final line in lines) {
        final match = p.pattern.firstMatch(line);
        if (match != null) {
          final amountStr = match.group(1)!.replaceAll(',', '.');
          final amount = double.tryParse(amountStr) ?? 0;
          if (amount > 0) {
            debug['total_match'] = '${p.name}: "${line.trim()}"';
            return amount;
          }
        }
      }
    }

    // Pass 2: Collect ALL amounts in the receipt, then pick the best candidate
    final allAmounts = <_AmountWithLine>[];
    final amountPattern = RegExp(r'(\d{1,8})[.,]\s*(\d{2})');

    for (int i = 0; i < lines.length; i++) {
      final line = lines[i].trim();
      for (final match in amountPattern.allMatches(line)) {
        final intPart = match.group(1)!;
        final decPart = match.group(2)!;
        final amountStr = '$intPart.$decPart';
        final amount = double.tryParse(amountStr) ?? 0;
        if (amount > 0) {
          allAmounts.add(_AmountWithLine(amount: amount, lineIndex: i, line: line));
        }
      }
    }

    if (allAmounts.isEmpty) {
      debug['total_match'] = 'NOT FOUND';
      return 0;
    }

    // Among amounts near the bottom of the receipt, find the largest one.
    // Receipts typically have the total near the end.
    // Use the bottom 40% of lines as "near bottom".
    final bottomThreshold = (lines.length * 0.6).floor();
    final bottomAmounts = allAmounts.where((a) => a.lineIndex >= bottomThreshold).toList();

    // Pick the maximum amount from bottom section, or overall if bottom is empty
    final candidates = bottomAmounts.isNotEmpty ? bottomAmounts : allAmounts;
    candidates.sort((a, b) => b.amount.compareTo(a.amount));
    final best = candidates.first;

    debug['total_match'] = 'largest_in_bottom: "${best.line.trim()}" (among ${allAmounts.length} amounts)';
    return best.amount;
  }

  /// Extract date from receipt text
  DateTime? _extractDate(List<String> lines, Map<String, String> debug) {
    // First try joined lines for cross-line date matches
    final fullText = lines.join(' ');

    final patterns = <_NamedPattern>[
      // 2024-01-15 or 2024/01/15 or 2024.01.15 (with optional time)
      _NamedPattern(
        name: 'date_iso',
        pattern: RegExp(r'(20\d{2})[年/\-.](\d{1,2})[月/\-.](\d{1,2})[日号]?'),
      ),
      // 20240115
      _NamedPattern(
        name: 'date_compact',
        pattern: RegExp(r'(20\d{2})(\d{2})(\d{2})'),
      ),
      // 01-15-2024 or 01/15/2024
      _NamedPattern(
        name: 'date_us',
        pattern: RegExp(r'(\d{1,2})[/\-.](\d{1,2})[/\-.](20\d{2})'),
      ),
    ];

    // Try full text first (handles split lines)
    for (final p in patterns) {
      final match = p.pattern.firstMatch(fullText);
      if (match != null) {
        final date = _parseDateMatch(p.name, match);
        if (date != null) {
          debug['date_match'] = '${p.name}: fulltext match';
          return date;
        }
      }
    }

    // Then try individual lines
    for (final p in patterns) {
      for (final line in lines) {
        final match = p.pattern.firstMatch(line);
        if (match != null) {
          final date = _parseDateMatch(p.name, match);
          if (date != null) {
            debug['date_match'] = '${p.name}: "${line.trim()}"';
            return date;
          }
        }
      }
    }

    debug['date_match'] = 'NOT FOUND';
    return null;
  }

  DateTime? _parseDateMatch(String patternName, RegExpMatch match) {
    try {
      int year, month, day;
      if (patternName == 'date_iso' || patternName == 'date_compact') {
        year = int.parse(match.group(1)!);
        month = int.parse(match.group(2)!);
        day = int.parse(match.group(3)!);
      } else if (patternName == 'date_us') {
        month = int.parse(match.group(1)!);
        day = int.parse(match.group(2)!);
        year = int.parse(match.group(3)!);
      } else {
        return null;
      }
      if (month >= 1 && month <= 12 && day >= 1 && day <= 31) {
        return DateTime(year, month, day);
      }
    } catch (_) {}
    return null;
  }

  /// Extract merchant/store name from receipt
  String _extractMerchant(List<String> lines, Map<String, String> debug) {
    // Noise patterns to skip
    final noisePatterns = [
      RegExp(r'^[\s\d]*$'), // whitespace or numbers only
      RegExp(r'^(票|收据|发票|小票|凭证|签购单|pos|POS)'),
      RegExp(r'^(欢迎|谢谢|感谢|Welcome|Thank)'),
      RegExp(r'^[\-=\*#]{3,}'), // separators
      RegExp(r'^(电话|地址|店|分店|Tel|Address|No\.)', caseSensitive: false),
      RegExp(r'^(商户|终端|编号|流水|参考|订单|交易)'),
      // Skip lines that look like dates, times, or IDs
      RegExp(r'^\d{4}[-/\.]'),
      RegExp(r'^\d{1,2}:\d{2}'),
      RegExp(r'^[A-Z]{2,}:'), // e.g. "EBA EJ:"
      RegExp(r'^[A-Za-z]{1,3}:\s'), // short prefix like "H: 2"
    ];

    for (int i = 0; i < lines.length && i < 10; i++) {
      final line = lines[i].trim();
      if (line.isEmpty) continue;
      if (line.length < 2) continue;

      bool isNoise = false;
      for (final noise in noisePatterns) {
        if (noise.hasMatch(line)) {
          isNoise = true;
          break;
        }
      }

      // Also skip if line is mostly numbers or special chars
      final alphaCount = line.replaceAll(RegExp(r'[^a-zA-Z\u4e00-\u9fff]'), '').length;
      if (alphaCount < 2) continue;

      if (!isNoise) {
        debug['merchant_match'] = 'line[$i]: "${line.substring(0, line.length > 30 ? 30 : line.length)}"';
        return _cleanMerchantName(line);
      }
    }

    debug['merchant_match'] = 'NOT FOUND';
    return '';
  }

  /// Extract individual line items
  List<ParsedLineItem> _extractLineItems(List<String> lines) {
    final items = <ParsedLineItem>[];

    final itemPattern = RegExp(r'^(.+?)\s+[x×X]\s*(\d+\.?\d*)\s+(\d+\.?\d*)\s+(\d+\.?\d*)$');
    final simpleItemPattern = RegExp(r'^(.+?)\s+([¥￥]?\d+[.,]\d{2})\s*$');

    for (final line in lines) {
      final trimmed = line.trim();
      if (trimmed.isEmpty) continue;
      if (_isMetaLine(trimmed)) continue;

      var match = itemPattern.firstMatch(trimmed);
      if (match != null) {
        final name = match.group(1)!.trim();
        final qty = double.tryParse(match.group(2)!) ?? 1;
        final unitPrice = double.tryParse(match.group(3)!.replaceAll(',', '.')) ?? 0;
        final totalPrice = double.tryParse(match.group(4)!.replaceAll(',', '.')) ?? 0;
        items.add(ParsedLineItem(
          name: name,
          quantity: qty,
          unitPrice: unitPrice,
          totalPrice: totalPrice > 0 ? totalPrice : unitPrice * qty,
        ));
        continue;
      }

      match = simpleItemPattern.firstMatch(trimmed);
      if (match != null) {
        final name = match.group(1)!.trim();
        final priceStr = match.group(2)!.replaceAll('¥', '').replaceAll('￥', '').replaceAll(',', '.');
        final price = double.tryParse(priceStr) ?? 0;
        if (price > 0 && name.length >= 2) {
          items.add(ParsedLineItem(name: name, totalPrice: price));
        }
      }
    }

    return items;
  }

  /// Check if a line is metadata (not a product item)
  bool _isMetaLine(String line) {
    final metaPatterns = [
      RegExp(r'^(合计|总计|共计|应付|实付|找零)'),
      RegExp(r'^(日期|时间|单号|订单|流水|凭证|交易号)'),
      RegExp(r'^(支付宝|微信|银联|刷卡|现金|Pay)'),
      RegExp(r'^(会员|积分|优惠|折扣|减免|抹零)'),
      RegExp(r'^(欢迎|谢谢|感谢|Welcome|Thank)'),
      RegExp(r'^(客服|投诉|电话|地址|网址)'),
      RegExp(r'^[\-=\*#]{3,}'),
    ];
    for (final p in metaPatterns) {
      if (p.hasMatch(line)) return true;
    }
    return false;
  }

  /// Clean up merchant name
  String _cleanMerchantName(String name) {
    var cleaned = name.replaceAll(RegExp(r'\s+$'), '');
    cleaned = cleaned.replaceAll(RegExp(r'(?:门店|分店|店)?$'), '');
    if (cleaned.length > 30) {
      cleaned = cleaned.substring(0, 30);
    }
    return cleaned.trim();
  }

  /// Calculate overall confidence score
  double _calculateConfidence({
    required String merchant,
    required double totalAmount,
    required DateTime? date,
    required List<ParsedLineItem> lineItems,
  }) {
    double score = 0;

    if (merchant.isNotEmpty) {
      score += 25;
      if (merchant.length >= 2 && merchant.length <= 20) score += 10;
    }

    if (totalAmount > 0) {
      score += 30;
      if (totalAmount >= 0.01 && totalAmount <= 999999) score += 10;
    }

    if (date != null) {
      score += 15;
      final now = DateTime.now();
      if (date.isBefore(now) && date.isAfter(now.subtract(const Duration(days: 365)))) {
        score += 5;
      }
    }

    score += (lineItems.length.clamp(0, 5)) * 5;

    return score.clamp(0, 100);
  }
}

class _NamedPattern {
  final String name;
  final RegExp pattern;
  _NamedPattern({required this.name, required this.pattern});
}

class _AmountWithLine {
  final double amount;
  final int lineIndex;
  final String line;
  _AmountWithLine({required this.amount, required this.lineIndex, required this.line});
}
