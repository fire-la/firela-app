/// Alipay Web CSV Parser.
///
/// Parses transaction data from Alipay web export files (.csv/.txt format).
/// Supports GBK encoding,11+ column CSV format.
library;

import 'dart:typed_data';
import 'package:csv/csv.dart';
import '../result.dart';
import '../types.dart';
import '../utils/encoding.dart';
import '../utils/date_parser.dart';
import '../utils/amount_parser.dart';
import 'alipay_custom_fields.dart';

/// Keywords used to identify Alipay Web files.
const List<String> _keywords = ['支付宝交易记录明细查询'];

/// Header row identifier for Alipay Web.
const String _headerIdentifier = '交易号';

/// Minimum required columns in Alipay Web data row.
const int _minColumns = 11;

/// Type values that should be skipped.
const List<String> _skipTypes = ['其他'];

/// Alipay Web CSV parser implementation.
class AlipayWebParser extends Parser<RawTransaction<AlipayCustomFields>> {
  @override
  bool identify(String filename, Uint8List content) {
    try {
      final text = decodeContent(content);
      return _keywords.every((keyword) => text.contains(keyword));
    } catch (_) {
      return false;
    }
  }

  @override
  ParseResult<RawTransaction<AlipayCustomFields>> parse(Uint8List content) {
    final warnings = <ParseWarning>[];
    final errors = <ParseError>[];

    // Decode content
    String text;
    try {
      text = decodeContent(content);
    } catch (e) {
      return ParseFailure(
        errors: [
          ParseError(
            type: ParseErrorType.encodingError,
            message: 'Failed to decode content: $e',
          ),
        ],
      );
    }

    // Parse CSV rows
    List<List<dynamic>> rows;
    try {
      rows = const CsvToListConverter(
      fieldDelimiter: ',',
      eol: '\n',
    ).convert(text);
    } catch (e) {
      return ParseFailure(
        errors: [
          ParseError(
            type: ParseErrorType.csvParseError,
            message: 'Failed to parse CSV: $e',
          ),
        ],
      );
    }

    if (rows.isEmpty) {
      return ParseFailure(
        errors: [
          ParseError(
            type: ParseErrorType.invalidFormat,
            message: 'Empty CSV content',
          ),
        ],
      );
    }

    // Find header row
    int headerIndex = -1;
    for (int i = 0; i < rows.length; i++) {
      if (rows[i].isNotEmpty &&
          rows[i][0].toString().contains(_headerIdentifier)) {
        headerIndex = i;
        break;
      }
    }

    if (headerIndex == -1) {
      return ParseFailure(
        errors: [
          ParseError(
            type: ParseErrorType.invalidFormat,
            message: 'CSV header not found (expected 交易号 column)',
          ),
        ],
      );
    }

    // Parse data rows
    final transactions = <RawTransaction<AlipayCustomFields>>[];
    for (int i = headerIndex + 1; i < rows.length; i++) {
      final row = rows[i];

      // Skip empty rows
      if (row.isEmpty) continue;

      // Check for end marker
      if (row[0].toString().startsWith('---')) break;

      // Validate column count
      if (row.length < _minColumns) continue;

      // Transform row
      final result = _transformRow(row, i + 1);
      switch (result) {
        case Success():
          transactions.add((result as Success).value);
        case Failure():
          final error = (result as Failure).error;
          if (error.type == ParseErrorType.missingRequiredField) {
            warnings.add(ParseWarning(
              type: 'skippedRow',
              message: error.message,
              line: i + 1,
              raw: row.toString(),
            ));
          } else {
            errors.add(error);
          }
      }
    }

    // Return result
    if (transactions.isEmpty) {
      if (errors.isEmpty) {
        return ParseFailure(
          errors: [
            ParseError(
              type: ParseErrorType.invalidFormat,
              message: 'No valid transactions found',
            ),
          ],
          warnings: warnings.isNotEmpty ? warnings : null,
        );
      }
      return ParseFailure(
        errors: errors,
        warnings: warnings.isNotEmpty ? warnings : null,
      );
    }

    return ParseSuccess(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  /// Transform a CSV row to RawTransaction.
  Result<RawTransaction<AlipayCustomFields>, ParseError> _transformRow(
    List<dynamic> row,
    int lineNum,
  ) {
    // Validate row length
    if (row.length < _minColumns) {
      return err(ParseError(
        type: ParseErrorType.missingRequiredField,
        message: 'Row has insufficient columns (expected $_minColumns+, got ${row.length})',
        line: lineNum,
        context: {'row': row.toString()},
      ));
    }

    // Extract fields
    final serial = row[0].toString();
    final merchantSerial = row[1].toString();
    final time = row[2].toString();
    final payee = row[7].toString();
    final narration = row[8].toString();
    final amt = row[9].toString();
    final type = row[10].toString();
    final status = row.length > 11 ? row[11].toString() : '交易成功';

    // Parse date
    final dateResult = parseDate(time);
    if (dateResult is Failure) {
      return err(ParseError(
        type: ParseErrorType.invalidDate,
        message: 'Failed to parse date: $time',
        line: lineNum,
        raw: row.toString(),
      ));
    }
    final date = (dateResult as Success).value;

    // Skip "其他" type transactions
    if (_skipTypes.contains(type)) {
      return err(ParseError(
        type: ParseErrorType.missingRequiredField,
        message: 'Skipped type: $type',
        line: lineNum,
        context: {'type': type, 'skip': true},
      ));
    }

    // Determine income/expense
    final isExpense = type == '支出';
    final isIncome = type == '收入';

    if (!isExpense && !isIncome) {
      return err(ParseError(
        type: ParseErrorType.missingRequiredField,
        message: 'Unsupported type: $type',
        line: lineNum,
        context: {'type': type},
      ));
    }

    // Parse amount
    final amountResult = parseAmount(amt);
    if (amountResult is Failure) {
      return err(ParseError(
        type: ParseErrorType.invalidAmount,
        message: 'Failed to parse amount: $amt',
        line: lineNum,
        raw: row.toString(),
      ));
    }
    var amount = (amountResult as Success).value;

    // Apply sign: expense is negative, income is positive
    if (isExpense) {
      amount = -amount.abs();
    }

    // Build custom fields
    final customFields = AlipayCustomFields(
      status: _normalizeStatus(status),
      orderNo: serial,
      merchantOrderNo: merchantSerial.isNotEmpty ? merchantSerial : null,
    );

    // Build RawTransaction
    return ok(RawTransaction(
      date: date,
      amount: amount,
      currency: 'CNY',
      description: narration,
      payee: payee.isNotEmpty ? payee : null,
      customFields: customFields,
    ));
  }

  /// Normalize status string to valid AlipayCustomFields status.
  String _normalizeStatus(String status) {
    if (status.contains('成功')) return '交易成功';
    if (status.contains('退款')) return '退款';
    return '交易关闭';
  }
}
