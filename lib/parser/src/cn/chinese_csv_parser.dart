// Hand-written — do not auto-generate with ts2dart

import 'dart:typed_data';

import 'package:firela_app/parser/src/core/csv_parser_base.dart' show RowTransformResult;
import 'package:firela_app/parser/src/types.dart';
import 'package:firela_app/parser/src/utils/encoding.dart' as encoding;

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
  /// Uses encoding utility that handles UTF-8 → GBK fallback automatically.
  String decodeContent(Uint8List content) {
    return encoding.decodeContent(content);
  }

  /// Parse CSV content and find data rows between header and separator.
  _RowsResult _parseRows(String content) {
    try {
      // Split into lines and detect delimiter (Chinese CSVs are typically tab-separated)
      final lines = content.split(RegExp(r'\r?\n'));
      final delimiter = _detectDelimiter(lines);

      final allRows = <List<String>>[];
      for (final line in lines) {
        if (line.trim().isEmpty) continue;
        if (delimiter == '\t') {
          allRows.add(line.split('\t'));
        } else {
          allRows.add(line.split(delimiter));
        }
      }

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

  /// Detect the field delimiter from content lines.
  /// Chinese CSV exports (Alipay, WeChat) are typically tab-separated.
  static String _detectDelimiter(List<String> lines) {
    var tabCount = 0;
    var commaCount = 0;
    for (final line in lines.take(20)) {
      tabCount += '\t'.allMatches(line).length;
      commaCount += ','.allMatches(line).length;
    }
    if (tabCount > commaCount) return '\t';
    if (commaCount > 0) return ',';
    return '\t';
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
