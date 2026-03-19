/// Parser registry for automatic format detection.
///
/// This module provides a registry of all available parsers,
/// allowing automatic detection of file formats.
library;

import 'dart:typed_data';
import 'types.dart';
import 'alipay/alipay_web_parser.dart';

/// Registry for all available parsers.
///
/// The registry maintains a list of all parsers and provides
/// methods to detect the appropriate parser for a given file.
class ParserRegistry {
  /// List of registered parsers
  final List<Parser> _parsers = [];

  /// Creates a new registry and registers all built-in parsers.
  ParserRegistry() {
    // Register all built-in parsers
    _parsers.add(AlipayWebParser());
    // Future parsers:
    // _parsers.add(AlipayMobileParser());
    // _parsers.add(WechatParser());
  }

  /// Detect the appropriate parser for the given file.
  ///
  /// Returns the first parser that can identify the file, or null if no parser matches.
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
