import 'dart:convert';
import 'dart:typed_data';
import 'package:gbk_codec/gbk_codec.dart' show gbk_bytes;
import '../../../core/utils/logger.dart';
import '../parser_interface.dart';
import '../parse_error.dart';
import '../parse_warning.dart';
import '../parse_result.dart';
import '../raw_transaction.dart';
import '../custom_fields/alipay_cashbook_fields.dart';

/// Parser for Alipay Cashbook (记账本) exported CSV files
///
/// Supports the CSV format exported from Alipay Cashbook feature.
/// Files are typically GBK-encoded on Windows systems.
///
/// Expected CSV columns:
/// 1. 记录时间 (Record Time)
/// 2. 分类 (Category)
/// 3. 收支类型 (Income/Expense Type)
/// 4. 金额 (Amount)
/// 5. 备注 (Note)
/// 6. 账户 (Account)
/// 7. 来源 (Source)
/// 8. 标签 (Tags)
class AlipayCashbookParser extends Parser<AlipayCashbookFields> {
  @override
  String get name => 'alipay-cashbook';

  @override
  List<String> get supportedExtensions => ['csv'];

  @override
  bool identify(String filename, Uint8List content) {
    // Check file extension
    final ext = filename.split('.').last.toLowerCase();
    logger.i('[AlipayCashbookParser] 检查文件: $filename, 扩展名: $ext');

    if (ext != 'csv') {
      logger.i('[AlipayCashbookParser] 跳过：不是 CSV 文件');
      return false;
    }

    // Try to detect Alipay Cashbook format by checking header
    try {
      // Try UTF-8 first
      String text;
      try {
        text = utf8.decode(content);
        logger.i('[AlipayCashbookParser] 使用 UTF-8 解码成功');
      } catch (e) {
        // Try GBK encoding
        logger.i('[AlipayCashbookParser] UTF-8 解码失败，尝试 GBK');
        text = _decodeGbk(content);
      }

      // 输出文件的前 5 行用于调试
      final lines = text.split('\n');
      logger.i('[AlipayCashbookParser] 文件总行数: ${lines.length}');
      for (int i = 0; i < 5 && i < lines.length; i++) {
        // ignore: avoid_print
        print('[AlipayCashbookParser] 第${i+1}行: ${lines[i]}');
      }

      // Check for Alipay Cashbook-specific markers
      // Must have both 记录时间 and 收支类型 to distinguish from regular Alipay format
      final hasRecordTime = text.contains('记录时间');
      final hasIncomeExpenseType = text.contains('收支类型');
      final hasCategory = text.contains('分类');
      final hasAccount = text.contains('账户');

      final isCashbook = hasRecordTime && (hasIncomeExpenseType || hasCategory || hasAccount);

      logger.i('[AlipayCashbookParser] 检测结果: $isCashbook (记录时间: $hasRecordTime, 收支类型: $hasIncomeExpenseType)');
      if (!isCashbook) {
        logger.w('[AlipayCashbookParser] 未找到支付宝记账本特征标记');
      }

      return isCashbook;
    } catch (e) {
      logger.e('[AlipayCashbookParser] 识别失败: $e');
      return false;
    }
  }

  @override
  ParseResult parse(Uint8List content) {
    final warnings = <ParseWarning>[];

    // Decode content - try UTF-8 first, then GBK
    String text;
    try {
      text = utf8.decode(content);
    } catch (_) {
      try {
        text = _decodeGbk(content);
      } catch (e) {
        return ParseFailure(errors: [
          ParseError(
            type: ParseErrorType.encodingError,
            message: '无法解码文件编码，请确保文件为 UTF-8 或 GBK 编码',
          ),
        ]);
      }
    }

    // Split into lines
    final lines = text.split(RegExp(r'\r?\n'));
    if (lines.isEmpty) {
      return ParseFailure(errors: [
        ParseError(
          type: ParseErrorType.invalidFormat,
          message: '文件为空或格式无效',
        ),
      ]);
    }

    // Find header row using improved detection that skips introductory text
    final headerIndex = _findHeaderRow(lines);

    if (headerIndex < 0) {
      return ParseFailure(errors: [
        ParseError(
          type: ParseErrorType.invalidFormat,
          message: '未找到有效的支付宝记账本表头，请确认文件格式正确',
        ),
      ]);
    }

    // Parse header line
    final headers = _parseCsvLine(lines[headerIndex]);
    logger.i('[AlipayCashbookParser] 找到表头行 #$headerIndex: ${lines[headerIndex]}');

    // Map column indices
    final colMap = _mapColumns(headers);

    // Parse transactions
    final transactions = <RawTransaction<AlipayCashbookFields>>[];

    for (int i = headerIndex + 1; i < lines.length; i++) {
      final lineNumber = i + 1;
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      try {
        final fields = _parseCsvLine(line);
        if (fields.length < 4) {
          warnings.add(ParseWarning(
            message: '跳过无效行（字段数不足）',
            line: lineNumber,
          ));
          continue;
        }

        final txn = _parseTransaction(fields, colMap, lineNumber);
        if (txn != null) {
          transactions.add(txn);
        }
      } catch (e) {
        warnings.add(ParseWarning(
          message: '解析行失败: $e',
          line: lineNumber,
        ));
      }
    }

    if (transactions.isEmpty && warnings.isEmpty) {
      return ParseFailure(errors: [
        ParseError(
          type: ParseErrorType.invalidFormat,
          message: '未找到有效的交易记录',
        ),
      ]);
    }

    return ParseSuccess(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  /// Find the header row that contains column names
  /// Alipay Cashbook files often have introductory text before the header
  int _findHeaderRow(List<String> lines) {
    // Skip introductory lines (like "特别提示") and find the actual header row
    // Search through more lines since the header might be after introductory text
    for (int i = 0; i < lines.length && i < 30; i++) {
      final line = lines[i].trim();
      // Skip empty lines
      if (line.isEmpty) continue;

      // Skip introductory text lines (特别提示 section)
      if (line.startsWith('特别提示') ||
          line.startsWith('---') ||
          line.contains('支付宝受理') ||
          line.contains('请勿将本记账单') ||
          line.contains('快捷支付') ||
          line.contains('涂改、编造')) {
        logger.i('[AlipayCashbookParser] 跳过介绍行 #$i: ${line.length > 30 ? line.substring(0, 30) : line}...');
        continue;
      }

      // Check for Alipay Cashbook header markers
      // The header row should contain "记录时间" and at least one of "分类", "收支类型", "金额"
      if (line.contains('记录时间') &&
          (line.contains('分类') || line.contains('收支类型') || line.contains('金额'))) {
        logger.i('[AlipayCashbookParser] 找到表头行 #$i');
        return i;
      }
    }
    return -1;
  }

  /// Map column names to indices
  _ColumnMap _mapColumns(List<String> headers) {
    final map = _ColumnMap();

    for (int i = 0; i < headers.length; i++) {
      final h = headers[i].trim();
      if (h.contains('记录时间') || h == '时间') map.timeIndex = i;
      if (h.contains('分类')) map.categoryIndex = i;
      if (h.contains('收支类型')) map.incomeExpenseTypeIndex = i;
      if (h.contains('金额')) map.amountIndex = i;
      if (h.contains('备注')) map.noteIndex = i;
      if (h.contains('账户')) map.accountIndex = i;
      if (h.contains('来源')) map.sourceIndex = i;
      if (h.contains('标签')) map.tagsIndex = i;
    }

    return map;
  }

  /// Parse a single transaction from CSV fields
  RawTransaction<AlipayCashbookFields>? _parseTransaction(
    List<String> fields,
    _ColumnMap colMap,
    int lineNumber,
  ) {
    // Get date
    DateTime? date;
    if (colMap.timeIndex >= 0 && colMap.timeIndex < fields.length) {
      date = _parseDate(fields[colMap.timeIndex]);
    }
    if (date == null) {
      return null; // Skip transactions without date
    }

    // Get amount
    double? amount;
    if (colMap.amountIndex >= 0 && colMap.amountIndex < fields.length) {
      amount = _parseAmount(fields[colMap.amountIndex]);
    }
    if (amount == null) {
      return null; // Skip transactions without amount
    }

    // Check income/expense type
    String? incomeExpenseType;
    if (colMap.incomeExpenseTypeIndex >= 0 && colMap.incomeExpenseTypeIndex < fields.length) {
      incomeExpenseType = fields[colMap.incomeExpenseTypeIndex].trim();
      if (incomeExpenseType.isEmpty) incomeExpenseType = null;
    }

    // Apply sign based on income/expense type
    if (incomeExpenseType != null && incomeExpenseType.contains('支出') && amount > 0) {
      amount = -amount; // Make expense negative
    }

    // Get category
    String? category;
    if (colMap.categoryIndex >= 0 && colMap.categoryIndex < fields.length) {
      category = fields[colMap.categoryIndex].trim();
      if (category.isEmpty) category = null;
    }

    // Get note
    String? note;
    if (colMap.noteIndex >= 0 && colMap.noteIndex < fields.length) {
      note = fields[colMap.noteIndex].trim();
      if (note.isEmpty) note = null;
    }

    // Get account
    String? account;
    if (colMap.accountIndex >= 0 && colMap.accountIndex < fields.length) {
      account = fields[colMap.accountIndex].trim();
      if (account.isEmpty) account = null;
    }

    // Get source
    String? source;
    if (colMap.sourceIndex >= 0 && colMap.sourceIndex < fields.length) {
      source = fields[colMap.sourceIndex].trim();
      if (source.isEmpty) source = null;
    }

    // Get tags
    String? tags;
    if (colMap.tagsIndex >= 0 && colMap.tagsIndex < fields.length) {
      tags = fields[colMap.tagsIndex].trim();
      if (tags.isEmpty) tags = null;
    }

    // Build description from note or category
    String description = note ?? category ?? '未知交易';

    return RawTransaction<AlipayCashbookFields>(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: description,
      metadata: category != null ? {'category': category} : null,
      customFields: AlipayCashbookFields(
        category: category,
        incomeExpenseType: incomeExpenseType,
        note: note,
        account: account,
        source: source,
        tags: tags,
      ),
    );
  }

  /// Parse date from various formats
  DateTime? _parseDate(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;

    // Try ISO format with time: 2024-01-15 10:30:00
    final isoTimeMatch = RegExp(r'(\d{4})-(\d{1,2})-(\d{1,2})\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?').firstMatch(trimmed);
    if (isoTimeMatch != null) {
      return DateTime(
        int.parse(isoTimeMatch.group(1)!),
        int.parse(isoTimeMatch.group(2)!),
        int.parse(isoTimeMatch.group(3)!),
        int.parse(isoTimeMatch.group(4)!),
        int.parse(isoTimeMatch.group(5)!),
        isoTimeMatch.group(6) != null ? int.parse(isoTimeMatch.group(6)!) : 0,
      );
    }

    // Try ISO format: 2024-01-15
    final isoMatch = RegExp(r'(\d{4})-(\d{1,2})-(\d{1,2})').firstMatch(trimmed);
    if (isoMatch != null) {
      return DateTime(
        int.parse(isoMatch.group(1)!),
        int.parse(isoMatch.group(2)!),
        int.parse(isoMatch.group(3)!),
      );
    }

    // Try Chinese format with time: 2024年1月15日 10:30:00
    final cnTimeMatch = RegExp(r'(\d{4})年(\d{1,2})月(\d{1,2})日\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?').firstMatch(trimmed);
    if (cnTimeMatch != null) {
      return DateTime(
        int.parse(cnTimeMatch.group(1)!),
        int.parse(cnTimeMatch.group(2)!),
        int.parse(cnTimeMatch.group(3)!),
        int.parse(cnTimeMatch.group(4)!),
        int.parse(cnTimeMatch.group(5)!),
        cnTimeMatch.group(6) != null ? int.parse(cnTimeMatch.group(6)!) : 0,
      );
    }

    // Try Chinese format: 2024年1月15日
    final cnMatch = RegExp(r'(\d{4})年(\d{1,2})月(\d{1,2})日').firstMatch(trimmed);
    if (cnMatch != null) {
      return DateTime(
        int.parse(cnMatch.group(1)!),
        int.parse(cnMatch.group(2)!),
        int.parse(cnMatch.group(3)!),
      );
    }

    // Try slash format with time: 2024/1/15 10:30:00
    final slashTimeMatch = RegExp(r'(\d{4})/(\d{1,2})/(\d{1,2})\s+(\d{1,2}):(\d{1,2}):?(\d{1,2})?').firstMatch(trimmed);
    if (slashTimeMatch != null) {
      return DateTime(
        int.parse(slashTimeMatch.group(1)!),
        int.parse(slashTimeMatch.group(2)!),
        int.parse(slashTimeMatch.group(3)!),
        int.parse(slashTimeMatch.group(4)!),
        int.parse(slashTimeMatch.group(5)!),
        slashTimeMatch.group(6) != null ? int.parse(slashTimeMatch.group(6)!) : 0,
      );
    }

    // Try slash format: 2024/1/15
    final slashMatch = RegExp(r'(\d{4})/(\d{1,2})/(\d{1,2})').firstMatch(trimmed);
    if (slashMatch != null) {
      return DateTime(
        int.parse(slashMatch.group(1)!),
        int.parse(slashMatch.group(2)!),
        int.parse(slashMatch.group(3)!),
      );
    }

    return null;
  }

  /// Parse amount from string
  double? _parseAmount(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;

    // Remove currency symbols and commas
    final cleaned = trimmed
        .replaceAll('¥', '')
        .replaceAll('￥', '')
        .replaceAll('CNY', '')
        .replaceAll(',', '')
        .replaceAll(' ', '')
        .trim();

    // Handle +/- prefix
    return double.tryParse(cleaned);
  }

  /// Parse a CSV line handling quoted fields
  List<String> _parseCsvLine(String line) {
    final fields = <String>[];
    final buffer = StringBuffer();
    bool inQuotes = false;

    for (int i = 0; i < line.length; i++) {
      final char = line[i];

      if (char == '"') {
        if (inQuotes && i + 1 < line.length && line[i + 1] == '"') {
          // Escaped quote
          buffer.write('"');
          i++;
        } else {
          // Toggle quote state
          inQuotes = !inQuotes;
        }
      } else if (char == ',' && !inQuotes) {
        fields.add(buffer.toString().trim());
        buffer.clear();
      } else {
        buffer.write(char);
      }
    }

    // Add last field
    fields.add(buffer.toString().trim());

    return fields;
  }

  /// Decode GBK encoded bytes to string
  String _decodeGbk(Uint8List bytes) {
    try {
      // 使用 gbk_bytes 正确处理双字节 GBK 字符
      final result = gbk_bytes.decode(bytes);
      logger.i('[AlipayCashbookParser] GBK 解码成功，结果长度: ${result.length}');
      return result;
    } catch (e) {
      logger.e('[AlipayCashbookParser] GBK 解码失败: $e');
      // Fallback: use Latin-1 which preserves byte values
      return bytes.map((b) => String.fromCharCode(b)).join();
    }
  }
}

/// Helper class to map column indices
class _ColumnMap {
  int timeIndex = -1;
  int categoryIndex = -1;
  int incomeExpenseTypeIndex = -1;
  int amountIndex = -1;
  int noteIndex = -1;
  int accountIndex = -1;
  int sourceIndex = -1;
  int tagsIndex = -1;
}
