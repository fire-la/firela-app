import 'package:intl/intl.dart';

/// Formatting utilities
class Formatters {
  Formatters._();

  /// Formats currency amount
  static String formatCurrency(double amount, {String symbol = '\$'}) {
    final formatter = NumberFormat.currency(
      symbol: symbol,
      decimalDigits: 2,
    );
    return formatter.format(amount);
  }

  /// Formats a signed amount with a currency-code suffix, e.g. "-2,000.00 CNY".
  /// Sign denotes direction; the currency is shown as a trailing code. When the
  /// currency is empty/unknown the suffix is omitted.
  static String formatSignedCurrency(double amount, {required String currency}) {
    final body = formatCurrency(amount.abs(), symbol: '');
    final sign = amount < 0 ? '-' : '+';
    return currency.isEmpty ? '$sign$body' : '$sign$body $currency';
  }

  /// Formats date
  static String formatDate(DateTime date) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  /// Formats date with time
  static String formatDateTime(DateTime dateTime) {
    final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    return formatter.format(dateTime);
  }

  /// Formats relative time (e.g., "2 hours ago")
  static String formatRelativeTime(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return '$years ${years == 1 ? 'year' : 'years'} ago';
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return '$months ${months == 1 ? 'month' : 'months'} ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} ${difference.inDays == 1 ? 'day' : 'days'} ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} ${difference.inHours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} ${difference.inMinutes == 1 ? 'minute' : 'minutes'} ago';
    } else {
      return 'Just now';
    }
  }

  /// Formats number with thousand separators
  static String formatNumber(num number) {
    final formatter = NumberFormat('#,###');
    return formatter.format(number);
  }

  /// Formats percentage
  static String formatPercentage(double value, {int decimals = 1}) {
    final formatter = NumberFormat.percentPattern();
    formatter.minimumFractionDigits = decimals;
    formatter.maximumFractionDigits = decimals;
    return formatter.format(value);
  }
}
