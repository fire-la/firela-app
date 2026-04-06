/// Raw transaction data parsed from bill files
///
/// This is the output format from parsers, containing the essential
/// transaction information before it's converted to domain models.
///
/// [CustomFields] allows parser-specific additional data (e.g., Alipay order numbers)
class RawTransaction<CustomFields> {
  /// Transaction date
  final DateTime date;

  /// Transaction amount
  /// Positive = income, Negative = expense
  final double amount;

  /// Currency code (CNY, USD, EUR, etc.)
  final String currency;

  /// Transaction description/summary
  final String description;

  /// Payee/merchant name (optional)
  final String? payee;

  /// Additional metadata (optional)
  final Map<String, dynamic>? metadata;

  /// Parser-specific fields (optional)
  final CustomFields? customFields;

  const RawTransaction({
    required this.date,
    required this.amount,
    required this.currency,
    required this.description,
    this.payee,
    this.metadata,
    this.customFields,
  });

  /// Whether this is an income transaction
  bool get isIncome => amount >= 0;

  /// Whether this is an expense transaction
  bool get isExpense => amount < 0;

  /// Absolute amount value
  double get absAmount => amount.abs();

  /// Format date as YYYY-MM-DD (for API requests)
  String get dateStr {
    return '${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}';
  }

  @override
  String toString() {
    return 'RawTransaction($dateStr: $amount $currency - $description)';
  }

  /// Copy with new values
  RawTransaction<CustomFields> copyWith({
    DateTime? date,
    double? amount,
    String? currency,
    String? description,
    String? payee,
    Map<String, dynamic>? metadata,
    CustomFields? customFields,
  }) {
    return RawTransaction<CustomFields>(
      date: date ?? this.date,
      amount: amount ?? this.amount,
      currency: currency ?? this.currency,
      description: description ?? this.description,
      payee: payee ?? this.payee,
      metadata: metadata ?? this.metadata,
      customFields: customFields ?? this.customFields,
    );
  }
}
