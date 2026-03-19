/// Encoding utilities for handling different character encodings.
///
/// Supports UTF-8 and GBK encodings commonly used in Chinese CSV files.
library;

import 'dart:convert';
import 'dart:typed_data';
import 'package:charset/charset.dart';

/// Decode content with automatic encoding detection.
///
/// Strategy: Try UTF-8 first, fallback to GBK if decoding fails or produces garbled characters.
/// This is simpler than full encoding detection and works well for Alipay files.
String decodeContent(Uint8List content) {
  // Try UTF-8 first (most common for test files)
  try {
    final decoded = utf8.decode(content);
    // Check for garbled characters (indicates wrong encoding)
    if (!_hasGarbledChars(decoded)) {
      return decoded;
    }
  } catch (_) {
    // UTF-8 decoding failed, try GBK
  }

  // Fallback to GBK (common for Chinese CSV files)
  try {
    final gbkDecoder = GbkCodec();
    return gbkDecoder.decode(content);
  } catch (e) {
    throw FormatException(
      'Failed to decode content: $e',
    );
  }
}

/// Check if string contains garbled characters.
///
/// Garbled characters indicate that UTF-8 decoding was applied to GBK-encoded content.
bool _hasGarbledChars(String text) {
  // Check for replacement characters (�) and common GBK-as-UTF-8 mojibake patterns
  return text.contains('�') ||
         text.contains(RegExp(r'[\x00-\x08\x0B\x0C\x0E-\x1F]'));
}
