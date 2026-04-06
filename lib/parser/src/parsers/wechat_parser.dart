import 'dart:convert';
import 'dart:typed_data';
import 'package:excel/excel.dart' hide Parser;
import 'package:gbk_codec/gbk_codec.dart' show gbk_bytes;
import '../../../core/utils/logger.dart';
import '../parser_interface.dart';
import '../parse_error.dart';
import '../parse_warning.dart';
import '../parse_result.dart';
import '../raw_transaction.dart';
import '../custom_fields/wechat_custom_fields.dart';

/// Parser for WeChat exported CSV/XLSX files
///
/// Supports the CSV/XLSX format exported from WeChat (微信).
/// WeChat exports can be either CSV or XLSX format.
class WechatParser extends Parser<WechatCustomFields> {
  @override
  String get name => 'wechat';

  @override
  List<String> get supportedExtensions => ['csv', 'xlsx'];

  @override
  bool identify(String filename, Uint8List content) {
    // Check file extension
    final ext = filename.split('.').last.toLowerCase();
    logger.i('[WechatParser] 检查文件: $filename, 扩展名: $ext');

    // WeChat supports both CSV and XLSX
    if (ext != 'csv' && ext != 'xlsx') {
      logger.i('[WechatParser] 跳过：不是 CSV 或 XLSX 文件');
      return false;
    }

    try {
      String text;

      if (ext == 'xlsx') {
        logger.i('[WechatParser] 检测为 XLSX 格式');
        // For XLSX, try to read first sheet and check for WeChat markers
        final excel = Excel.decodeBytes(content);
        if (excel.tables.isEmpty) {
          logger.w('[WechatParser] XLSX 文件没有表格');
          return false;
        }

        final sheet = excel.tables.values.first;
        final rows = sheet.rows;

        // Check first 10 rows for WeChat markers
        for (final row in rows.take(10)) {
          for (final cell in row) {
            final value = cell?.value?.toString() ?? '';
            if (value.contains('交易时间') ||
                value.contains('交易单号') ||
                value.contains('商户单号') ||
                value.contains('微信支付') ||
                value.contains('wechat')) {
              logger.i('[WechatParser] 找到微信特征标记: $value');
              return true;
            }
          }
        }
        logger.w('[WechatParser] XLSX 文件中未找到微信特征标记');
        return false;
      } else {
        logger.i('[WechatParser] 检测为 CSV 格式');
        // For CSV, try UTF-8 first, then GBK
        try {
          text = utf8.decode(content);
          logger.i('[WechatParser] 使用 UTF-8 解码成功');
        } catch (_) {
          text = _decodeGbk(content);
          logger.i('[WechatParser] 使用 GBK 解码成功');
        }

        // 输出文件的前 3 行用于调试 - 分行输出避免截断
        final lines = text.split('\n');
        logger.i('[WechatParser] 文件总行数: ${lines.length}');
        for (int i = 0; i < 3 && i < lines.length; i++) {
          // 使用 print 而不是 logger 避免截断
          // ignore: avoid_print
          print('[WechatParser] 第${i+1}行: ${lines[i]}');
        }

        // Check for WeChat-specific markers
        final lowerText = text.toLowerCase();
        final hasMarkers = lowerText.contains('交易时间') ||
            lowerText.contains('交易单号') ||
            lowerText.contains('商户单号') ||
            lowerText.contains('商品说明') ||
            lowerText.contains('微信支付') ||
            lowerText.contains('wechat') ||
            lowerText.contains('零钱') ||
            lowerText.contains('当前状态');

        logger.i('[WechatParser] 检测结果: $hasMarkers');
        if (!hasMarkers) {
          logger.w('[WechatParser] 未找到微信特征标记');
        }

        return hasMarkers;
      }
    } catch (e) {
      logger.e('[WechatParser] 识别失败: $e');
      return false;
    }
  }

  @override
  ParseResult parse(Uint8List content) {
    final warnings = <ParseWarning>[];

    try {
      // Try to parse as XLSX
      final excel = Excel.decodeBytes(content);
      if (excel.tables.isEmpty) {
        return ParseFailure(errors: [
          ParseError(
            type: ParseErrorType.invalidFormat,
            message: 'Excel 文件为空或格式无效',
          ),
        ]);
      }

      final sheet = excel.tables.values.first;
      final rows = sheet.rows;

      if (rows.isEmpty) {
        return ParseFailure(errors: [
          ParseError(
            type: ParseErrorType.invalidFormat,
            message: 'Excel 文件没有数据行',
          ),
        ]);
      }

      // Find header row
      // WeChat XLSX files often have metadata in first 16 rows, header at row 17
      int headerIndex = -1;
      List<String>? headers;
      for (int i = 0; i < rows.length && i < 30; i++) {
        final row = rows[i];
        final headerValues = row.map((cell) => cell?.value?.toString() ?? '').toList();
        final headerLine = headerValues.join(',');

        // Log each row for debugging
        final preview = headerLine.length > 50 ? '${headerLine.substring(0, 50)}...' : headerLine;
        logger.i('[WechatParser] XLSX 行 #$i: $preview');

        if (headerLine.contains('交易时间') ||
            headerLine.contains('交易单号') ||
            headerLine.contains('商户单号') ||
            headerLine.contains('商品说明') ||
            headerLine.contains('商品')) {
          headerIndex = i;
          headers = headerValues;
          logger.i('[WechatParser] 找到表头行 #$i');
          break;
        }
      }

      if (headerIndex < 0 || headers == null) {
        return ParseFailure(errors: [
          ParseError(
            type: ParseErrorType.invalidFormat,
            message: '未找到有效的微信账单表头，请确认文件格式正确',
          ),
        ]);
      }

      // Map column indices
      final colMap = _mapColumns(headers);

      // Parse transactions
      final transactions = <RawTransaction<WechatCustomFields>>[];

      for (int i = headerIndex + 1; i < rows.length; i++) {
        final row = rows[i];
        final fields = row.map((cell) => cell?.value?.toString() ?? '').toList();
        final lineNumber = i + 1;

        if (fields.isEmpty || fields.every((f) => f.trim().isEmpty)) {
          continue;
        }

        try {
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
    } catch (e) {
      // If XLSX parsing fails, try CSV
      return _parseAsCsv(content);
    }
  }

  /// Fallback CSV parsing
  ParseResult _parseAsCsv(Uint8List content) {
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

    // Find header row
    // WeChat files often have metadata before the actual header row
    int headerIndex = -1;
    List<String>? headers;
    for (int i = 0; i < lines.length && i < 30; i++) {
      final line = lines[i].trim();

      // Log each row for debugging
      final preview = line.length > 50 ? '${line.substring(0, 50)}...' : line;
      logger.i('[WechatParser] CSV 行 #$i: $preview');

      if (line.contains('交易时间') ||
          line.contains('交易单号') ||
          line.contains('商户单号') ||
          line.contains('商品说明')) {
        headerIndex = i;
        headers = _parseCsvLine(line);
        logger.i('[WechatParser] 找到表头行 #$i');
        break;
      }
    }

    if (headerIndex < 0 || headers == null) {
      return ParseFailure(errors: [
        ParseError(
          type: ParseErrorType.invalidFormat,
          message: '未找到有效的微信账单表头，请确认文件格式正确',
        ),
      ]);
    }

    // Map column indices
    final colMap = _mapColumns(headers);

    // Parse transactions
    final transactions = <RawTransaction<WechatCustomFields>>[];

    for (int i = headerIndex + 1; i < lines.length; i++) {
      final lineNumber = i + 1;
      final line = lines[i].trim();
      if (line.isEmpty) continue;

      try {
        final fields = _parseCsvLine(line);
        if (fields.length < 5) {
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
      if (h.contains('交易类型') || h == '类型') map.typeIndex = i;
      if (h.contains('交易单号') || h.contains('交易号')) map.orderNoIndex = i;
      if (h.contains('商户单号') || h.contains('商户订单号')) map.merchantOrderNoIndex = i;
      if (h.contains('商品说明') || h.contains('商品名称') || h.contains('商品')) map.productIndex = i;
      if (h.contains('金额')) map.amountIndex = i;
      if (h.contains('收/支') || h.contains('收支')) map.incomeExpenseIndex = i;
      if (h.contains('当前状态') || h.contains('状态')) map.statusIndex = i;
      if (h.contains('支付方式')) map.paymentMethodIndex = i;
    }

    return map;
  }

  /// Parse a single transaction from fields
  RawTransaction<WechatCustomFields>? _parseTransaction(
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

    // Check income/expense indicator
    if (colMap.incomeExpenseIndex >= 0 && colMap.incomeExpenseIndex < fields.length) {
      final indicator = fields[colMap.incomeExpenseIndex].trim();
      if (indicator == '支出' && amount > 0) {
        amount = -amount; // Make expense negative
      }
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
    String status = '';
    if (colMap.statusIndex >= 0 && colMap.statusIndex < fields.length) {
      status = fields[colMap.statusIndex].trim();
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

    // Get payment method
    String? paymentMethod;
    if (colMap.paymentMethodIndex >= 0 && colMap.paymentMethodIndex < fields.length) {
      paymentMethod = fields[colMap.paymentMethodIndex].trim();
      if (paymentMethod.isEmpty) paymentMethod = null;
    }

    // Build description from product and type
    if (description.isEmpty) {
      description = type ?? '未知交易';
    }

    return RawTransaction<WechatCustomFields>(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: description,
      metadata: type != null ? {'type': type} : null,
      customFields: WechatCustomFields(
        type: type,
        status: status,
        paymentMethod: paymentMethod,
        transactionId: orderNo,
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
          buffer.write('"');
          i++;
        } else {
          inQuotes = !inQuotes;
        }
      } else if (char == ',' && !inQuotes) {
        fields.add(buffer.toString().trim());
        buffer.clear();
      } else {
        buffer.write(char);
      }
    }

    fields.add(buffer.toString().trim());
    return fields;
  }

  /// Decode GBK encoded bytes to string
  String _decodeGbk(Uint8List bytes) {
    try {
      // 使用 gbk_bytes 正确处理双字节 GBK 字符
      return gbk_bytes.decode(bytes);
    } catch (e) {
      logger.e('[WechatParser] GBK 解码失败: $e');
      return bytes.map((b) => String.fromCharCode(b)).join();
    }
  }
}

/// Helper class to map column indices
class _ColumnMap {
  int timeIndex = -1;
  int typeIndex = -1;
  int orderNoIndex = -1;
  int merchantOrderNoIndex = -1;
  int productIndex = -1;
  int amountIndex = -1;
  int incomeExpenseIndex = -1;
  int statusIndex = -1;
  int paymentMethodIndex = -1;
}
