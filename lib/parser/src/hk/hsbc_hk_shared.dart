// Ported from TypeScript: libs/parsers/hk/src/bank/hsbc/hsbc-hk-shared.ts
// Parser: hsbc-hk-shared (shared utilities)

import 'package:csv/csv.dart';
import 'package:decimal/decimal.dart';
import 'package:firela/parser/src/result.dart';

final List<String> hsbcHkSharedKeywords = ['Billing currency', 'Description'];

/// Detect payment method from transaction description.
String? detectPaymentMethod(String description) {
  final upper = description.toUpperCase();
  if (upper.contains('UNIONPAY')) return 'UnionPay';
  if (upper.contains('APPLE PAY')) return 'Apple Pay';
  return null;
}

/// Parse HSBC HK CSV content into list of row maps.
///
/// Uses CsvToListConverter + manual header mapping (Dart csv package v6 API).
Result<List<Map<String, String>>, Map<String, String>> parseHsbcHkCsv(String content) {
  try {
    final rows = const CsvToListConverter(shouldParseNumbers: false)
        .convert(content, fieldDelimiter: ',', textDelimiter: '"', eol: '\n');

    if (rows.isEmpty) {
      return err({'type': 'CSV_PARSE_ERROR', 'message': 'CSV file is empty'});
    }

    // First row is headers
    final headerRow = rows[0].cast<String>();
    final dataRows = rows.sublist(1);

    final mappedRows = <Map<String, String>>[];
    for (final row in dataRows) {
      final stringRow = row.cast<String>();
      final map = <String, String>{};
      for (var i = 0; i < headerRow.length && i < stringRow.length; i++) {
        final key = headerRow[i].trim();
        if (key.isNotEmpty) {
          map[key] = stringRow[i];
        }
      }
      mappedRows.add(map);
    }

    return ok(mappedRows);
  } catch (error) {
    return err({
      'type': 'CSV_PARSE_ERROR',
      'message': 'Failed to parse CSV: ${error is Exception ? error.toString() : error.toString()}',
    });
  }
}

/// Parse an amount string into Decimal.
Result<Decimal, Map<String, String>> parseHsbcAmount(String? amountStr) {
  if (amountStr == null || amountStr.trim().isEmpty) {
    return err({'message': 'Missing amount field'});
  }
  try {
    final amount = Decimal.parse(amountStr.trim());
    return ok(amount);
  } catch (e) {
    return err({'message': 'Invalid amount: $amountStr'});
  }
}
