import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';

/// Result from useHomeData hook
class HomeDataResult {
  const HomeDataResult({
    this.netWorth = 0.0,
    this.netWorthTrend = 0.0,
    this.monthlyIncome = 0.0,
    this.monthlyExpense = 0.0,
    this.lastSyncTime,
    this.isLoading = false,
    this.error,
    this.refresh,
  });

  /// Current net worth
  final double netWorth;

  /// Net worth trend percentage (change from previous period)
  final double netWorthTrend;

  /// Monthly income
  final double monthlyIncome;

  /// Monthly expense
  final double monthlyExpense;

  /// Last sync time
  final DateTime? lastSyncTime;

  /// Loading state
  final bool isLoading;

  /// Error message if any
  final String? error;

  /// Refresh function
  final Future<void> Function()? refresh;

  /// Check if data is empty
  bool get hasNoData => netWorth == 0.0 && !isLoading;

  /// Format net worth with currency
  String get netWorthFormatted => _formatCurrency(netWorth);

  /// Format trend with sign
  String get trendFormatted {
    if (netWorthTrend == 0) return '0%';
    final sign = netWorthTrend > 0 ? '+' : '';
    return '$sign${netWorthTrend.toStringAsFixed(1)}%';
  }

  static String _formatCurrency(double value) {
    if (value == 0) return '0.00';
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];

    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }

    return '${isNegative ? '-' : ''}${buffer.toString()}.$decPart';
  }
}

/// Hook for fetching home dashboard data
HomeDataResult useHomeData() {
  final isLoading = useState(false);
  final error = useState<String?>(null);
  final netWorth = useState<double>(0.0);
  final netWorthTrend = useState<double>(0.0);
  final monthlyIncome = useState<double>(0.0);
  final monthlyExpense = useState<double>(0.0);
  final lastSyncTime = useState<DateTime?>(null);

  // Load data on mount
  useEffect(() {
    Future.microtask(() => _fetchData(
          isLoading: isLoading,
          error: error,
          netWorth: netWorth,
          netWorthTrend: netWorthTrend,
          monthlyIncome: monthlyIncome,
          monthlyExpense: monthlyExpense,
          lastSyncTime: lastSyncTime,
        ));
    return null;
  }, const []);

  // Refresh function
  Future<void> refresh() async {
    await _fetchData(
      isLoading: isLoading,
      error: error,
      netWorth: netWorth,
      netWorthTrend: netWorthTrend,
      monthlyIncome: monthlyIncome,
      monthlyExpense: monthlyExpense,
      lastSyncTime: lastSyncTime,
      forceRefresh: true,
    );
  }

  return HomeDataResult(
    netWorth: netWorth.value,
    netWorthTrend: netWorthTrend.value,
    monthlyIncome: monthlyIncome.value,
    monthlyExpense: monthlyExpense.value,
    lastSyncTime: lastSyncTime.value,
    isLoading: isLoading.value,
    error: error.value,
    refresh: refresh,
  );
}

/// Fetch all required data
Future<void> _fetchData({
  required ValueNotifier<bool> isLoading,
  required ValueNotifier<String?> error,
  required ValueNotifier<double> netWorth,
  required ValueNotifier<double> netWorthTrend,
  required ValueNotifier<double> monthlyIncome,
  required ValueNotifier<double> monthlyExpense,
  required ValueNotifier<DateTime?> lastSyncTime,
  bool forceRefresh = false,
}) async {
  if (!AuthManager.instance.isLoggedIn) {
    logger.i('[useHomeData] Not logged in, skipping data load');
    return;
  }

  isLoading.value = true;
  error.value = null;

  try {
    // Parallel fetch: net worth and cash flow
    final results = await Future.wait([
      IgnApiService.instance.getNetWorth().catchError((e) {
        logger.w('[useHomeData] getNetWorth failed: $e');
        return <String, dynamic>{};
      }),
      IgnApiService.instance.getCashFlow().catchError((e) {
        logger.w('[useHomeData] getCashFlow failed: $e');
        return <String, dynamic>{};
      }),
    ]);

    final netWorthData = results[0];
    final cashFlowData = results[1];

    // Parse net worth
    if (netWorthData.containsKey('netWorth')) {
      netWorth.value = _parseDouble(netWorthData['netWorth']);
    }
    if (netWorthData.containsKey('trend')) {
      netWorthTrend.value = _parseDouble(netWorthData['trend']);
    }

    // Parse cash flow
    if (cashFlowData.isNotEmpty) {
      monthlyIncome.value = _parseDouble(cashFlowData['income']);
      monthlyExpense.value = _parseDouble(cashFlowData['expense']);
    }

    lastSyncTime.value = DateTime.now();

    logger.i(
      '[useHomeData] Data loaded: netWorth=${netWorth.value}, '
      'income=${monthlyIncome.value}, expense=${monthlyExpense.value}',
    );
  } catch (e) {
    logger.e('[useHomeData] Failed to fetch data: $e');
    error.value = e.toString();
  } finally {
    isLoading.value = false;
  }
}

/// Parse double from various types
double _parseDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}
