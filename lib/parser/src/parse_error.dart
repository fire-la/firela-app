/// Types of parsing errors
enum ParseErrorType {
  /// File format is not recognized or supported
  invalidFormat,

  /// Date field has invalid format
  invalidDate,

  /// Amount field has invalid format
  invalidAmount,

  /// Currency code is invalid
  invalidCurrency,

  /// File encoding error (e.g., not valid UTF-8 or GBK)
  encodingError,

  /// Required field is missing
  missingRequiredField,

  /// File read error
  fileReadError,

  /// CSV parsing error
  csvParseError,
}

/// Represents a parsing error
class ParseError {
  /// Type of error
  final ParseErrorType type;

  /// Human-readable error message
  final String message;

  /// Line number where error occurred (if applicable)
  final int? line;

  /// Additional context (e.g., field name)
  final String? context;

  const ParseError({
    required this.type,
    required this.message,
    this.line,
    this.context,
  });

  @override
  String toString() {
    final parts = <String>['ParseError($type): $message'];
    if (line != null) parts.add('at line $line');
    if (context != null) parts.add('($context)');
    return parts.join(' ');
  }
}
