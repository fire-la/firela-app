import 'package:flutter/material.dart';
import '../../domain/models/net_worth_history_point.dart';
import '../../domain/models/asset_distribution.dart';
import '../../domain/models/liability_breakdown.dart';
import '../../presentation/pages/assets_tabs_page.dart';

/// Service for aggregating and transforming dashboard data
/// Centralizes all data transformations for chart visualization
class DashboardAggregationService {
  DashboardAggregationService._();
  static final DashboardAggregationService instance = DashboardAggregationService._();

  /// Parse double from various types
  /// Follows pattern from assets_tabs_page.dart
  double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  /// Convert raw API response to list of NetWorthHistoryPoint
  /// [rawData] is an array of {date, netWorth, totalAssets, totalLiabilities} objects
  List<NetWorthHistoryPoint> aggregateNetWorthHistory(List<Map<String, dynamic>> rawData) {
    return rawData.map((item) {
      return NetWorthHistoryPoint(
        date: _parseDateTime(item['date']),
        netWorth: _parseDouble(item['netWorth']),
        totalAssets: _parseDouble(item['totalAssets']),
        totalLiabilities: _parseDouble(item['totalLiabilities']),
      );
    }).toList();
  }

  /// Calculate asset distribution by platform from account data
  /// Groups accounts by platform and calculates percentages
  List<AssetDistribution> calculateAssetDistribution(List<AccountData> accounts) {
    if (accounts.isEmpty) return [];

    // Group accounts by platform
    final platformTotals = <String, double>{};
    for (final account in accounts) {
      final platform = account.platform.isNotEmpty ? account.platform : 'Other';
      platformTotals[platform] = (platformTotals[platform] ?? 0) + account.balance.abs();
    }

    // Calculate total
    final total = platformTotals.values.fold(0.0, (sum, value) => sum + value);
    if (total == 0) return [];

    // Create distribution entries with colors
    final colors = _getDistributionColors(platformTotals.length);
    final distributions = <AssetDistribution>[];
    var index = 0;

    for (final entry in platformTotals.entries) {
      final percentage = (entry.value / total) * 100;
      distributions.add(AssetDistribution(
        category: entry.key,
        amount: entry.value,
        percentage: percentage,
        color: colors[index % colors.length],
      ));
      index++;
    }

    // Sort by amount descending
    distributions.sort((a, b) => b.amount.compareTo(a.amount));

    return distributions;
  }

  /// Calculate trend percentage from history data
  /// Returns percentage change from first to last data point
  /// Returns 0 if insufficient data
  double calculateTrendPercentage(List<NetWorthHistoryPoint> history) {
    if (history.length < 2) return 0.0;

    final first = history.first.netWorth;
    final last = history.last.netWorth;

    if (first == 0) return 0.0;

    return ((last - first) / first.abs()) * 100;
  }

  /// Get predefined colors for distribution chart
  List<Color> _getDistributionColors(int count) {
    const baseColors = [
      Color(0xFF000000),
      Color(0xFF444444),
      Color(0xFF666666),
      Color(0xFF888888),
      Color(0xFFAAAAAA),
      Color(0xFFBDBDBD),
      Color(0xFF2196F3),
      Color(0xFF4CAF50),
      Color(0xFFFF9800),
      Color(0xFFE91E63),
    ];

    if (count <= baseColors.length) {
      return baseColors.sublist(0, count);
    }

    // If more colors needed, generate variations
    final result = <Color>[...baseColors];
    for (var i = baseColors.length; i < count; i++) {
      final baseIndex = i % baseColors.length;
      final lightness = 0.3 + (i / count) * 0.4;
      result.add(_adjustColorLightness(baseColors[baseIndex], lightness));
    }
    return result;
  }

  /// Adjust color lightness
  Color _adjustColorLightness(Color color, double lightness) {
    final hsl = HSLColor.fromColor(color);
    return hsl.withLightness(lightness.clamp(0.0, 1.0)).toColor();
  }

  /// Parse DateTime from various formats
  DateTime _parseDateTime(dynamic value) {
    if (value == null) return DateTime.now();
    if (value is DateTime) return value;
    if (value is String) return DateTime.tryParse(value) ?? DateTime.now();
    if (value is int) return DateTime.fromMillisecondsSinceEpoch(value);
    return DateTime.now();
  }

  /// Calculate liability breakdown from accounts with negative balances
  /// Groups by platform/type and calculates percentages
  List<LiabilityBreakdown> calculateLiabilityBreakdown(List<AccountData> accounts) {
    if (accounts.isEmpty) return [];

    // Filter accounts with negative balances (liabilities)
    final liabilityAccounts = accounts.where((a) => a.balance < 0).toList();
    if (liabilityAccounts.isEmpty) return [];

    // Group by platform
    final platformTotals = <String, (double amount, int count)>{};
    for (final account in liabilityAccounts) {
      final platform = account.platform.isNotEmpty ? account.platform : 'Other';
      final existing = platformTotals[platform] ?? (0.0, 0);
      platformTotals[platform] = (
        existing.$1 + account.balance.abs(),
        existing.$2 + 1,
      );
    }

    // Calculate total
    final total = platformTotals.values.fold(0.0, (sum, item) => sum + item.$1);
    if (total == 0) return [];

    // Create breakdown entries
    final breakdowns = <LiabilityBreakdown>[];
    for (final entry in platformTotals.entries) {
      final percentage = (entry.value.$1 / total) * 100;
      breakdowns.add(LiabilityBreakdown(
        type: entry.key,
        amount: entry.value.$1,
        count: entry.value.$2,
        percentage: percentage,
      ));
    }

    // Sort by amount descending
    breakdowns.sort((a, b) => b.amount.compareTo(a.amount));

    return breakdowns;
  }
}
