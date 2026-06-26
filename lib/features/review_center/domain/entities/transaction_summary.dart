/// Lightweight transaction snapshot embedded in review branch data
/// (backend `TransactionSummary`). Mirrors only the fields the type cards
/// display (e.g. DUPLICATE compare card); `amount` is parsed from the backend
/// Decimal string.
class TransactionSummary {
  const TransactionSummary({
    this.id,
    required this.date,
    required this.amount,
    required this.currency,
    this.payee,
    required this.narration,
  });

  final String? id;

  /// ISO date string, e.g. `2026-01-15`.
  final String date;

  /// Parsed amount (backend sends a Decimal string).
  final double amount;

  final String currency;

  /// Merchant/payee name.
  final String? payee;

  final String narration;
}
