/// Parser registry for automatic format detection.
///
/// Currently a stub — individual parsers have ts2dart issues
/// and are disabled until the backend team fixes them.
/// See Linear IGN-238.
library;

import 'dart:typed_data';
import 'types.dart';

/// Registry for all available parsers.
class ParserRegistry {
  final List<Parser> _parsers = [];

  ParserRegistry();

  /// Detect the appropriate parser for the given file.
  Parser? detect(String filename, Uint8List content) {
    for (final parser in _parsers) {
      if (parser.identify(filename, content)) {
        return parser;
      }
    }
    return null;
  }

  /// Get list of all registered parser names.
  List<String> get availableParsers =>
      _parsers.map((p) => p.runtimeType.toString()).toList();
}
