// Ported from TypeScript: libs/parsers/hk/src/bank/hsbc/hsbc-hk-credit-parser.ts
// Parser: hsbc-hk-credit

import 'dart:convert';
import 'dart:typed_data';

import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/hk/hsbc_hk_shared.dart'
    show
        hsbcHkSharedKeywords,
        detectPaymentMethod,
        parseHsbcHkCsv,
        parseHsbcAmount;
import 'package:firela/parser/src/result.dart';
import 'package:firela/parser/src/types.dart';
import 'package:firela/parser/src/utils/date_parser.dart' show parseDate;

/// Custom fields for HSBC HK credit card transactions.
class HsbcHkCreditCustomFields {
  final String? paymentMethod;
  final DateTime? postDate;
  final String? transactionStatus;
  final String? country;
  final String? area;

  const HsbcHkCreditCustomFields({
    this.paymentMethod,
    this.postDate,
    this.transactionStatus,
    this.country,
    this.area,
  });
}

typedef HsbcHkCreditRawTransaction = RawTransaction<HsbcHkCreditCustomFields>;

final List<String> _keywords =
    List<String>.from(hsbcHkSharedKeywords)..add('Transaction date');

/// Parser for HSBC Hong Kong credit card CSV exports.
class HsbcHkParser extends Parser<HsbcHkCreditRawTransaction> {
  @override
  bool identify(String filename, Uint8List content) {
    final text = utf8.decode(content);
    return _keywords.every((keyword) => text.contains(keyword));
  }

  @override
  ParseResult<HsbcHkCreditRawTransaction> parse(Uint8List content) {
    final text = utf8.decode(content);

    if (text.trim().isEmpty) {
      return createParseFailure<HsbcHkCreditRawTransaction>(
        ParseErrorType.invalidFormat,
        'File is empty',
      );
    }

    final csvResult = parseHsbcHkCsv(text);
    if (csvResult is Failure<List<Map<String, String>>, Map<String, String>>) {
      final error = csvResult.error;
      return ParseFailure<HsbcHkCreditRawTransaction>(
        errors: [
          ParseError(
            type: ParseErrorType.csvParseError,
            message: error['message'] ?? 'CSV parse error',
          ),
        ],
      );
    }

    final rows =
        (csvResult as Success<List<Map<String, String>>, Map<String, String>>)
            .value;
    final transactions = <HsbcHkCreditRawTransaction>[];
    final warnings = <ParseWarning>[];

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];
      final lineNum = i + 2;

      final result = _transformRow(row, lineNum);
      switch (result) {
        case Success(:final value):
          transactions.add(value);
        case Failure(:final error):
          warnings.add(ParseWarning(
            type: 'SKIPPED_ROW',
            message: error['message'] as String,
            line: lineNum,
            raw: row.toString(),
            context: error['context'] as Map<String, dynamic>?,
          ));
      }
    }

    if (rows.isEmpty) {
      warnings.add(const ParseWarning(
          type: 'SKIPPED_ROW', message: 'No data rows found after header'));
    }

    return ParseSuccess<HsbcHkCreditRawTransaction>(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  Result<HsbcHkCreditRawTransaction, Map<String, dynamic>> _transformRow(
    Map<String, String> row,
    int lineNum,
  ) {
    // Parse date
    final dateStr = row['Transaction date'];
    if (dateStr == null || dateStr.trim().isEmpty) {
      return err({'message': 'Missing Transaction date field', 'context': {'row': row}});
    }

    final dateResult = parseDate(dateStr);
    switch (dateResult) {
      case Failure(:final error):
        return err({
          'message': 'Failed to parse date: ${error.message}',
          'context': {'input': dateStr},
        });
      case Success(:final value):
        final date = value;
        return _continueTransformRow(row, date);
    }
  }

  Result<HsbcHkCreditRawTransaction, Map<String, dynamic>>
      _continueTransformRow(Map<String, String> row, DateTime date) {
    // Parse currency
    final currency = row['Billing currency']?.trim() ?? '';
    if (currency.isEmpty) {
      return err({
        'message': 'Missing Billing currency field',
        'context': <String, dynamic>{},
      });
    }

    // Parse amount
    final amountStr = row['Billing amount']?.trim();
    final amountResult = parseHsbcAmount(amountStr);
    switch (amountResult) {
      case Failure(:final error):
        return err({
          'message': error['message'],
          'context': {'row': row},
        });
      case Success(:final value):
        return _buildTransaction(row, date, value, currency);
    }
  }

  Result<HsbcHkCreditRawTransaction, Map<String, dynamic>> _buildTransaction(
    Map<String, String> row,
    DateTime date,
    Decimal amount,
    String currency,
  ) {
    // Description
    final description = row['Description']?.trim() ?? '';

    // Payee
    final payee = row['Merchant name']?.trim();
    final payeeValue = (payee != null && payee.isNotEmpty) ? payee : null;

    // Custom fields
    String? paymentMethod;
    if (description.isNotEmpty) {
      paymentMethod = detectPaymentMethod(description);
    }

    final status = row['Transaction status']?.trim() ?? '';
    final postDateStr = row['Post date']?.trim() ?? '';
    DateTime? postDate;
    if (postDateStr.isNotEmpty) {
      final postDateResult = parseDate(postDateStr);
      if (postDateResult is Success<DateTime, ParseError>) {
        postDate = postDateResult.value;
      }
    }

    final country = row['Country / region']?.trim() ?? '';
    final area = row['Area / district']?.trim() ?? '';

    final hasCustomFields = paymentMethod != null ||
        postDate != null ||
        status.isNotEmpty ||
        country.isNotEmpty ||
        area.isNotEmpty;

    final customFields = hasCustomFields
        ? HsbcHkCreditCustomFields(
            paymentMethod: paymentMethod,
            postDate: postDate,
            transactionStatus: status.isNotEmpty ? status : null,
            country: country.isNotEmpty ? country : null,
            area: area.isNotEmpty ? area : null,
          )
        : null;

    final transaction = HsbcHkCreditRawTransaction(
      date: date,
      amount: amount,
      currency: currency,
      description: description,
      payee: payeeValue,
      customFields: customFields,
    );

    return ok(transaction);
  }
}
