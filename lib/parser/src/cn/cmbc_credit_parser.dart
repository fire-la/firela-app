// Ported from TypeScript: libs/parsers/cn/src/bank/cmbc/cmbc-credit-parser.ts
// Parser: cmbc-credit

import 'dart:convert';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/result.dart';
import 'package:firela/parser/src/types.dart';

/// Custom fields for CMBC credit card transactions.
class CmbcCreditCustomFields {
  final String? cardNumber;
  final DateTime? postDate;
  final String? authorizationCode;
  final String? originalAmount;
  final String? countryCode;

  const CmbcCreditCustomFields({
    this.cardNumber,
    this.postDate,
    this.authorizationCode,
    this.originalAmount,
    this.countryCode,
  });
}

typedef CmbcCreditRawTransaction = RawTransaction<CmbcCreditCustomFields>;

const List<String> _keywords = ['卡号末四位', '交易日'];
const int _minColumns = 6;
const String _headerCardLast4 = '卡号末四位';
const String _headerTxDate = '交易日';

/// Parser for CMBC credit card CSV statements.
class CmbcCreditParser extends Parser<CmbcCreditRawTransaction> {
  @override
  bool identify(String filename, Uint8List content) {
    final text = utf8.decode(content);
    return _keywords.every((keyword) => text.contains(keyword));
  }

  @override
  ParseResult<CmbcCreditRawTransaction> parse(Uint8List content) {
    final text = utf8.decode(content);
    if (text.trim().isEmpty) {
      return createParseFailure<CmbcCreditRawTransaction>(
        ParseErrorType.invalidFormat,
        'File is empty',
      );
    }

    final rowsResult = _parseRows(text);
    switch (rowsResult) {
      case Failure(:final error):
        return ParseFailure<CmbcCreditRawTransaction>(
          errors: [
            ParseError(
              type: ParseErrorType.csvParseError,
              message: error['message'] as String,
            ),
          ],
        );
      case Success(:final value):
        return _processRows(value);
    }
  }

  ParseResult<CmbcCreditRawTransaction> _processRows(List<List<String>> rows) {
    final transactions = <CmbcCreditRawTransaction>[];
    final warnings = <ParseWarning>[];

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];
      final lineNum = i + 1;
      final result = _transformRow(row, lineNum);
      switch (result) {
        case Success(:final value):
          transactions.add(value);
        case Failure(:final error):
          warnings.add(ParseWarning(
            type: 'SKIPPED_ROW',
            message: error['message'] as String,
            line: lineNum,
            raw: row.join(','),
            context: error['context'] as Map<String, dynamic>?,
          ));
      }
    }

    if (rows.isEmpty) {
      warnings.add(const ParseWarning(
          type: 'SKIPPED_ROW', message: 'No data rows found after header'));
    }

    return ParseSuccess<CmbcCreditRawTransaction>(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  Result<List<List<String>>, Map<String, dynamic>> _parseRows(String content) {
    try {
      final allRows = const CsvToListConverter(shouldParseNumbers: false)
          .convert(content, fieldDelimiter: ',', textDelimiter: '"', eol: '\n');

      var headerFound = false;
      final dataRows = <List<String>>[];

      for (final row in allRows) {
        final stringRow = row.cast<String>();
        if (stringRow.length < _minColumns) continue;

        if (!headerFound) {
          if (stringRow[0] == _headerCardLast4 &&
              stringRow[1] == _headerTxDate) {
            headerFound = true;
          }
          continue;
        }

        dataRows.add(stringRow);
      }

      if (!headerFound) {
        return err({
          'type': 'INVALID_FORMAT',
          'message': 'CSV header not found (expected 卡号末四位, 交易日 columns)',
        });
      }

      return ok(dataRows);
    } catch (error) {
      return err({
        'type': 'CSV_PARSE_ERROR',
        'message':
            'Failed to parse CSV: ${error is Exception ? error.toString() : error.toString()}',
      });
    }
  }

  Result<CmbcCreditRawTransaction, Map<String, dynamic>> _transformRow(
      List<String> row, int lineNum) {
    if (row.length < _minColumns) {
      return err({
        'message':
            'Row has insufficient columns (expected $_minColumns+, got ${row.length})',
        'context': <String, dynamic>{},
      });
    }

    final cardNumber = row[0];
    final txDateStr = row[1];
    final postDateStr = row[2];
    final authorizationCode = row[3];
    final narration = row[4];
    final amountStr = row[5];

    final postDate = _parseDate(postDateStr);
    if (postDate == null) {
      return err({
        'message': 'Invalid post date format: $postDateStr',
        'context': {'input': postDateStr},
      });
    }

    final txDate = _inferTransactionDate(txDateStr, postDate);
    if (txDate == null) {
      return err({
        'message': 'Invalid transaction date format: $txDateStr',
        'context': {'input': txDateStr},
      });
    }

    Decimal amount;
    try {
      amount = Decimal.parse(amountStr);
    } catch (e) {
      return err({
        'message': 'Invalid amount: $amountStr',
        'context': {'input': amountStr},
      });
    }
    amount = -amount;

    final narrationResult = _parseNarration(narration);

    final customFields = CmbcCreditCustomFields(
      cardNumber: cardNumber.isNotEmpty ? cardNumber : null,
      postDate: postDate,
      authorizationCode: authorizationCode.trim().isNotEmpty
          ? authorizationCode.trim()
          : null,
      originalAmount: narrationResult.originalAmount,
      countryCode: narrationResult.countryCode,
    );

    final transaction = CmbcCreditRawTransaction(
      date: txDate,
      amount: amount,
      currency: 'CNY',
      description: narrationResult.description,
      payee: narrationResult.payee,
      customFields: customFields,
    );

    return ok(transaction);
  }

  DateTime? _parseDate(String? dateStr) {
    if (dateStr == null || !RegExp(r'^\d{8}$').hasMatch(dateStr)) return null;
    final year = int.parse(dateStr.substring(0, 4));
    final month = int.parse(dateStr.substring(4, 6));
    final day = int.parse(dateStr.substring(6, 8));
    try {
      return DateTime(year, month, day);
    } catch (_) {
      return null;
    }
  }

  DateTime? _inferTransactionDate(String? txDateStr, DateTime postDate) {
    if (txDateStr == null || !RegExp(r'^\d{4}$').hasMatch(txDateStr)) {
      return null;
    }
    final txMonth = int.parse(txDateStr.substring(0, 2));
    final txDay = int.parse(txDateStr.substring(2, 4));
    final postMonth = postDate.month;
    final postYear = postDate.year;
    final txYear = txMonth > postMonth ? postYear - 1 : postYear;
    try {
      return DateTime(txYear, txMonth, txDay);
    } catch (_) {
      return null;
    }
  }

  static final _foreignCurrencyPattern =
      RegExp(r'^(.*?)\s*?([A-Z]+)([-\d.]+)\s*([A-Z]+)$');

  _NarrationResult _parseNarration(String? narration) {
    if (narration == null) {
      return _NarrationResult(description: '', payee: null);
    }

    final foreignMatch = _foreignCurrencyPattern.firstMatch(narration);
    if (foreignMatch != null) {
      final country = foreignMatch[2]!;
      final amount = foreignMatch[3]!;
      final currency = foreignMatch[4]!;
      return _NarrationResult(
        description: '',
        payee: narration,
        originalAmount: '$amount $currency',
        countryCode: country,
      );
    }

    if (narration.contains('-')) {
      final hyphenIdx = narration.indexOf('-');
      final payee = narration.substring(hyphenIdx + 1).trim();
      return _NarrationResult(
        description: '',
        payee: payee.isNotEmpty ? payee : null,
      );
    }

    return _NarrationResult(description: narration, payee: null);
  }
}

class _NarrationResult {
  final String description;
  final String? payee;
  final String? originalAmount;
  final String? countryCode;

  const _NarrationResult({
    required this.description,
    this.payee,
    this.originalAmount,
    this.countryCode,
  });
}
