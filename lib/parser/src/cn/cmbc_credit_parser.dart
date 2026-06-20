// Hand-written — do not auto-generate with ts2dart

import 'dart:convert';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela/parser/src/types.dart';

// ============================================================================
// Types
// ============================================================================

class CmbcCreditCustomFields {
  final String cardNumber;
  final DateTime postDate;
  final String? authorizationCode;
  final String? originalAmount;
  final String? countryCode;
  const CmbcCreditCustomFields({
    required this.cardNumber,
    required this.postDate,
    this.authorizationCode,
    this.originalAmount,
    this.countryCode,
  });
}

typedef CmbcCreditRawTransaction = RawTransaction<CmbcCreditCustomFields>;

/// Internal result for _parseRows (avoids RowTransformResult's RawTransaction bound).
class _RowsResult {
  final bool isSuccess;
  final List<List<String>>? value;
  final String? errorMessage;
  final String? errorType;
  const _RowsResult.ok(this.value)
      : isSuccess = true,
        errorMessage = null,
        errorType = null;
  const _RowsResult.err(this.errorMessage, {this.errorType = 'INVALID_FORMAT'})
      : isSuccess = false,
        value = null;
}

// ============================================================================
// Constants
// ============================================================================

const _minRequiredColumns = 6;
const _headerCardLast4 = '卡号末四位';
const _headerTxDate = '交易日';

final _keywords = ['卡号末四位', '交易日'];

final _foreignCurrencyPattern =
    RegExp(r'^(.*?)\s*?([A-Z]+)([-\d.]+)\s*([A-Z]+)$');

// ============================================================================
// CmbcCreditParser
// ============================================================================

class CmbcCreditParser extends Parser<CmbcCreditRawTransaction> {
  @override
  bool identify(String filename, Uint8List content) {
    final text = utf8.decode(content);
    return _keywords.every((kw) => text.contains(kw));
  }

  @override
  ParseResult<CmbcCreditRawTransaction> parse(Uint8List content) {
    final text = utf8.decode(content);
    if (text.isEmpty || text.trim().isEmpty) {
      return createParseFailure(ParseErrorType.invalidFormat, 'File is empty');
    }

    // Parse CSV rows
    final rowsResult = _parseRows(text);
    if (!rowsResult.isSuccess) {
      return createParseFailure(
        rowsResult.errorType == 'CSV_PARSE_ERROR'
            ? ParseErrorType.csvParseError
            : ParseErrorType.invalidFormat,
        rowsResult.errorMessage!,
      );
    }

    final rows = rowsResult.value!;
    return _transformRows(rows);
  }

  /// Parse CSV content and find data rows after header.
  _RowsResult _parseRows(String content) {
    try {
      final rawRows = CsvToListConverter(
        shouldParseNumbers: false,
        fieldDelimiter: '\n',
      ).convert(content);

      final allRows = rawRows.map((r) => r.cast<String>()).toList();

      var headerFound = false;
      final dataRows = <List<String>>[];

      for (final row in allRows) {
        if (row.length < _minRequiredColumns) continue;

        if (!headerFound) {
          if (row[0] == _headerCardLast4 && row[1] == _headerTxDate) {
            headerFound = true;
          }
          continue;
        }

        dataRows.add(row);
      }

      if (!headerFound) {
        return const _RowsResult.err(
          'CSV header not found (expected 卡号末四位, 交易日 columns)',
        );
      }

      return _RowsResult.ok(dataRows);
    } catch (error) {
      final msg = error is Exception ? error.toString() : error.toString();
      return _RowsResult.err(
        'Failed to parse CSV: $msg',
        errorType: 'CSV_PARSE_ERROR',
      );
    }
  }

  /// Transform data rows into transactions with warning collection.
  ParseResult<CmbcCreditRawTransaction> _transformRows(List<List<String>> rows) {
    final transactions = <CmbcCreditRawTransaction>[];
    final warnings = <ParseWarning>[];

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];
      final lineNum = i + 1;
      final result = _transformRow(row, lineNum);

      if (result.isSuccess) {
        transactions.add(result.value! as CmbcCreditRawTransaction);
      } else {
        warnings.add(ParseWarning(
          type: 'SKIPPED_ROW',
          message: result.errorMessage ?? 'Unknown error',
          line: lineNum,
          raw: row.join(','),
          context: result.errorContext,
        ));
      }
    }

    if (rows.isEmpty) {
      warnings.add(const ParseWarning(
        type: 'SKIPPED_ROW',
        message: 'No data rows found after header',
      ));
    }

    if (transactions.isEmpty) {
      return createParseFailure(
        ParseErrorType.invalidFormat,
        'No valid transactions found',
        {'warningCount': warnings.length},
      );
    }

    return ParseSuccess(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  /// Transform a single CSV row.
  RowTransformResult _transformRow(List<String> row, num _lineNum) {
    if (row.length < _minRequiredColumns) {
      return RowTransformResult.err(
        'Row has insufficient columns '
        '(expected $_minRequiredColumns+, got ${row.length})',
        {'row': row},
      );
    }

    // Column mapping: 0:卡号末四位 1:交易日 2:记账日 3:授权码 4:摘要 5:金额
    final cardNumber = row[0];
    final txDateStr = row[1];
    final postDateStr = row[2];
    final authorizationCode = row[3];
    final narration = row[4];
    final amountStr = row[5];

    // Parse post date (YYYYMMDD)
    final postDate = _parseDate(postDateStr);
    if (postDate == null) {
      return RowTransformResult.err(
        'Invalid post date format: $postDateStr',
        {'input': postDateStr, 'row': row},
      );
    }

    // Infer transaction date from MMDD and post date
    final txDate = _inferTransactionDate(txDateStr, postDate);
    if (txDate == null) {
      return RowTransformResult.err(
        'Invalid transaction date format: $txDateStr',
        {'input': txDateStr, 'row': row},
      );
    }

    // Parse amount
    Decimal amount;
    try {
      amount = Decimal.parse(amountStr);
    } catch (_) {
      return RowTransformResult.err(
        'Invalid amount: $amountStr',
        {'input': amountStr, 'row': row},
      );
    }

    // Reverse sign (credit card: expense is positive in statement → negative)
    amount = -amount;

    // Parse narration
    final parsed = _parseNarration(narration);
    final description = parsed['description'] as String;
    final payee = parsed['payee'] as String?;
    final originalAmount = parsed['originalAmount'] as String?;
    final countryCode = parsed['countryCode'] as String?;

    // Build custom fields
    final customFields = CmbcCreditCustomFields(
      cardNumber: cardNumber,
      postDate: postDate,
      authorizationCode:
          authorizationCode.isNotEmpty ? authorizationCode.trim() : null,
      originalAmount: originalAmount,
      countryCode: countryCode,
    );

    // Build RawTransaction
    final transaction = CmbcCreditRawTransaction(
      date: txDate,
      amount: amount,
      currency: 'CNY',
      description: description,
      payee: payee,
      customFields: customFields,
    );

    return RowTransformResult.ok(transaction);
  }

  // ==========================================================================
  // Private Methods
  // ==========================================================================

  /// Parse date string in YYYYMMDD format.
  DateTime? _parseDate(String dateStr) {
    if (dateStr.isEmpty || !RegExp(r'^\d{8}$').hasMatch(dateStr)) return null;

    final year = int.parse(dateStr.substring(0, 4));
    final month = int.parse(dateStr.substring(4, 6));
    final day = int.parse(dateStr.substring(6, 8));
    try {
      return DateTime(year, month, day);
    } catch (_) {
      return null;
    }
  }

  /// Infer full transaction date from MMDD format and post date.
  ///
  /// If transaction month > post month, use previous year.
  /// Example: tx MMDD=1225, post 20240105 → 2023-12-25
  DateTime? _inferTransactionDate(String txDateStr, DateTime postDate) {
    if (txDateStr.isEmpty || !RegExp(r'^\d{4}$').hasMatch(txDateStr)) {
      return null;
    }

    final txMonth = int.parse(txDateStr.substring(0, 2));
    final txDay = int.parse(txDateStr.substring(2, 4));

    // Dart DateTime.month is 1-indexed (same as TS getMonth()+1)
    final postMonth = postDate.month;
    final postYear = postDate.year;

    // Infer transaction year
    final txYear =
        txMonth > postMonth ? postYear - 1 : postYear;

    try {
      return DateTime(txYear, txMonth, txDay);
    } catch (_) {
      return null;
    }
  }

  /// Parse narration to extract description, payee, and foreign currency info.
  Map<String, String?> _parseNarration(String narration) {
    if (narration.isEmpty) {
      return {'description': '', 'payee': null};
    }

    // Check for foreign currency transaction
    final foreignMatch = _foreignCurrencyPattern.firstMatch(narration);
    if (foreignMatch != null) {
      final country = foreignMatch[2]!;
      final amount = foreignMatch[3]!;
      final currency = foreignMatch[4]!;
      return {
        'description': '',
        'payee': narration,
        'originalAmount': '$amount $currency',
        'countryCode': country,
      };
    }

    // Check for hyphenated narration (description - payee)
    if (narration.contains('-')) {
      final hyphenIdx = narration.indexOf('-');
      final description = narration.substring(0, hyphenIdx).trim();
      final payee = narration.substring(hyphenIdx + 1).trim();
      return {
        'description': description,
        'payee': payee.isNotEmpty ? payee : null,
      };
    }

    // Plain narration
    return {'description': narration, 'payee': null};
  }
}
