/// Model for FIRE progress tracking
class FireProgress {
  const FireProgress({
    required this.currentNetWorth,
    required this.fireNumber,
    required this.progressPercentage,
    this.yearsToFire,
    required this.monthlySavings,
    required this.savingsRate,
  });

  /// Current net worth
  final double currentNetWorth;

  /// Target FIRE number (25x annual expenses)
  final double fireNumber;

  /// Progress towards FIRE (0-100%)
  final double progressPercentage;

  /// Estimated years to reach FIRE (null if already achieved)
  final double? yearsToFire;

  /// Current monthly savings
  final double monthlySavings;

  /// Savings rate (percentage of income saved)
  final double savingsRate;

  /// Create from JSON map
  factory FireProgress.fromJson(Map<String, dynamic> json) {
    return FireProgress(
      currentNetWorth: _parseDouble(json['currentNetWorth']),
      fireNumber: _parseDouble(json['fireNumber']),
      progressPercentage: _parseDouble(json['progressPercentage']),
      yearsToFire: json['yearsToFire'] != null
          ? _parseDouble(json['yearsToFire'])
          : null,
      monthlySavings: _parseDouble(json['monthlySavings']),
      savingsRate: _parseDouble(json['savingsRate']),
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
      'currentNetWorth': currentNetWorth,
      'fireNumber': fireNumber,
      'progressPercentage': progressPercentage,
      'yearsToFire': yearsToFire,
      'monthlySavings': monthlySavings,
      'savingsRate': savingsRate,
    };
  }

  /// Copy with method
  FireProgress copyWith({
    double? currentNetWorth,
    double? fireNumber,
    double? progressPercentage,
    double? yearsToFire,
    double? monthlySavings,
    double? savingsRate,
    bool clearYearsToFire = false,
  }) {
    return FireProgress(
      currentNetWorth: currentNetWorth ?? this.currentNetWorth,
      fireNumber: fireNumber ?? this.fireNumber,
      progressPercentage: progressPercentage ?? this.progressPercentage,
      yearsToFire:
          clearYearsToFire ? null : (yearsToFire ?? this.yearsToFire),
      monthlySavings: monthlySavings ?? this.monthlySavings,
      savingsRate: savingsRate ?? this.savingsRate,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FireProgress &&
        other.currentNetWorth == currentNetWorth &&
        other.fireNumber == fireNumber &&
        other.progressPercentage == progressPercentage &&
        other.yearsToFire == yearsToFire &&
        other.monthlySavings == monthlySavings &&
        other.savingsRate == savingsRate;
  }

  @override
  int get hashCode {
    return Object.hash(
      currentNetWorth,
      fireNumber,
      progressPercentage,
      yearsToFire,
      monthlySavings,
      savingsRate,
    );
  }

  @override
  String toString() {
    return 'FireProgress(currentNetWorth: $currentNetWorth, fireNumber: $fireNumber, progressPercentage: $progressPercentage, yearsToFire: $yearsToFire, monthlySavings: $monthlySavings, savingsRate: $savingsRate)';
  }
}
