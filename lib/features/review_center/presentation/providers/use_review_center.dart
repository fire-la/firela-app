import 'package:flutter_hooks/flutter_hooks.dart';
import '../../domain/entities/pending_transaction.dart';
import '../../data/repositories/review_center_repository.dart';
import '../signals/review_center_signal.dart';
import '../../../../core/utils/logger.dart';

/// Review Center list state.
///
/// Filters by review type (`currentType`, null = all) instead of confidence
/// tabs, tracks recently-resolved ids for the per-item undo bar, and exposes
/// batch + single-inline resolution. The page reads [pendingCountByTypeSignal]
/// directly for chip counts.
class ReviewCenterState {
  const ReviewCenterState({
    required this.transactions,
    required this.isLoading,
    required this.hasMore,
    required this.currentType,
    required this.resolvedIds,
    required this.isBatchApplying,
    required this.hasError,
    required this.loadTransactions,
    required this.loadMore,
    required this.changeType,
    required this.resolveInline,
    required this.applyBatch,
    required this.undoLastResolved,
  });

  final List<PendingTransaction> transactions;
  final bool isLoading;
  final bool hasMore;
  final String? currentType;
  final List<String> resolvedIds;
  final bool isBatchApplying;
  final bool hasError;

  final Future<void> Function({bool refresh}) loadTransactions;
  final Future<void> Function() loadMore;
  final void Function(String?) changeType;
  final Future<bool> Function(String id, {required String action})
      resolveInline;
  final Future<({int successCount, int failedCount})> Function(String action)
      applyBatch;
  final Future<bool> Function() undoLastResolved;
}

/// Hook for managing Review Center list state.
ReviewCenterState useReviewCenter() {
  final transactions = useState<List<PendingTransaction>>(const []);
  final isLoading = useState(false);
  final hasMore = useState(true);
  final page = useState(1);
  final hasError = useState(false);
  final currentType = useState<String?>(null);
  final resolvedIds = useState<List<String>>(const []);
  final isBatchApplying = useState(false);
  final isUndoing = useState(false);
  // Monotonic request token: a forced refresh (applyBatch) supersedes an
  // in-flight scroll-triggered loadMore; the stale response is discarded so
  // its writes can't corrupt the refreshed list. `force` bypasses the guard
  // above but does NOT serialize — only this staleness check does.
  final generation = useState(0);

  Future<void> loadTransactions(
      {bool refresh = false, bool force = false}) async {
    if (isLoading.value && !force) return;
    generation.value++;
    final myGen = generation.value;
    isLoading.value = true;
    hasError.value = false;
    final nextPage = refresh ? 1 : page.value;
    try {
      final items =
          await ReviewCenterRepository.instance.getPendingTransactions(
        type: currentType.value,
        page: nextPage,
        pageSize: 20,
      );
      // A newer load (e.g. applyBatch's forced refresh) superseded this one —
      // discard our writes and leave isLoading to the newest owner.
      if (myGen != generation.value) return;
      transactions.value = refresh ? items : [...transactions.value, ...items];
      hasMore.value = items.length >= 20;
      page.value = nextPage + 1;
      if (refresh || nextPage == 1) {
        await fetchPendingCount();
      }
    } catch (e) {
      logger.e('[ReviewCenter] Failed to load transactions: $e');
      if (myGen == generation.value) hasError.value = true;
    } finally {
      if (myGen == generation.value) isLoading.value = false;
    }
  }

  Future<void> loadMore() async {
    if (isLoading.value || !hasMore.value) return;
    await loadTransactions();
  }

  void changeType(String? type) {
    if (currentType.value == type) return;
    currentType.value = type;
    transactions.value = const [];
    hasMore.value = true;
    page.value = 1;
    loadTransactions(refresh: true);
  }

  /// Resolve a single review inline (high-confidence light action). On success
  /// the item leaves the list and becomes undoable.
  Future<bool> resolveInline(String id, {required String action}) async {
    try {
      await ReviewCenterRepository.instance.resolveReview(id, action: action);
      transactions.value = transactions.value.where((t) => t.id != id).toList();
      resolvedIds.value = [...resolvedIds.value, id];
      await fetchPendingCount();
      return true;
    } catch (e) {
      logger.e('[ReviewCenter] Inline resolve failed: $e');
      return false;
    }
  }

  /// Batch-resolve every item in the current filter with one action. Chunks
  /// >50 (backend limit). Undo is offered only when the whole batch succeeded.
  Future<({int successCount, int failedCount})> applyBatch(
      String action) async {
    final ids = transactions.value.map((t) => t.id).toList();
    if (ids.isEmpty) return (successCount: 0, failedCount: 0);

    isBatchApplying.value = true;
    var success = 0;
    var failed = 0;
    try {
      for (var i = 0; i < ids.length; i += 50) {
        final chunk = ids.skip(i).take(50).toList();
        final r = await ReviewCenterRepository.instance.batchResolve(
          reviewIds: chunk,
          action: action,
        );
        success += r.successCount;
        failed += r.failedCount;
      }
      if (success == ids.length) {
        resolvedIds.value = [...resolvedIds.value, ...ids];
      }
      // Optimistically clear so resolved items leave the UI immediately. The
      // force-refresh bypasses the isLoading guard; a generation counter in
      // loadTransactions then discards any in-flight loadMore so its stale
      // writes can't corrupt the refreshed list.
      transactions.value = const [];
      await fetchPendingCount();
      await loadTransactions(refresh: true, force: true);
      return (successCount: success, failedCount: failed);
    } catch (e) {
      logger.e('[ReviewCenter] Batch resolve failed: $e');
      // Count any never-attempted ids as failed so the caller's
      // failedCount > 0 partial-failure toast still fires on a mid-loop throw.
      failed += ids.length - success - failed;
      await loadTransactions(refresh: true, force: true);
      return (successCount: success, failedCount: failed);
    } finally {
      isBatchApplying.value = false;
    }
  }

  /// Undo the most recently resolved item (one at a time). Backend has no batch undo.
  Future<bool> undoLastResolved() async {
    // Guard against rapid double-taps: both would read `.last` and undo the
    // same id twice. The bar has no per-tap loading state, so serialize here.
    if (resolvedIds.value.isEmpty || isUndoing.value) return false;
    isUndoing.value = true;
    try {
      final id = resolvedIds.value.last;
      final ok = await ReviewCenterRepository.instance.undoReview(id);
      if (ok) {
        // Reload before trimming so the restored item reappears in the list.
        // If the reload fails, the id stays in resolvedIds — the undo bar
        // remains visible and the user can pull-to-refresh to retry.
        await loadTransactions(refresh: true);
        resolvedIds.value =
            resolvedIds.value.sublist(0, resolvedIds.value.length - 1);
      }
      return ok;
    } finally {
      isUndoing.value = false;
    }
  }

  useEffect(() {
    loadTransactions(refresh: true);
    return null;
  }, []);

  return ReviewCenterState(
    transactions: transactions.value,
    isLoading: isLoading.value,
    hasMore: hasMore.value,
    currentType: currentType.value,
    resolvedIds: resolvedIds.value,
    isBatchApplying: isBatchApplying.value,
    hasError: hasError.value,
    loadTransactions: loadTransactions,
    loadMore: loadMore,
    changeType: changeType,
    resolveInline: resolveInline,
    applyBatch: applyBatch,
    undoLastResolved: undoLastResolved,
  );
}
