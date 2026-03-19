/// Date parsing utilities for Chinese CSV formats.
///
/// Supports various date formats used by Chinese financial platforms:
/// - ISO datetime: 2024-01-25 14:30:00
/// - Chinese format: 2024年1月25日 14:30:00
/// - Dot format: 2024.1.25
library;

import '../result.dart';
import '../types.dart';

/// Parse date string in Chinese CSV formats.
///
/// Supported formats:
/// - 2024年1月25日 14:30:00 (Chinese with time)
/// - 2024年1月25日 (Chinese date only)
/// - 2024-01-25 14:30:00 (ISO datetime)
/// - 2024-01-25 (ISO date)
/// - 2024.1.25 (Dot-separated)
Result<DateTime, ParseError> parseDate(String text) {
  if (text.trim().isEmpty) {
    return err(ParseError(
      type: ParseErrorType.invalidDate,
      message: 'Empty date string',
      raw: text,
    ));
  }

  final trimmed = text.trim();

  // Pattern 1: Chinese format with time (2024年1月25日 14:30:00)
  final chineseWithTime = RegExp(
    r'^(\d{4})年(\d{1,2})月(\d{1,2})日\s+(\d{1,2}):(\d{1,2}):(\d{1,2})$',
  );
  var match = chineseWithTime.firstMatch(trimmed);
  if (match != null) {
    try {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);
      final hour = int.parse(match.group(4)!);
      final minute = int.parse(match.group(5)!);
      final second = int.parse(match.group(6)!);

      return ok(DateTime(year, month, day, hour, minute, second));
    } catch (_) {
      // Fall through to next pattern
    }
  }

  // Pattern 2: Chinese format date only (2024年1月25日)
  final chineseDateOnly = RegExp(
    r'^(\d{4})年(\d{1,2})月(\d{1,2})日$',
  );
  match = chineseDateOnly.firstMatch(trimmed);
  if (match != null) {
    try {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);

      return ok(DateTime(year, month, day));
    } catch (_) {
      // Fall through to next pattern
    }
  }

  // Pattern 3: ISO datetime (2024-01-25 14:30:00)
  final isoDatetime = RegExp(
    r'^(\d{4})-(\d{1,2})-(\d{1,2})\s+(\d{1,2}):(\d{1,2}):(\d{1,2})$',
  );
  match = isoDatetime.firstMatch(trimmed);
  if (match != null) {
    try {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);
      final hour = int.parse(match.group(4)!);
      final minute = int.parse(match.group(5)!);
      final second = int.parse(match.group(6)!);

      return ok(DateTime(year, month, day, hour, minute, second));
    } catch (_) {
      // Fall through to next pattern
    }
  }

  // Pattern 4: ISO date (2024-01-25)
  final isoDate = RegExp(r'^(\d{4})-(\d{1,2})-(\d{1,2})$');
  match = isoDate.firstMatch(trimmed);
  if (match != null) {
    try {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);

      return ok(DateTime(year, month, day));
    } catch (_) {
      // Fall through to next pattern
    }
  }

  // Pattern 5: Dot-separated date (2024.1.25)
  final dotDate = RegExp(r'^(\d{4})\.(\d{1,2})\.(\d{1,2})$');
  match = dotDate.firstMatch(trimmed);
  if (match != null) {
    try {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);

      return ok(DateTime(year, month, day));
    } catch (_) {
      // Fall through to error
    }
  }

  // No pattern matched
  return err(ParseError(
    type: ParseErrorType.invalidDate,
    message: 'Unrecognized date format: $trimmed',
    raw: text,
  ));
}
