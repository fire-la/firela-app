/// Core parser types and interfaces.
///
/// This module defines the fundamental types for the parser infrastructure.
/// All parsers must implement the Parser interface and return ParseResult.
library;

import 'dart:typed_data';
import 'package:decimal/decimal.dart';

// ============================================================================
// RawTransaction - Core data structure
// ============================================================================

/// Raw transaction data extracted from a file.
///
/// This is the output of Parser.parse() - pure data without any business logic.
/// RawTransaction MUST NOT contain account paths (that's Importer's job).
class RawTransaction<CustomFields> {
  /// Transaction date
  final DateTime date;

  /// Transaction amount (positive = income, negative = expense)
  final Decimal amount;

  /// Currency code (ISO 4217: CNY, USD, EUR, etc.)
  final String currency;

  /// Transaction description/narration
  final String description;

  /// Payee/counterparty (optional)
  final String? payee;

  /// Additional metadata (optional)
  final Map<String, dynamic>? metadata;

  /// Parser-specific custom fields
  final CustomFields? customFields;

  const RawTransaction({
    required this.date,
    required this.amount,
    required this.currency,
    required this.description,
    this.payee,
    this.metadata,
    this.customFields,
  });

  @override
  String toString() =>
      'RawTransaction(date: $date, amount: $amount, currency: $currency, description: $description)';
}

// ============================================================================
// Parse Result Types
// ============================================================================

/// Result of parsing a file.
///
/// Uses sealed class pattern for type-safe result handling.
sealed class ParseResult<T> {}

/// Successful parse result.
class ParseSuccess<T> extends ParseResult<T> {
  /// Parsed transactions
  final List<T> data;

  /// Warnings (non-fatal issues)
  final List<ParseWarning>? warnings;

  ParseSuccess({required this.data, this.warnings});
}

/// Failed parse result.
class ParseFailure<T> extends ParseResult<T> {
  /// Parsing errors
  final List<ParseError> errors;

  /// Warnings encountered during failure
  final List<ParseWarning>? warnings;

  ParseFailure({required this.errors, this.warnings});
}

// ============================================================================
// Error and Warning Types
// ============================================================================

/// Error types for parsing operations.
enum ParseErrorType {
  invalidFormat,
  invalidDate,
  invalidAmount,
  invalidCurrency,
  encodingError,
  missingRequiredField,
  fileReadError,
  csvParseError,
}

/// Parsing error details.
class ParseError {
  /// Error type classification
  final ParseErrorType type;

  /// Human-readable error message
  final String message;

  /// Line number where error occurred (if applicable)
  final int? line;

  /// Column number where error occurred (if applicable)
  final int? column;

  /// Raw data that caused the error (for debugging)
  final String? raw;

  /// Additional context for the error
  final Map<String, dynamic>? context;

  const ParseError({
    required this.type,
    required this.message,
    this.line,
    this.column,
    this.raw,
    this.context,
  });

  @override
  String toString() => 'ParseError($type): $message${line != null ? ' at line $line' : ''}${raw != null}';
}

/// Parsing warning details.
class ParseWarning {
  /// Warning type classification
  final String type;

  /// Human-readable warning message
  final String message;

  /// Line number where warning was raised (if applicable)
  final int? line;

  /// Raw data that triggered the warning (for debugging)
  final String? raw;

  /// Additional context for the warning
  final Map<String, dynamic>? context;

  const ParseWarning({
    required this.type,
    required this.message,
    this.line,
    this.raw,
    this.context,
  });

  @override
  String toString() => 'ParseWarning($type): $message${line != null ? ' at line $line' : ''}';
}

// ============================================================================
// Parser Interface
// ============================================================================

/// Parser interface - pure file format parsing.
///
/// Parsers are responsible for:
/// - File format identification (identify method)
/// - Raw data extraction (parse method)
///
/// Parsers MUST NOT:
/// - Import Flutter framework dependencies
/// - Call rule engine
/// - Infer account paths
/// - Read user configuration
abstract class Parser<T extends RawTransaction> {
  /// Identify if this parser can handle the given file.
  ///
  /// [filename] - File name (may include path)
  /// [content] - File content as Uint8List
  /// Returns true if this parser can handle the file
  bool identify(String filename, Uint8List content);

  /// Parse file content into raw transactions.
  ///
  /// [content] - File content as Uint8List
  /// Returns ParseResult with transactions or errors
  ParseResult<T> parse(Uint8List content);
}

// ============================================================================
// Helper Functions
// ============================================================================

/// Create a ParseFailure with a single error.
ParseFailure<T> createParseFailure<T>(
  ParseErrorType type,
  String message, [
  Map<String, dynamic>? context,
]) {
  return ParseFailure<T>(errors: [ParseError(type: type, message: message, context: context)]);
}
