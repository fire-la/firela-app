// Ported from TypeScript: libs/parsers/core/src/csv-parser-base.ts + csv-reader.ts
// Parser: csv-parser-base (abstract base class)

import 'dart:typed_data';

import 'package:csv/csv.dart';
import 'package:firela/parser/src/types.dart';
import 'package:firela/parser/src/utils/encoding.dart' as encoding;

// ============================================================================
// Configuration Types
// ============================================================================

/// Column definition with name variants and optional fallback.
class ColumnDef {
  /// Ordered column name variants (e.g., ['Booking date', 'Buchungstag'])
  final List<String> names;

  /// Position fallback when no name matches
  final int? fallbackIndex;

  /// Fail the entire parse if this column is missing
  final bool required;

  const ColumnDef({
    required this.names,
    this.fallbackIndex,
    this.required = false,
  });
}

/// Result of a row transformation.
///
/// Parsers return success with the transaction or failure with an error message.
class RowTransformResult<T extends RawTransaction> {
  final bool isSuccess;
  final T? value;
  final String? errorMessage;
  final Map<String, dynamic>? errorContext;

  const RowTransformResult.ok(this.value)
      : isSuccess = true,
        errorMessage = null,
        errorContext = null;

  const RowTransformResult.err(this.errorMessage, [this.errorContext])
      : isSuccess = false,
        value = null;
}

/// Configuration for a CsvParser subclass.
abstract class CsvParserConfig<T extends RawTransaction> {
  /// Unique institution identifier (e.g., 'degiro', 'ccb-debit')
  String get institutionId;

  /// Column definitions mapping logical names to header variants
  Map<String, ColumnDef> get columns;

  /// Keywords for file identification (checked against decoded content)
  List<String> get identifyKeywords;

  /// Minimum number of columns required for a valid file
  int get minColumns;

  /// Detect format variant from headers (e.g., 'english' | 'german')
  String? detectFormat(List<String> headers);

  /// Transform a parsed CSV row into a RawTransaction
  RowTransformResult<T> transformRow(
    List<String> row,
    Map<String, int> columnMap,
    String? format,
  );
}

// ============================================================================
// CsvParser Abstract Base Class
// ============================================================================

/// Abstract base class for CSV-based financial file parsers.
///
/// Uses Template Method pattern: subclasses provide configuration and
/// row transformation, base class handles CSV parsing infrastructure.
abstract class CsvParser<T extends RawTransaction> extends Parser<T> {
  /// Parser configuration provided by subclass.
  CsvParserConfig<T> get config;

  @override
  bool identify(String filename, Uint8List content) {
    final decodedContent = _decode(content);
    final matchedKeywords = config.identifyKeywords
        .where((kw) => decodedContent.contains(kw))
        .toList();

    if (matchedKeywords.isEmpty) return false;

    // Check column count for full confidence
    final firstLine = decodedContent.split(RegExp(r'\r?\n')).firstOrNull ?? '';
    final delimiter = _detectDelimiter(firstLine);
    final columnCount = firstLine.split(delimiter).length;

    return matchedKeywords.length == config.identifyKeywords.length &&
        columnCount >= config.minColumns;
  }

  @override
  ParseResult<T> parse(Uint8List content) {
    // Step 1: Decode content
    final decoded = _decode(content);

    if (decoded.trim().isEmpty) {
      return createParseFailure<T>(ParseErrorType.invalidFormat, 'File is empty');
    }

    // Step 2: Detect delimiter
    final delimiter = _detectDelimiter(decoded);

    // Step 3: Parse CSV rows
    List<List<dynamic>> rawRows;
    try {
      rawRows = CsvToListConverter(
        shouldParseNumbers: false,
        fieldDelimiter: delimiter,
      ).convert(decoded);
    } catch (error) {
      final message = error is Exception ? error.toString() : error.toString();
      return createParseFailure<T>(ParseErrorType.csvParseError, 'CSV parsing failed: $message');
    }

    if (rawRows.isEmpty) {
      return createParseFailure<T>(ParseErrorType.invalidFormat, 'No data rows found in file');
    }

    // Convert to List<List<String>>
    final rows = rawRows.map((r) => r.cast<String>()).toList();

    // Step 4: Build column map from headers
    final headers = rows.first.map((h) => h.trim()).toList();
    final columnMap = buildColumnMap(headers);

    // Check required columns
    for (final entry in config.columns.entries) {
      final logicalName = entry.key;
      final def = entry.value;
      if (def.required && !columnMap.containsKey(logicalName)) {
        final nameList = def.names.join(', ');
        return createParseFailure<T>(
          ParseErrorType.missingRequiredField,
          'Required column not found: $nameList (logical name: $logicalName)',
        );
      }
    }

    // Step 5: Detect format variant
    final format = config.detectFormat(headers);

    // Step 6: Iterate data rows
    final transactions = <T>[];
    final warnings = <ParseWarning>[];

    for (var i = 1; i < rows.length; i++) {
      final row = rows[i];
      if (row.every((cell) => cell.trim().isEmpty)) continue;

      final result = config.transformRow(row, columnMap, format);

      if (result.isSuccess) {
        transactions.add(result.value as T);
      } else {
        warnings.add(ParseWarning(
          type: 'SKIPPED_ROW',
          message: result.errorMessage ?? 'Unknown error',
          line: i + 1,
          context: result.errorContext,
        ));
      }
    }

    // Step 7: Return result
    if (transactions.isEmpty) {
      return createParseFailure<T>(
        ParseErrorType.invalidFormat,
        'No valid transactions found in file',
        {'warningCount': warnings.length},
      );
    }

    return ParseSuccess<T>(
      data: transactions,
      warnings: warnings.isNotEmpty ? warnings : null,
    );
  }

  // ============================================================================
  // Protected Utility Methods
  // ============================================================================

  /// Build a column map from header names using column definitions.
  Map<String, int> buildColumnMap(List<String> headers) {
    final columnMap = <String, int>{};

    for (final entry in config.columns.entries) {
      final logicalName = entry.key;
      final def = entry.value;

      // Try each name variant in order
      for (final name in def.names) {
        final index = headers.indexWhere(
          (header) => header.trim().toLowerCase() == name.trim().toLowerCase(),
        );
        if (index != -1) {
          columnMap[logicalName] = index;
          break;
        }
      }

      // Use fallback index if no name matched
      if (!columnMap.containsKey(logicalName) && def.fallbackIndex != null) {
        columnMap[logicalName] = def.fallbackIndex!;
      }
    }

    return columnMap;
  }

  /// Get a column value from a row using the column map.
  String getColumnValue(
    List<String> row,
    Map<String, int> columnMap,
    String name, [
    int? fallbackIndex,
  ]) {
    final index = columnMap[name];
    if (index != null && index < row.length) {
      return row[index];
    }
    if (fallbackIndex != null && fallbackIndex < row.length) {
      return row[fallbackIndex];
    }
    return '';
  }

  /// Parse a European-formatted number string.
  double parseEuropeanNumber(String value) {
    if (value.trim().isEmpty) return 0;

    var cleaned = value.trim();

    // Remove currency symbols/prefixes
    cleaned = cleaned.replaceFirst(RegExp(r'^[A-Z]{3}\s*'), '');
    cleaned = cleaned.replaceFirst(RegExp(r'\s*[A-Z]{3}$'), '');

    // Handle parenthesized negatives: (1.234,56) -> -1.234,56
    if (cleaned.startsWith('(') && cleaned.endsWith(')')) {
      cleaned = '-${cleaned.substring(1, cleaned.length - 1)}';
    }

    // Remove spaces used as thousand separators
    cleaned = cleaned.replaceAll(RegExp(r'\s'), '');

    // European format detection
    final lastComma = cleaned.lastIndexOf(',');
    final lastDot = cleaned.lastIndexOf('.');

    if (lastComma > lastDot) {
      // Comma is decimal separator (European format)
      cleaned = cleaned.replaceAll('.', '').replaceFirst(',', '.');
    } else if (lastDot > lastComma) {
      // Dot is decimal separator (standard format)
      cleaned = cleaned.replaceAll(',', '');
    }

    final parsed = double.tryParse(cleaned);
    return parsed ?? 0;
  }

  /// Decode buffer content to UTF-8 string.
  String _decode(Uint8List content) {
    return encoding.decodeContent(content);
  }

  // ============================================================================
  // Private Helpers
  // ============================================================================

  /// Detect CSV delimiter from content.
  static String _detectDelimiter(String content) {
    final firstLine = content.split(RegExp(r'\r?\n')).firstOrNull ?? '';
    const delimiters = [',', '\t', ';', '|'];
    var maxCount = 0;
    var detected = ',';

    for (final delim in delimiters) {
      final pattern = delim == '\t' ? '\t' : RegExp.escape(delim);
      final count = RegExp(pattern).allMatches(firstLine).length;
      if (count > maxCount) {
        maxCount = count;
        detected = delim;
      }
    }

    return detected;
  }
}
