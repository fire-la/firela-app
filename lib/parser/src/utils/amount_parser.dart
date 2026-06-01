/// Amount parsing utilities for Chinese CSV formats.
///
/// Supports various amount formats:
/// - Plain decimal: 50.00
/// - With comma: 1,234.56
/// - Parentheses negative: (1,234.56)
library;

import 'package:decimal/decimal.dart';
import '../result.dart';
import '../types.dart';

/// Parse amount string in Chinese CSV formats.
///
/// Supports:
/// - Plain decimal: 50.00
/// - With comma: 1,234.56
/// - Parentheses negative: (1,234.56)
Result<Decimal, ParseError> parseAmount(String text) {
  if (text.trim().isEmpty) {
    return err(ParseError(
      type: ParseErrorType.invalidAmount,
      message: 'Empty amount string',
      raw: text,
    ));
  }

  var cleaned = text.trim();

  // Handle parentheses negative: (1,234.56) → -1234.56
  bool isNegative = false;
  if (cleaned.startsWith('(') && cleaned.endsWith(')')) {
    isNegative = true;
    cleaned = cleaned.substring(1, cleaned.length - 1);
  }

  // Remove currency symbols, commas, and spaces
  cleaned = cleaned
      .replaceAll(',', '')
      .replaceAll('¥', '')
      .replaceAll(' ', '')
      .replaceAll('+', '')
      .replaceAll('-', '');

  // Parse decimal
  try {
    final decimal = Decimal.parse(cleaned);
    return ok(isNegative ? -decimal : decimal);
  } catch (e) {
    return err(ParseError(
      type: ParseErrorType.invalidAmount,
      message: 'Invalid amount: $text',
      raw: text,
    ));
  }
}
