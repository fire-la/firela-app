import 'dart:convert';
import 'dart:typed_data';
import 'package:gbk_codec/gbk_codec.dart' show gbk_bytes;
import '../../../core/utils/logger.dart';
import '../parser_interface.dart';
import '../parse_error.dart';
import '../parse_warning.dart';
import '../parse_result.dart';
import '../raw_transaction.dart';
import '../custom_fields/alipay_custom_fields.dart';

/// Parser for Alipay web-exported CSV files
///
/// Supports the CSV format exported from Alipay web portal (alipay.com).
/// Files are typically GBK-encoded on Windows systems.
///
/// Expected CSV columns (11+ columns):
/// 1. 交易时间 (Transaction Time)
/// 2. 公历日期 / 交易日期 (Gregorian Date)
/// 3. 交易号 (Transaction ID)
/// 4. 商家订单号 (Merchant Order No)
/// 5. 交易来源 (Transaction Source)
/// 6. 类型 (Type)
/// 7. 交易对方 (Counterparty)
/// 8. 商品名称 (Product Name)
/// 9. 金额（收入/支出）(Amount)
/// 10. 收/支 (Income/Expense)
/// 11. 交易状态 (Status)
/// 12+ ... (additional fields)
class AlipayWebParser extends Parser<AlipayCustomFields> {
  @override
  String get name => 'alipay-web';

  @override
  List<String> get supportedExtensions => ['csv'];

  @override
  bool identify(String filename, Uint8List content) {
    // Check file extension
    final ext = filename.split('.').last.toLowerCase();
    logger.i('[AlipayParser] 检查文件: $filename, 扩展名: $ext');

    if (ext != 'csv') {
      logger.i('[AlipayParser] 跳过：不是 CSV 文件');
      return false;
    }

    // Try to detect Alipay format by checking header
    try {
      // Try UTF-8 first
      String text;
      try {
        text = utf8.decode(content);
        logger.i('[AlipayParser] 使用 UTF-8 解码成功');
      } catch (e) {
        // Try GBK encoding
        logger.i('[AlipayParser] UTF-8 解码失败，尝试 GBK');
        text = _decodeGbk(content);
      }

      // 输出文件的前 5 行用于调试 - 分行输出避免截断
      final lines = text.split('\n');
      logger.i('[AlipayParser] 文件总行数: ${lines.length}');
      for (int i = 0; i < 5 && i < lines.length; i++) {
        // 使用 print 而不是 logger 避免截断
        // ignore: avoid_print
        print('[AlipayParser] 第${i+1}行: ${lines[i]}');
      }

      // Check for Alipay-specific markers
      // 支持标准支付宝账单和支付宝记账本两种格式
      final hasMarkers = text.contains('交易时间') ||
             text.contains('交易号') ||
             text.contains('商家订单号') ||
             text.contains('商品说明') ||
             text.contains('商品名称') ||
             text.contains('资金流向') ||
             text.contains('收/支') ||
             // 支付宝记账本格式
             text.contains('记录时间') ||
             text.contains('收支类型') ||
             text.contains('分类') ||
             text.contains('账户') ||
             // 也检查一些常见的支付宝 CSV 特征
             text.contains('支付宝') ||
             text.contains('余额宝') ||
             text.toLowerCase().contains('alipay');

      logger.i('[AlipayParser] 检测结果: $hasMarkers');
      if (!hasMarkers) {
        logger.w('[AlipayParser] 未找到支付宝特征标记');
      }

      return hasMarkers;
    } catch (e) {
      logger.e('[AlipayParser] 识别失败: $e');
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

    // Find header row (contains column names)
    // 支持多种可能的表头关键词
    int headerIndex = -1;
    List<String>? headers;
    for (int i = 0; i < lines.length && i < 10; i++) {
      final line = lines[i].trim();
      // 更宽松的表头检测：只要包含以下任意一个关键词就认为是表头行
      if (line.contains('交易时间') ||
          line.contains('交易号') ||
          line.contains('商家订单号') ||
          line.contains('商品说明') ||
          line.contains('商品名称') ||
          line.contains('资金流向') ||
          line.contains('收/支')) {
        headerIndex = i;
        headers = _parseCsvLine(line);
        break;
      }
    }

    if (headerIndex < 0 || headers == null) {
      return ParseFailure(errors: [
        ParseError(
          type: ParseErrorType.invalidFormat,
          message: '未找到有效的支付宝账单表头，请确认文件格式正确',
        ),
      ]);
    }

    // Map column indices
    final colMap = _mapColumns(headers);

    // Parse transactions
    final transactions = <RawTransaction<AlipayCustomFields>>[];
    int lineNumber = headerIndex + 1;

    for (int i = headerIndex + 1; i < lines.length; i++) {
      lineNumber = i + 1;
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      try {
        final fields = _parseCsvLine(line);
        if (fields.length < 8) {
          // Not enough fields, skip
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

  /// Map column names to indices
  _ColumnMap _mapColumns(List<String> headers) {
    final map = _ColumnMap();

    for (int i = 0; i < headers.length; i++) {
      final h = headers[i].trim();
      if (h.contains('交易时间') || h == '时间') map.timeIndex = i;
      if (h.contains('公历') || h.contains('交易日期') || h == '日期') map.dateIndex = i;
      if (h.contains('交易号') && !h.contains('商家')) map.orderNoIndex = i;
      if (h.contains('商家订单号')) map.merchantOrderNoIndex = i;
      if (h.contains('交易对方') || h == '对方') map.counterpartyIndex = i;
      if (h.contains('商品名称') || h.contains('商品说明')) map.productIndex = i;
      if (h.contains('金额') && !h.contains('服务费')) map.amountIndex = i;
      if (h == '收/支' || h.contains('收/支')) map.incomeExpenseIndex = i;
      if (h.contains('交易状态') || h == '状态') map.statusIndex = i;
      if (h.contains('类型')) map.typeIndex = i;
    }

    return map;
  }

  /// Parse a single transaction from CSV fields
  RawTransaction<AlipayCustomFields>? _parseTransaction(
    List<String> fields,
    _ColumnMap colMap,
    int lineNumber,
  ) {
    // Get date
    DateTime? date;
    if (colMap.dateIndex >= 0 && colMap.dateIndex < fields.length) {
      date = _parseDate(fields[colMap.dateIndex]);
    }
    if (date == null && colMap.timeIndex >= 0 && colMap.timeIndex < fields.length) {
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

    // Check income/expense indicator
    if (colMap.incomeExpenseIndex >= 0 && colMap.incomeExpenseIndex < fields.length) {
      final indicator = fields[colMap.incomeExpenseIndex].trim();
      if (indicator == '支出' && amount > 0) {
        amount = -amount; // Make expense negative
      }
    }

    // Get payee/counterparty
    String? payee;
    if (colMap.counterpartyIndex >= 0 && colMap.counterpartyIndex < fields.length) {
      payee = fields[colMap.counterpartyIndex].trim();
      if (payee.isEmpty) payee = null;
    }

    // Get description (product name)
    String description = '';
    if (colMap.productIndex >= 0 && colMap.productIndex < fields.length) {
      description = fields[colMap.productIndex].trim();
    }

    // Get type
    String? type;
    if (colMap.typeIndex >= 0 && colMap.typeIndex < fields.length) {
      type = fields[colMap.typeIndex].trim();
      if (type.isEmpty) type = null;
    }

    // Get status
    String status = '交易成功';
    if (colMap.statusIndex >= 0 && colMap.statusIndex < fields.length) {
      final s = fields[colMap.statusIndex].trim();
      if (s.isNotEmpty) status = s;
    }

    // Get order number
    String? orderNo;
    if (colMap.orderNoIndex >= 0 && colMap.orderNoIndex < fields.length) {
      orderNo = fields[colMap.orderNoIndex].trim();
      if (orderNo.isEmpty) orderNo = null;
    }

    // Get merchant order number
    String? merchantOrderNo;
    if (colMap.merchantOrderNoIndex >= 0 && colMap.merchantOrderNoIndex < fields.length) {
      merchantOrderNo = fields[colMap.merchantOrderNoIndex].trim();
      if (merchantOrderNo.isEmpty) merchantOrderNo = null;
    }

    // Build description from product and type
    if (description.isEmpty) {
      description = type ?? payee ?? '未知交易';
    }

    return RawTransaction<AlipayCustomFields>(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: description,
      payee: payee,
      metadata: type != null ? {'type': type} : null,
      customFields: AlipayCustomFields(
        status: status,
        category: type,
        orderNo: orderNo,
        merchantOrderNo: merchantOrderNo,
      ),
    );
  }

  /// Parse date from various formats
  DateTime? _parseDate(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return null;

    // Try ISO format: 2024-01-15
    final isoMatch = RegExp(r'(\d{4})-(\d{1,2})-(\d{1,2})').firstMatch(trimmed);
    if (isoMatch != null) {
      return DateTime(
        int.parse(isoMatch.group(1)!),
        int.parse(isoMatch.group(2)!),
        int.parse(isoMatch.group(3)!),
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
      logger.i('[AlipayParser] GBK 解码成功，结果长度: ${result.length}');
      return result;
    } catch (e) {
      logger.e('[AlipayParser] GBK 解码失败: $e');
      // Fallback: use Latin-1 which preserves byte values
      return bytes.map((b) => String.fromCharCode(b)).join();
    }
  }
}

/// Helper class to map column indices
class _ColumnMap {
  int timeIndex = -1;
  int dateIndex = -1;
  int orderNoIndex = -1;
  int merchantOrderNoIndex = -1;
  int counterpartyIndex = -1;
  int productIndex = -1;
  int amountIndex = -1;
  int incomeExpenseIndex = -1;
  int statusIndex = -1;
  int typeIndex = -1;
}
