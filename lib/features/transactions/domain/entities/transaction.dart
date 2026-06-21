/// Domain entity for a transaction list row.
///
/// The UI consumes this instead of the generated DTO, decoupling the widget
/// layer from `firela_api`. See `domain/mappers/transaction_mapper.dart` for
/// the DTO → entity mapping.
class Transaction {
  const Transaction({
    required this.id,
    required this.date,
    required this.narration,
    required this.payee,
    required this.sourceType,
    required this.status,
    required this.displayAmount,
    required this.currency,
  });

  final String id;

  /// ISO date (YYYY-MM-DD); used to group rows by day.
  final String date;

  final String narration;

  final String? payee;

  /// Creation source: 'NLP' | 'CSV' | 'OCR' | 'API' (or null).
  final String? sourceType;

  /// 'ACTIVE' | 'VOIDED' | 'SUPERSEDED'.
  final String status;

  /// Signed display amount, taken from the first (source) posting.
  final double displayAmount;

  final String currency;

  bool get isExpense => displayAmount < 0;
}
