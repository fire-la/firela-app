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

/// Parsed amount with currency information.
class ParsedAmount {
  final Decimal number;
  final String currency;
  const ParsedAmount({required this.number, required this.currency});
}

/// Parse Chinese amount string and return amount with currency.
///
/// Supports: ¥1,234.56 / 1234.56元 / CNY 1234.56 / plain 1234.56
Result<ParsedAmount, ParseError> parseChineseAmount(String text) {
  if (text.trim().isEmpty) {
    return err(ParseError(
      type: ParseErrorType.invalidAmount,
      message: 'Empty amount string',
      raw: text,
    ));
  }

  var cleaned = text.trim();
  var currency = 'CNY';

  if (cleaned.startsWith('¥') || cleaned.startsWith('￥')) {
    cleaned = cleaned.substring(1).trim();
  } else if (cleaned.endsWith('元')) {
    cleaned = cleaned.substring(0, cleaned.length - 1).trim();
  }

  final currencyMatch = RegExp(r'^([A-Z]{3})\s+(.+)$').firstMatch(cleaned);
  if (currencyMatch != null) {
    currency = currencyMatch[1]!;
    cleaned = currencyMatch[2]!.trim();
  }

  final amountResult = parseAmount(cleaned);
  if (amountResult is Failure) {
    return err(ParseError(
      type: ParseErrorType.invalidAmount,
      message: (amountResult as Failure).error.message,
      raw: text,
    ));
  }

  return ok(ParsedAmount(
    number: (amountResult as Success).value,
    currency: currency,
  ));
}

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
