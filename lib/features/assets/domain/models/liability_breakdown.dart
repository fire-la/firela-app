/// Model for liability breakdown by type
class LiabilityBreakdown {
  const LiabilityBreakdown({
    required this.type,
    required this.amount,
    required this.count,
    required this.percentage,
  });

  /// Liability type (e.g., credit card, loan, mortgage)
  final String type;

  /// Total amount for this liability type
  final double amount;

  /// Number of accounts/liabilities of this type
  final int count;

  /// Percentage of total liabilities (0-100)
  final double percentage;

  /// Create from JSON map
  factory LiabilityBreakdown.fromJson(Map<String, dynamic> json) {
    return LiabilityBreakdown(
      type: json['type'] as String? ?? '',
      amount: _parseDouble(json['amount']),
      count: json['count'] as int? ?? 0,
      percentage: _parseDouble(json['percentage']),
    );
  }

  /// Parse double from various types
  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'amount': amount,
      'count': count,
      'percentage': percentage,
    };
  }

  /// Copy with method
  LiabilityBreakdown copyWith({
    String? type,
    double? amount,
    int? count,
    double? percentage,
  }) {
    return LiabilityBreakdown(
      type: type ?? this.type,
      amount: amount ?? this.amount,
      count: count ?? this.count,
      percentage: percentage ?? this.percentage,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LiabilityBreakdown &&
        other.type == type &&
        other.amount == amount &&
        other.count == count &&
        other.percentage == percentage;
  }

  @override
  int get hashCode {
    return Object.hash(type, amount, count, percentage);
  }

  @override
  String toString() {
    return 'LiabilityBreakdown(type: $type, amount: $amount, count: $count, percentage: $percentage)';
  }
}
