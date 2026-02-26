import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../domain/models/confidence_level.dart';
import '../../data/repositories/review_center_repository.dart';
import '../signals/review_center_signal.dart';
import '../../../../core/utils/logger.dart';

/// State for a single tab's transactions
class TabState {
  const TabState({
    this.transactions = const [],
    this.isLoading = false,
    this.hasMore = true,
    this.page = 1,
    this.error,
  });

  final List<PendingTransaction> transactions;
  final bool isLoading;
  final bool hasMore;
  final int page;
  final String? error;

  TabState copyWith({
    List<PendingTransaction>? transactions,
    bool? isLoading,
    bool? hasMore,
    int? page,
    String? error,
  }) {
    return TabState(
      transactions: transactions ?? this.transactions,
      isLoading: isLoading ?? this.isLoading,
      hasMore: hasMore ?? this.hasMore,
      page: page ?? this.page,
      error: error,
    );
  }
}

/// Helper to remove transaction from state
TabState removeTransaction(TabState state, String id) {
  return state.copyWith(
    transactions: state.transactions.where((t) => t.id != id).toList(),
  );
}

/// Hook for managing Review Center state
ReviewCenterState useReviewCenter() {
  // State for each tab (null = all, then HIGH/MEDIUM/LOW)
  final allState = useState(const TabState());
  final highState = useState(const TabState());
  final mediumState = useState(const TabState());
  final lowState = useState(const TabState());

  // Current active tab
  final currentLevel = useState<ConfidenceLevel?>(null);

  // Get state for current tab
  ValueNotifier<TabState> getCurrentStateNotifier() {
    switch (currentLevel.value) {
      case ConfidenceLevel.high:
        return highState;
      case ConfidenceLevel.medium:
        return mediumState;
      case ConfidenceLevel.low:
        return lowState;
      case null:
        return allState;
    }
  }

  TabState getCurrentState() => getCurrentStateNotifier().value;

  // Update state for current tab
  void updateCurrentState(TabState newState) {
    getCurrentStateNotifier().value = newState;
  }

  // Load transactions (initial or refresh)
  Future<void> loadTransactions({bool refresh = false}) async {
    final state = getCurrentState();
    if (state.isLoading) return;

    updateCurrentState(state.copyWith(isLoading: true, error: null));

    try {
      final page = refresh ? 1 : state.page;
      final transactions = await ReviewCenterRepository.instance.getPendingTransactions(
        level: currentLevel.value,
        page: page,
        pageSize: 20,
      );

      final newTransactions = refresh
          ? transactions
          : [...state.transactions, ...transactions];

      updateCurrentState(state.copyWith(
        transactions: newTransactions,
        isLoading: false,
        hasMore: transactions.length >= 20,
        page: page + 1,
        error: null,
      ));

      // Update counts on refresh
      if (refresh || page == 1) {
        await fetchPendingCount();
      }
    } catch (e) {
      logger.e('[ReviewCenter] Failed to load transactions: $e');
      updateCurrentState(state.copyWith(
        isLoading: false,
        error: '加载失败，请重试',
      ));
    }
  }

  // Load more (pagination)
  Future<void> loadMore() async {
    final state = getCurrentState();
    if (state.isLoading || !state.hasMore) return;
    await loadTransactions();
  }

  // Change tab
  void changeTab(ConfidenceLevel? level) {
    if (currentLevel.value == level) return;
    currentLevel.value = level;

    // Load data for new tab if empty
    final state = getCurrentState();
    if (state.transactions.isEmpty && !state.isLoading) {
      loadTransactions(refresh: true);
    }
  }

  // Confirm transaction
  Future<bool> confirmTransaction(String id) async {
    try {
      await ReviewCenterRepository.instance.confirmTransaction(id);

      // Remove from all tabs
      allState.value = removeTransaction(allState.value, id);
      highState.value = removeTransaction(highState.value, id);
      mediumState.value = removeTransaction(mediumState.value, id);
      lowState.value = removeTransaction(lowState.value, id);

      // Update counts
      await fetchPendingCount();

      return true;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to confirm transaction: $e');
      return false;
    }
  }

  // Delete transaction
  Future<bool> deleteTransaction(String id) async {
    try {
      await ReviewCenterRepository.instance.deleteTransaction(id);

      // Remove from all tabs
      allState.value = removeTransaction(allState.value, id);
      highState.value = removeTransaction(highState.value, id);
      mediumState.value = removeTransaction(mediumState.value, id);
      lowState.value = removeTransaction(lowState.value, id);

      // Update counts
      await fetchPendingCount();

      return true;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to delete transaction: $e');
      return false;
    }
  }

  // Get count for a specific level
  int getCountForLevel(ConfidenceLevel? level) {
    final counts = pendingCountByLevelSignal.value;
    switch (level) {
      case ConfidenceLevel.high:
        return counts['high'] ?? 0;
      case ConfidenceLevel.medium:
        return counts['medium'] ?? 0;
      case ConfidenceLevel.low:
        return counts['low'] ?? 0;
      case null:
        return counts['total'] ?? 0;
    }
  }

  // Initial load
  useEffect(() {
    loadTransactions(refresh: true);
    return null;
  }, []);

  return ReviewCenterState(
    currentState: getCurrentState(),
    currentLevel: currentLevel.value,
    isLoading: getCurrentState().isLoading,
    hasMore: getCurrentState().hasMore,
    transactions: getCurrentState().transactions,
    error: getCurrentState().error,
    loadTransactions: loadTransactions,
    loadMore: loadMore,
    changeTab: changeTab,
    confirmTransaction: confirmTransaction,
    deleteTransaction: deleteTransaction,
    getCountForLevel: getCountForLevel,
  );
}

/// Return type for the hook
class ReviewCenterState {
  const ReviewCenterState({
    required this.currentState,
    required this.currentLevel,
    required this.isLoading,
    required this.hasMore,
    required this.transactions,
    this.error,
    required this.loadTransactions,
    required this.loadMore,
    required this.changeTab,
    required this.confirmTransaction,
    required this.deleteTransaction,
    required this.getCountForLevel,
  });

  final TabState currentState;
  final ConfidenceLevel? currentLevel;
  final bool isLoading;
  final bool hasMore;
  final List<PendingTransaction> transactions;
  final String? error;

  final Future<void> Function({bool refresh}) loadTransactions;
  final Future<void> Function() loadMore;
  final void Function(ConfidenceLevel?) changeTab;
  final Future<bool> Function(String) confirmTransaction;
  final Future<bool> Function(String) deleteTransaction;
  final int Function(ConfidenceLevel?) getCountForLevel;
}
