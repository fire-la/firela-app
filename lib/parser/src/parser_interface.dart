import 'dart:typed_data';
import 'parse_result.dart';

/// Parser interface for bill file formats
///
/// Implementations parse specific formats (Alipay, WeChat, etc.)
/// and return RawTransaction objects.
///
/// Usage:
/// ```dart
/// final parser = AlipayWebParser();
/// if (parser.identify(filename, content)) {
///   final result = parser.parse(content);
///   switch (result) {
///     case ParseSuccess():
///       // handle transactions
///     case ParseFailure():
///       // handle errors
///   }
/// }
/// ```
abstract class Parser<T> {
  /// Human-readable name of this parser
  String get name;

  /// Supported file extensions (e.g., ['.csv', '.txt'])
  List<String> get supportedExtensions;

  /// Identify if this parser can handle the given file
  ///
  /// [filename] - The file name/path
  /// [content] - The file content as bytes
  ///
  /// Returns true if this parser can handle the file.
  bool identify(String filename, Uint8List content);

  /// Parse the file content
  ///
  /// [content] - The file content as bytes
  ///
  /// Returns a ParseResult which is either:
  /// - ParseSuccess with list of RawTransaction
  /// - ParseFailure with list of ParseError
  ParseResult parse(Uint8List content);
}
