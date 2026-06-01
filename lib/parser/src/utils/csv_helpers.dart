// CSV parsing helpers for ts2dart-generated parsers.
// Provides Dart equivalents for TS csv-parse/sync functions.

import 'package:csv/csv.dart';

/// Parse CSV content into list of row maps (header -> value mapping).
///
/// Equivalent to TS: `parseCsv(content, { columns: true })`.
List<Map<String, String>> parseCsvAsMaps(String content, {String delimiter = ','}) {
  final rows = const CsvToListConverter(shouldParseNumbers: false)
      .convert(content, fieldDelimiter: delimiter, textDelimiter: '"', eol: '\n');
  if (rows.isEmpty) return [];
  final headers = rows.first.cast<String>().map((h) => h.trim()).toList();
  return rows.sublist(1).map((row) {
    final stringRow = row.cast<String>();
    final map = <String, String>{};
    for (var i = 0; i < headers.length && i < stringRow.length; i++) {
      if (headers[i].isNotEmpty) map[headers[i]] = stringRow[i];
    }
    return map;
  }).toList();
}

/// Parse CSV content into list of string arrays.
///
/// Equivalent to TS: `parseCsv(content)` or `parseCsv(content, { columns: false })`.
List<List<String>> parseCsvAsArrays(String content, {String delimiter = ','}) {
  final rows = const CsvToListConverter(shouldParseNumbers: false)
      .convert(content, fieldDelimiter: delimiter, textDelimiter: '"', eol: '\n');
  return rows.map((r) => r.cast<String>()).toList();
}
