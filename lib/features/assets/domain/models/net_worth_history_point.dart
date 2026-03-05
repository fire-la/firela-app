/// Model for a single point in net worth history time series
class NetWorthHistoryPoint {
  const NetWorthHistoryPoint({
    required this.date,
    required this.netWorth,
    required this.totalAssets,
    required this.totalLiabilities,
  });

  /// Date of the data point
  final DateTime date;

  /// Net worth (assets - liabilities) at this date
  final double netWorth;

  /// Total assets at this date
  final double totalAssets;

  /// Total liabilities at this date
  final double totalLiabilities;

  /// Create from JSON map
  factory NetWorthHistoryPoint.fromJson(Map<String, dynamic> json) {
    return NetWorthHistoryPoint(
      date: _parseDateTime(json['date']),
      netWorth: _parseDouble(json['netWorth']),
      totalAssets: _parseDouble(json['totalAssets']),
      totalLiabilities: _parseDouble(json['totalLiabilities']),
    );
  }

  /// Parse DateTime from various formats
  static DateTime _parseDateTime(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value) ?? DateTime.now();
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.now();
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
      'date': date.toIso8601String(),
      'netWorth': netWorth,
      'totalAssets': totalAssets,
      'totalLiabilities': totalLiabilities,
    };
  }

  /// Copy with method
  NetWorthHistoryPoint copyWith({
    DateTime? date,
    double? netWorth,
    double? totalAssets,
    double? totalLiabilities,
  }) {
    return NetWorthHistoryPoint(
      date: date ?? this.date,
      netWorth: netWorth ?? this.netWorth,
      totalAssets: totalAssets ?? this.totalAssets,
      totalLiabilities: totalLiabilities ?? this.totalLiabilities,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NetWorthHistoryPoint &&
        other.date == date &&
        other.netWorth == netWorth &&
        other.totalAssets == totalAssets &&
        other.totalLiabilities == totalLiabilities;
  }

  @override
  int get hashCode {
    return Object.hash(date, netWorth, totalAssets, totalLiabilities);
  }

  @override
  String toString() {
    return 'NetWorthHistoryPoint(date: $date, netWorth: $netWorth, totalAssets: $totalAssets, totalLiabilities: $totalLiabilities)';
  }
}
