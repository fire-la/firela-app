/// Parser registry for automatic format detection.
///
/// This module provides a registry of all available parsers,
/// allowing automatic detection of file formats.
///
/// NOTE: The actual parsing is handled by the backend API.
/// This registry is a minimal stub that preserves the API surface
/// used by bill_import_page.dart. No local parsers are registered.
library;

import 'dart:typed_data';
import 'types.dart';

/// Registry for all available parsers.
///
/// The registry maintains a list of all parsers and provides
/// methods to detect the appropriate parser for a given file.
///
/// In this stub implementation, no parsers are registered.
/// Detection will always return null.
class ParserRegistry {
  /// List of registered parsers
  final List<Parser> _parsers = [];

  /// Creates a new registry with no registered parsers.
  ParserRegistry();

  /// Detect the appropriate parser for the given file.
  ///
  /// Returns the first parser that can identify the file, or null if no parser matches.
  /// In this stub implementation, always returns null.
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
