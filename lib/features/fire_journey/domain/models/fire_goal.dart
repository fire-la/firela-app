/// Model for FIRE (Financial Independence, Retire Early) goal settings
class FireGoal {
  const FireGoal({
    required this.targetAmount,
    this.targetDate,
    required this.monthlyExpenses,
    this.withdrawalRate = 0.04,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Target FIRE number (total investment needed)
  final double targetAmount;

  /// Target date to achieve FIRE (optional)
  final DateTime? targetDate;

  /// Estimated monthly expenses in retirement
  final double monthlyExpenses;

  /// Safe withdrawal rate (default: 4% rule)
  final double withdrawalRate;

  /// When the goal was created
  final DateTime createdAt;

  /// When the goal was last updated
  final DateTime updatedAt;

  /// Create from JSON map
  factory FireGoal.fromJson(Map<String, dynamic> json) {
    return FireGoal(
      targetAmount: _parseDouble(json['targetAmount']),
      targetDate: _parseDateTimeNullable(json['targetDate']),
      monthlyExpenses: _parseDouble(json['monthlyExpenses']),
      withdrawalRate: _parseDouble(json['withdrawalRate'] ?? 0.04),
      createdAt: _parseDateTime(json['createdAt']),
      updatedAt: _parseDateTime(json['updatedAt']),
    );
  }

  /// Parse DateTime from various formats (non-nullable, returns now if invalid)
  static DateTime _parseDateTime(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value) ?? DateTime.now();
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.now();
  }

  /// Parse DateTime from various formats (nullable)
  static DateTime? _parseDateTimeNullable(dynamic value) {
    if (value == null) return null;
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value);
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return null;
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
      'targetAmount': targetAmount,
      'targetDate': targetDate?.toIso8601String(),
      'monthlyExpenses': monthlyExpenses,
      'withdrawalRate': withdrawalRate,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  /// Copy with method
  FireGoal copyWith({
    double? targetAmount,
    DateTime? targetDate,
    double? monthlyExpenses,
    double? withdrawalRate,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool clearTargetDate = false,
  }) {
    return FireGoal(
      targetAmount: targetAmount ?? this.targetAmount,
      targetDate: clearTargetDate ? null : (targetDate ?? this.targetDate),
      monthlyExpenses: monthlyExpenses ?? this.monthlyExpenses,
      withdrawalRate: withdrawalRate ?? this.withdrawalRate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FireGoal &&
        other.targetAmount == targetAmount &&
        other.targetDate == targetDate &&
        other.monthlyExpenses == monthlyExpenses &&
        other.withdrawalRate == withdrawalRate &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return Object.hash(
      targetAmount,
      targetDate,
      monthlyExpenses,
      withdrawalRate,
      createdAt,
      updatedAt,
    );
  }

  @override
  String toString() {
    return 'FireGoal(targetAmount: $targetAmount, targetDate: $targetDate, monthlyExpenses: $monthlyExpenses, withdrawalRate: $withdrawalRate, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
