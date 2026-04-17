// Ported from ts2dart logic (no TS source)
// Parser: final-verification-bank

import 'dart:convert';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/result.dart';
import 'package:firela/parser/src/types.dart';
import 'package:firela/parser/src/utils/encoding.dart' show decodeContent;

/// Custom fields for final verification bank transactions.
class FinalVerificationBankCustomFields {
  final String? transactionId;

  const FinalVerificationBankCustomFields({this.transactionId});
}

typedef FinalVerificationBankTransaction
    = RawTransaction<FinalVerificationBankCustomFields>;

const List<String> _identifierKeywords = ['Final Verification Bank'];
const List<String> _headers = ['date', 'amount', 'currency', 'description'];
const int _minColumns = 4;

/// Parser for Final Verification Bank CSV statements.
class FinalVerificationBankParser
    extends Parser<FinalVerificationBankTransaction> {
  @override
  bool identify(String filename, Uint8List content) {
    try {
      final utf8Text = utf8.decode(content);
      if (_identifierKeywords.every((keyword) => utf8Text.contains(keyword))) {
        return true;
      }
    } catch (_) {}

    try {
      final decoded = decodeContent(content);
      return _identifierKeywords.every((keyword) => decoded.contains(keyword));
    } catch (_) {
      return false;
    }
  }

  @override
  ParseResult<FinalVerificationBankTransaction> parse(Uint8List content) {
    String text;
    try {
      text = decodeContent(content);
    } catch (e) {
      return createParseFailure<FinalVerificationBankTransaction>(
        ParseErrorType.encodingError,
        'Failed to decode file content: Unknown encoding',
      );
    }

    if (text.trim().isEmpty) {
      return createParseFailure<FinalVerificationBankTransaction>(
        ParseErrorType.invalidFormat,
        'File is empty',
      );
    }

    List<List<dynamic>> records;
    try {
      records = const CsvToListConverter(shouldParseNumbers: false)
          .convert(text, fieldDelimiter: ',', textDelimiter: '"');
    } catch (e) {
      return createParseFailure<FinalVerificationBankTransaction>(
        ParseErrorType.invalidFormat,
        'Failed to parse CSV: ${e is Exception ? e.toString() : e.toString()}',
      );
    }

    if (records.isEmpty) {
      return createParseFailure<FinalVerificationBankTransaction>(
        ParseErrorType.invalidFormat,
        'No data found in file',
      );
    }

    var headerIndex = -1;
    for (var i = 0; i < records.length; i++) {
      final row = records[i].cast<String>();
      if (row.length >= _headers.length) {
        if (_isValidHeader(row)) {
          headerIndex = i;
          break;
        }
      }
    }

    if (headerIndex == -1) {
      return createParseFailure<FinalVerificationBankTransaction>(
        ParseErrorType.invalidFormat,
        'Invalid CSV header. Expected: date, amount, currency, description',
      );
    }

    final transactions = <FinalVerificationBankTransaction>[];
    final warnings = <ParseWarning>[];

    for (var i = headerIndex + 1; i < records.length; i++) {
      final row = records[i].cast<String>();
      if (row.isEmpty || (row.length == 1 && row[0].trim().isEmpty)) continue;

      final result = _transformRow(row, i + 1);
      switch (result) {
        case Success(:final value):
          transactions.add(value);
        case Failure(:final error):
          warnings.add(ParseWarning(
            type: 'UNUSUAL_VALUE',
            message: 'Row ${i + 1}: $error',
          ));
      }
    }

    return ParseSuccess<FinalVerificationBankTransaction>(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  bool _isValidHeader(List<String> row) {
    if (row.length < _headers.length) return false;
    for (var i = 0; i < _headers.length; i++) {
      if (row[i].trim().toLowerCase() != _headers[i].toLowerCase()) {
        return false;
      }
    }
    return true;
  }

  Result<FinalVerificationBankTransaction, String> _transformRow(
      List<String> row, int lineNum) {
    if (row.length < _minColumns) {
      return err(
          'Insufficient columns (expected $_minColumns, got ${row.length})');
    }

    final dateStr = row[0];
    final amountStr = row[1];
    final currency = row[2];
    final description = row[3];

    final date = _parseDate(dateStr);
    if (date == null) {
      return err('Invalid date format: $dateStr');
    }

    Decimal amount;
    try {
      var cleanAmountStr = amountStr.trim();
      final isNegative = cleanAmountStr.startsWith('-');
      cleanAmountStr = cleanAmountStr.replaceFirst(RegExp(r'^[+-]'), '');
      amount = Decimal.parse(cleanAmountStr);
      if (isNegative) amount = -amount;
    } catch (e) {
      return err('Invalid amount format: $amountStr');
    }

    if (currency.trim().isEmpty || currency.trim().length != 3) {
      return err('Invalid currency code: $currency');
    }

    final transaction = FinalVerificationBankTransaction(
      date: date,
      amount: amount,
      currency: currency.trim().toUpperCase(),
      description: description.isNotEmpty ? description : '',
      metadata: {'rowNumber': lineNum},
    );

    return ok(transaction);
  }

  DateTime? _parseDate(String? dateStr) {
    if (dateStr == null || dateStr.trim().isEmpty) return null;
    final trimmed = dateStr.trim();
    if (RegExp(r'^\d{4}-\d{2}-\d{2}$').hasMatch(trimmed)) {
      try {
        return DateTime.parse(trimmed);
      } catch (_) {
        return null;
      }
    }
    return null;
  }
}
