import 'package:flutter/material.dart';

/// Model for asset distribution by category
class AssetDistribution {
  const AssetDistribution({
    required this.category,
    required this.amount,
    required this.percentage,
    this.color,
  });

  /// Category name (e.g., platform name, account type)
  final String category;

  /// Amount in this category
  final double amount;

  /// Percentage of total assets (0-100)
  final double percentage;

  /// Optional color for chart visualization
  final Color? color;

  /// Create from JSON map
  factory AssetDistribution.fromJson(Map<String, dynamic> json) {
    return AssetDistribution(
      category: json['category'] as String? ?? '',
      amount: _parseDouble(json['amount']),
      percentage: _parseDouble(json['percentage']),
      color: json['color'] != null ? _parseColor(json['color']) : null,
    );
  }

  /// Parse double from various types
  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  /// Parse Color from int (0xFFRRGGBB) or hex string
  static Color _parseColor(dynamic value) {
    if (value is int) return Color(value);
    if (value is String) {
      final hex = value.replaceFirst('#', '');
      return Color(int.parse('FF$hex', radix: 16));
    }
    return Colors.grey;
  }

  /// Convert to JSON map
  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'amount': amount,
      'percentage': percentage,
      // ignore: deprecated_member_use
      'color': color?.value,
    };
  }

  /// Copy with method
  AssetDistribution copyWith({
    String? category,
    double? amount,
    double? percentage,
    Color? color,
  }) {
    return AssetDistribution(
      category: category ?? this.category,
      amount: amount ?? this.amount,
      percentage: percentage ?? this.percentage,
      color: color ?? this.color,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AssetDistribution &&
        other.category == category &&
        other.amount == amount &&
        other.percentage == percentage &&
        other.color == color;
  }

  @override
  int get hashCode {
    return Object.hash(category, amount, percentage, color);
  }

  @override
  String toString() {
    return 'AssetDistribution(category: $category, amount: $amount, percentage: $percentage, color: $color)';
  }
}
