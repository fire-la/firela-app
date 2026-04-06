/// Represents a non-fatal parsing warning
///
/// Warnings indicate issues that don't prevent parsing from continuing,
/// but may result in incomplete or less accurate data.
class ParseWarning {
  /// Human-readable warning message
  final String message;

  /// Line number where warning occurred (if applicable)
  final int? line;

  /// Warning code for programmatic handling
  final String? code;

  const ParseWarning({
    required this.message,
    this.line,
    this.code,
  });

  @override
  String toString() {
    if (line != null) {
      return 'Warning at line $line: $message';
    }
    return 'Warning: $message';
  }
}
