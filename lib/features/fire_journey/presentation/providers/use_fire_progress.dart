import 'package:flutter/foundation.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../data/services/fire_calculation_service.dart';
import '../../data/services/fire_goal_storage.dart';
import '../../domain/models/fire_goal.dart';
import '../../domain/models/fire_milestone.dart';
import '../../domain/models/fire_progress.dart';
import '../widgets/milestone_badge.dart';

/// Result of the useFireProgress hook
class FireProgressResult {
  const FireProgressResult({
    this.progress,
    this.goal,
    this.journeyStartDate,
    this.milestones = const [],
    this.newlyAchievedMilestones = const [],
    this.isLoading = false,
    this.error,
    this.refresh,
  });

  /// FIRE progress data (null if no goal set)
  final FireProgress? progress;

  /// Current FIRE goal (null if no goal set)
  final FireGoal? goal;

  /// Date when FIRE journey started (for calculating days)
  final DateTime? journeyStartDate;

  /// Milestones with achievement status
  final List<FireMilestone> milestones;

  /// Newly achieved milestones (for celebration)
  final List<FireMilestone> newlyAchievedMilestones;

  /// Loading state
  final bool isLoading;

  /// Error message if any
  final String? error;

  /// Refresh function to reload data
  final Future<void> Function()? refresh;

  /// Whether there is no goal set
  bool get hasNoGoal => goal == null && !isLoading;

  /// Journey days count
  int get journeyDays {
    if (journeyStartDate == null) return 0;
    return DateTime.now().difference(journeyStartDate!).inDays;
  }

  /// Progress percentage for progress indicator (0.0 - 1.0)
  double get progressPercent {
    if (progress == null) return 0.0;
    return (progress!.progressPercentage / 100).clamp(0.0, 1.0);
  }

  /// Safety percentage (based on savings rate, capped at 0.8)
  double get safetyPercent {
    if (progress == null) return 0.0;
    return (progress!.savingsRate / 100 * 0.8).clamp(0.0, 0.8);
  }

  /// Current net worth formatted
  String get netAssetsFormatted => _formatCurrency(progress?.currentNetWorth ?? 0);

  /// Daily income/expense (approximated from monthly savings / 30)
  String get dailyIncomeFormatted {
    final monthlySavings = progress?.monthlySavings ?? 0;
    final dailyAmount = monthlySavings / 30;
    return _formatCurrency(dailyAmount);
  }

  /// Target amount formatted
  String get targetAmountFormatted => _formatCurrency(goal?.targetAmount ?? 0);

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

/// Hook for fetching and calculating FIRE progress
/// Fetches net worth from API and goal from storage,
/// then calculates progress using FireCalculationService
FireProgressResult useFireProgress() {
  final isLoading = useState(false);
  final error = useState<String?>(null);
  final progress = useState<FireProgress?>(null);
  final goal = useState<FireGoal?>(null);
  final journeyStartDate = useState<DateTime?>(null);
  final netWorth = useState<double>(0.0);
  final monthlyIncome = useState<double>(0.0);
  final monthlyExpenses = useState<double>(0.0);
  final milestones = useState<List<FireMilestone>>([]);
  final newlyAchievedMilestones = useState<List<FireMilestone>>([]);

  // Load data on mount
  useEffect(() {
    Future.microtask(() => _fetchData(
      isLoading: isLoading,
      error: error,
      progress: progress,
      goal: goal,
      journeyStartDate: journeyStartDate,
      netWorth: netWorth,
      monthlyIncome: monthlyIncome,
      monthlyExpenses: monthlyExpenses,
      milestones: milestones,
      newlyAchievedMilestones: newlyAchievedMilestones,
    ));
    return null;
  }, const []);

  // Refresh function
  Future<void> refresh() async {
    await _fetchData(
      isLoading: isLoading,
      error: error,
      progress: progress,
      goal: goal,
      journeyStartDate: journeyStartDate,
      netWorth: netWorth,
      monthlyIncome: monthlyIncome,
      monthlyExpenses: monthlyExpenses,
      milestones: milestones,
      newlyAchievedMilestones: newlyAchievedMilestones,
      forceRefresh: true,
    );
  }

  return FireProgressResult(
    progress: progress.value,
    goal: goal.value,
    journeyStartDate: journeyStartDate.value,
    milestones: milestones.value,
    newlyAchievedMilestones: newlyAchievedMilestones.value,
    isLoading: isLoading.value,
    error: error.value,
    refresh: refresh,
  );
}

/// Fetch all required data
Future<void> _fetchData({
  required ValueNotifier<bool> isLoading,
  required ValueNotifier<String?> error,
  required ValueNotifier<FireProgress?> progress,
  required ValueNotifier<FireGoal?> goal,
  required ValueNotifier<DateTime?> journeyStartDate,
  required ValueNotifier<double> netWorth,
  required ValueNotifier<double> monthlyIncome,
  required ValueNotifier<double> monthlyExpenses,
  required ValueNotifier<List<FireMilestone>> milestones,
  required ValueNotifier<List<FireMilestone>> newlyAchievedMilestones,
  bool forceRefresh = false,
}) async {
  if (!AuthManager.instance.isLoggedIn) {
    logger.i('[useFireProgress] Not logged in, skipping data load');
    return;
  }

  isLoading.value = true;
  error.value = null;

  try {
    // Parallel fetch: net worth, cash flow, and goal
    final results = await Future.wait([
      IgnApiService.instance.getNetWorth().catchError((e) {
        logger.w('[useFireProgress] getNetWorth failed: $e');
        return <String, dynamic>{};
      }),
      IgnApiService.instance.getCashFlow().catchError((e) {
        logger.w('[useFireProgress] getCashFlow failed: $e');
        return <String, dynamic>{};
      }),
      FireGoalStorage.instance.getGoal(forceRefresh: forceRefresh).catchError((e) {
        logger.w('[useFireProgress] getGoal failed: $e');
        return null;
      }),
      _loadJourneyStartDate(),
    ]);

    final netWorthData = results[0] as Map<String, dynamic>;
    final cashFlowData = results[1] as Map<String, dynamic>;
    final fireGoal = results[2] as FireGoal?;
    final journeyDate = results[3] as DateTime?;

    // Parse net worth
    if (netWorthData.containsKey('netWorth')) {
      netWorth.value = _parseDouble(netWorthData['netWorth']);
    }

    // Parse cash flow
    if (cashFlowData.isNotEmpty) {
      monthlyIncome.value = _parseDouble(cashFlowData['income']);
      final expense = _parseDouble(cashFlowData['expense']);
      // Use goal's monthly expenses if available, otherwise use actual
      monthlyExpenses.value = fireGoal?.monthlyExpenses ?? expense;
    } else if (fireGoal != null) {
      monthlyExpenses.value = fireGoal.monthlyExpenses;
    }

    // Update goal
    goal.value = fireGoal;
    journeyStartDate.value = journeyDate;

    // Calculate progress if goal exists
    if (fireGoal != null) {
      final calculatedProgress = FireCalculationService.instance.calculateFireProgress(
        currentNetWorth: netWorth.value,
        monthlyExpenses: monthlyExpenses.value,
        monthlyIncome: monthlyIncome.value,
        withdrawalRate: fireGoal.withdrawalRate,
      );

      progress.value = calculatedProgress;

      // Check milestones
      final newAchieved = await MilestoneService.instance.checkMilestones(
        netWorth.value,
        fireGoal.targetAmount,
      );
      newlyAchievedMilestones.value = newAchieved;

      // Get milestones with status
      final allMilestones = await MilestoneService.instance.getMilestonesWithStatus(
        netWorth.value,
        fireGoal.targetAmount,
      );
      milestones.value = allMilestones;

      logger.i(
        '[useFireProgress] Progress calculated: '
        'netWorth=${netWorth.value}, goal=${fireGoal.targetAmount}, '
        'progress=${calculatedProgress.progressPercentage.toStringAsFixed(1)}%, '
        'milestones=${allMilestones.where((m) => m.achieved).length}/${allMilestones.length}',
      );
    } else {
      progress.value = null;
      milestones.value = [];
      newlyAchievedMilestones.value = [];
      logger.i('[useFireProgress] No FIRE goal set');
    }
  } catch (e) {
    logger.e('[useFireProgress] Failed to fetch data: $e');
    error.value = e.toString();
  } finally {
    isLoading.value = false;
  }
}

/// Load journey start date from Hive
Future<DateTime?> _loadJourneyStartDate() async {
  try {
    final box = await Hive.openBox('fire_journey');
    final timestamp = box.get('journey_start_date');
    if (timestamp != null) {
      return DateTime.fromMillisecondsSinceEpoch(timestamp);
    }
    // If no start date exists, set today as start date
    final now = DateTime.now();
    await box.put('journey_start_date', now.millisecondsSinceEpoch);
    return now;
  } catch (e) {
    logger.e('[useFireProgress] Failed to load journey start date: $e');
    return null;
  }
}

/// Parse double from various types
double _parseDouble(dynamic value) {
  if (value == null) return 0.0;
  if (value is num) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}
