// Hand-written — do not auto-generate with ts2dart

import 'dart:convert';
import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:firela/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela/parser/src/result.dart';
import 'package:firela/parser/src/types.dart';
import 'package:firela/parser/src/utils/encoding.dart' as encoding;

/// Simple result for internal _parseRows (avoids RowTransformResult's RawTransaction bound).
class _RowsResult {
  final bool isSuccess;
  final List<List<String>>? value;
  final String? errorMessage;
  const _RowsResult.ok(this.value) : isSuccess = true, errorMessage = null;
  const _RowsResult.err(this.errorMessage) : isSuccess = false, value = null;
}

/// Abstract base class for Chinese CSV-based financial file parsers.
///
/// Handles metadata rows before header, GBK fallback encoding,
/// and row-by-row transformation with warning collection.
abstract class ChineseCsvParser<T extends RawTransaction> extends Parser<T> {
  // Abstract: Parser identity
  String get institutionId;
  List<String> get identifyKeywords;
  num get minColumns;

  // Abstract: Row detection
  bool isHeaderRow(List<String> row);
  bool isSeparatorRow(List<String> row) => false;

  // Configurable
  bool gbkFallback = false;

  // Abstract: Row transformation
  RowTransformResult transformRow(List<String> row, num lineNum);

  @override
  bool identify(String filename, Uint8List content) {
    final decoded = decodeContent(content);
    return identifyKeywords.every((kw) => decoded.contains(kw));
  }

  @override
  ParseResult<T> parse(Uint8List content) {
    final text = decodeContent(content);
    if (text.isEmpty || text.trim().isEmpty) {
      return createParseFailure(ParseErrorType.invalidFormat, 'File is empty');
    }

    // Parse CSV rows
    final parseResult = _parseRows(text);
    if (!parseResult.isSuccess) {
      return createParseFailure(
        ParseErrorType.csvParseError,
        parseResult.errorMessage!,
      );
    }

    final rows = parseResult.value!;
    return _transformRows(rows);
  }

  /// Decode buffer content to UTF-8 string.
  String decodeContent(Uint8List content) {
    final utf8Text = utf8.decode(content);
    if (identifyKeywords.every((kw) => utf8Text.contains(kw))) {
      return utf8Text;
    }
    if (gbkFallback) {
      final convertResult = encoding.decodeContent(content);
      if (convertResult is Success) {
        return (convertResult as Success).value as String;
      }
    }
    return utf8Text;
  }

  /// Parse CSV content and find data rows between header and separator.
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
        if (row.length < minColumns) continue;

        if (!headerFound) {
          if (isHeaderRow(row)) {
            headerFound = true;
          }
          continue;
        }

        if (isSeparatorRow(row)) break;

        dataRows.add(row);
      }

      if (!headerFound) {
        return const _RowsResult.err('CSV header not found');
      }

      return _RowsResult.ok(dataRows);
    } catch (error) {
      final msg = error is Exception ? error.toString() : error.toString();
      return _RowsResult.err('Failed to parse CSV: $msg');
    }
  }

  /// Transform data rows into transactions with warning collection.
  ParseResult<T> _transformRows(List<List<String>> rows) {
    final transactions = <T>[];
    final warnings = <ParseWarning>[];

    for (var i = 0; i < rows.length; i++) {
      final row = rows[i];
      final lineNum = i + 1;
      final result = transformRow(row, lineNum);

      if (result.isSuccess) {
        transactions.add(result.value as T);
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
}
