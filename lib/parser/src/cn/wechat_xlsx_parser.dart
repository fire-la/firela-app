// WeChat XLSX parser for binary Excel exports from WeChat Pay.
//
// Handles non-encrypted XLSX files exported from WeChat Pay.
// WeChat XLSX exports have metadata rows (1-16), a separator row,
// then data rows starting with the header row containing '交易时间'.
//
// For password-protected files, the user must first decrypt the file
// or export as CSV instead.

import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:excel/excel.dart' hide Parser;
import 'package:firela_app/parser/src/cn/wechat_parser.dart' show WechatRawTransaction;
import 'package:firela_app/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela_app/parser/src/types.dart';
import 'package:firela_app/parser/src/utils/encoding.dart' as encoding;

/// WeChat XLSX keywords found in metadata rows.
const _wechatKeywords = ['微信支付', '微信'];

/// Minimum data columns in WeChat export (same as CSV version).
const _minRequiredColumns = 11;

/// Header identifier for the data start row.
const _headerIdentifier = '交易时间';

/// Cell value to string helper.
String _cellToString(Data? cell) {
  if (cell == null) return '';
  final value = cell.value;
  if (value == null) return '';
  return switch (value) {
    TextCellValue(:final value) => value.text ?? '',
    IntCellValue(:final value) => value.toString(),
    DoubleCellValue(:final value) => value.toString(),
    BoolCellValue(:final value) => value.toString(),
    DateCellValue(:final year, :final month, :final day) =>
      '$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}',
    TimeCellValue(:final hour, :final minute, :final second) =>
      '$hour:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}',
    DateTimeCellValue() => value.asDateTimeLocal().toString(),
    FormulaCellValue(:final formula) => formula,
  };
}

/// Check if filename looks like a WeChat export XLSX.
bool _isWechatXlsxFilename(String filename) {
  final lower = filename.toLowerCase();
  return lower.endsWith('.xlsx') && _wechatKeywords.any((kw) => filename.contains(kw));
}

/// WeChat XLSX parser — handles binary Excel files from WeChat Pay.
class WechatXlsxParser extends Parser<WechatRawTransaction> {
  final institutionId = 'wechat-xlsx';

  @override
  bool identify(String filename, Uint8List content) {
    // Must be XLSX with WeChat-related filename
    if (!_isWechatXlsxFilename(filename)) return false;

    // Must be binary (ZIP magic bytes)
    if (!encoding.isBinaryContent(content)) return false;

    return true;
  }

  @override
  ParseResult<WechatRawTransaction> parse(Uint8List content) {
    try {
      final excel = Excel.decodeBytes(content);
      final sheet = excel.getDefaultSheet();
      if (sheet == null) {
        return createParseFailure(
          ParseErrorType.invalidFormat,
          'No default sheet found in XLSX file',
        );
      }

      final sheetObj = excel[sheet];
      final allRows = sheetObj.rows;

      if (allRows.isEmpty) {
        return createParseFailure(
          ParseErrorType.invalidFormat,
          'XLSX file is empty',
        );
      }

      // Find the header row (contains '交易时间')
      int? headerRowIndex;
      for (var i = 0; i < allRows.length; i++) {
        final row = allRows[i];
        final firstCell = _cellToString(row.firstOrNull);
        if (firstCell.contains(_headerIdentifier) && row.length >= _minRequiredColumns) {
          headerRowIndex = i;
          break;
        }
      }

      if (headerRowIndex == null) {
        return createParseFailure(
          ParseErrorType.invalidFormat,
          'WeChat header row not found in XLSX. '
          'Expected header starting with "$_headerIdentifier" with $_minRequiredColumns columns. '
          'Please make sure this is a WeChat Pay export file.',
        );
      }

      // Extract data rows after header
      final transactions = <WechatRawTransaction>[];
      final warnings = <ParseWarning>[];

      for (var i = headerRowIndex + 1; i < allRows.length; i++) {
        final rawRow = allRows[i];
        final row = rawRow.map(_cellToString).toList();

        // Skip empty rows
        if (row.every((cell) => cell.trim().isEmpty)) continue;

        // Delegate to the shared WeChat row transformer
        final result = _WechatRowTransformer.transformRow(row, i + 1);

        if (result.isSuccess) {
          transactions.add(result.value as WechatRawTransaction);
        } else {
          final isSkip = result.errorContext?['skip'] == true;
          // Only warn on non-skip failures
          if (!isSkip) {
            warnings.add(ParseWarning(
              type: 'SKIPPED_ROW',
              message: result.errorMessage ?? 'Unknown error',
              line: i + 1,
              raw: row.join(','),
              context: result.errorContext,
            ));
          }
        }
      }

      if (transactions.isEmpty) {
        return createParseFailure(
          ParseErrorType.invalidFormat,
          'No valid transactions found in WeChat XLSX file',
          {'warningCount': warnings.length},
        );
      }

      return ParseSuccess(
        data: transactions,
        warnings: warnings.isNotEmpty ? warnings : null,
      );
    } on UnsupportedError catch (e) {
      // excel package throws this for unsupported formats or encrypted files
      final msg = e.message ?? e.toString();
      return createParseFailure(
        ParseErrorType.invalidFormat,
        '无法解析此 Excel 文件。$msg'
        '\n\n微信支付的 XLSX 导出文件可能需要解压密码。'
        '\n请在微信支付公众号查看解压密码，使用 Excel 打开后另存为 CSV，再重新导入。'
        '\n或直接在微信支付导出时选择 CSV 格式。',
      );
    } catch (e) {
      // Could be a ZIP decryption error for password-protected files
      final msg = e.toString();
      return createParseFailure(
        ParseErrorType.invalidFormat,
        'XLSX 解析失败: $msg'
        '\n\n微信支付的导出文件可能需要解压密码（可在微信支付公众号查看）。'
        '\n请使用 Excel 输入密码打开后，另存为 CSV 格式再重新导入。'
        '\n或在微信支付导出时直接选择 CSV 格式。',
      );
    }
  }
}

/// Shared WeChat row transformation logic (used by both CSV and XLSX parsers).
///
/// Column mapping:
/// 0: 交易时间, 1: 交易类型, 2: 交易对方, 3: 商品, 4: 收/支,
/// 5: 金额(元), 6: 支付方式, 7: 当前状态, 8: 交易单号, 9: 商家单号, 10: 备注
class _WechatRowTransformer {
  static RowTransformResult transformRow(List<String> row, num lineNum) {
    if (row.length < _minRequiredColumns) {
      return RowTransformResult.err(
        'Row has insufficient columns '
        '(expected $_minRequiredColumns, got ${row.length})',
        {'row': row},
      );
    }

    final transactionTime = row[0];
    final transactionType = row[1];
    final counterparty = row[2];
    final product = row[3];
    final flowType = row[4];
    final amountStr = row[5];
    final paymentMethod = row[6];
    final status = row[7];
    final transactionId = row[8];
    final merchantOrderId = row[9];

    // Skip neutral flow type ('/')
    if (flowType.trim() == '/') {
      return RowTransformResult.err(
        'Skipped neutral flow type',
        {'flowType': flowType, 'row': row, 'skip': true},
      );
    }

    // Skip closed transactions
    if (status.contains('已关闭')) {
      return RowTransformResult.err(
        'Skipped closed transaction: $status',
        {'status': status, 'row': row, 'skip': true},
      );
    }

    // Validate flow type
    if (flowType != '收入' && flowType != '支出') {
      return RowTransformResult.err(
        'Invalid flow type: $flowType',
        {'flowType': flowType, 'row': row},
      );
    }

    // Parse date
    final date = _parseDateTime(transactionTime);
    if (date == null) {
      return RowTransformResult.err(
        'Invalid date format: $transactionTime',
        {'input': transactionTime, 'row': row},
      );
    }

    // Parse amount
    final amount = _parseAmount(amountStr, flowType);
    if (amount == null) {
      return RowTransformResult.err(
        'Invalid amount: $amountStr',
        {'input': amountStr, 'row': row},
      );
    }

    // Map status
    final customStatus = _mapStatus(status);

    // Build custom fields
    final customFields = WeChatCustomFields(
      status: customStatus,
      transactionType: transactionType.isNotEmpty ? transactionType : null,
      orderNo: transactionId.isNotEmpty ? transactionId : null,
    );

    // Build metadata
    final metadata = <String, dynamic>{};
    if (paymentMethod.isNotEmpty) {
      metadata['paymentMethod'] = paymentMethod;
    }
    if (merchantOrderId.isNotEmpty) {
      metadata['merchantOrderId'] = merchantOrderId;
    }

    // Build description
    final description = product.isNotEmpty ? product : (transactionType.isNotEmpty ? transactionType : '');

    final transaction = WechatRawTransaction(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: description,
      payee: counterparty.isNotEmpty ? counterparty : null,
      metadata: metadata.isNotEmpty ? metadata : null,
      customFields: customFields,
    );

    return RowTransformResult.ok(transaction);
  }

  static DateTime? _parseDateTime(String dateStr) {
    if (dateStr.isEmpty) return null;
    final trimmed = dateStr.trim();
    final match = RegExp(r'^(\d{4})[-/](\d{1,2})[-/](\d{1,2})\s+(\d{1,2}):(\d{2}):(\d{2})$')
        .firstMatch(trimmed);
    if (match != null) {
      try {
        return DateTime(
          int.parse(match[1]!),
          int.parse(match[2]!),
          int.parse(match[3]!),
          int.parse(match[4]!),
          int.parse(match[5]!),
          int.parse(match[6]!),
        );
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  static Decimal? _parseAmount(String amountStr, String flowType) {
    if (amountStr.isEmpty) return null;
    var cleaned = amountStr.trim();
    if (cleaned.startsWith('\u00A5') || cleaned.startsWith('\uFFE5')) {
      cleaned = cleaned.substring(1).trim();
    }
    cleaned = cleaned.replaceAll(',', '');
    try {
      final amount = Decimal.parse(cleaned);
      return flowType == '支出' ? -amount : amount;
    } catch (_) {
      return null;
    }
  }

  static String _mapStatus(String status) {
    if (status.contains('退款')) return '已退款';
    if (status.contains('关闭') || status.contains('失败')) return '已关闭';
    return '支付成功';
  }
}
