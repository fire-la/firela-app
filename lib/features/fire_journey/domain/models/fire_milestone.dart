/// Model for FIRE milestone tracking
class FireMilestone {
  const FireMilestone({
    required this.id,
    required this.name,
    required this.targetAmount,
    this.achieved = false,
    this.achievedDate,
  });

  /// Unique identifier for the milestone
  final String id;

  /// Display name of the milestone
  final String name;

  /// Target net worth for this milestone
  final double targetAmount;

  /// Whether this milestone has been achieved
  final bool achieved;

  /// Date when milestone was achieved (null if not achieved)
  final DateTime? achievedDate;

  /// Create from JSON map
  factory FireMilestone.fromJson(Map<String, dynamic> json) {
    return FireMilestone(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      targetAmount: _parseDouble(json['targetAmount']),
      achieved: json['achieved'] as bool? ?? false,
      achievedDate: _parseDateTime(json['achievedDate']),
    );
  }

  /// Parse DateTime from various formats
  static DateTime? _parseDateTime(dynamic value) {
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
      'id': id,
      'name': name,
      'targetAmount': targetAmount,
      'achieved': achieved,
      'achievedDate': achievedDate?.toIso8601String(),
    };
  }

  /// Copy with method
  FireMilestone copyWith({
    String? id,
    String? name,
    double? targetAmount,
    bool? achieved,
    DateTime? achievedDate,
    bool clearAchievedDate = false,
  }) {
    return FireMilestone(
      id: id ?? this.id,
      name: name ?? this.name,
      targetAmount: targetAmount ?? this.targetAmount,
      achieved: achieved ?? this.achieved,
      achievedDate:
          clearAchievedDate ? null : (achievedDate ?? this.achievedDate),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FireMilestone &&
        other.id == id &&
        other.name == name &&
        other.targetAmount == targetAmount &&
        other.achieved == achieved &&
        other.achievedDate == achievedDate;
  }

  @override
  int get hashCode {
    return Object.hash(id, name, targetAmount, achieved, achievedDate);
  }

  @override
  String toString() {
    return 'FireMilestone(id: $id, name: $name, targetAmount: $targetAmount, achieved: $achieved, achievedDate: $achievedDate)';
  }
}
