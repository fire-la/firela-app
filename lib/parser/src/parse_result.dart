export 'parse_error.dart';
export 'parse_warning.dart';

import 'parse_error.dart';
import 'parse_warning.dart';
import 'raw_transaction.dart';

/// Sealed class for parse results
///
/// Use pattern matching to handle results:
/// ```dart
/// switch (result) {
///   case ParseSuccess():
///     print('Parsed ${result.data.length} transactions');
///   case ParseFailure():
///     for (final error in result.errors) {
///       print('Error: ${error.message}');
///     }
/// }
/// ```
sealed class ParseResult {}

/// Successful parse result
class ParseSuccess<T> extends ParseResult {
  /// Parsed transactions
  final List<RawTransaction<T>> data;

  /// Non-fatal warnings encountered during parsing
  final List<ParseWarning>? warnings;

  ParseSuccess({
    required this.data,
    this.warnings,
  });

  /// Number of parsed transactions
  int get length => data.length;

  /// Whether there are any warnings
  bool get hasWarnings => warnings != null && warnings!.isNotEmpty;
}

/// Failed parse result
class ParseFailure extends ParseResult {
  /// Errors that prevented parsing
  final List<ParseError> errors;

  ParseFailure({required this.errors});

  /// First error message (convenience getter)
  String get message => errors.isNotEmpty ? errors.first.message : 'Unknown error';
}
