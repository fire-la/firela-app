import '../entities/pending_transaction.dart';
import '../models/confidence_level.dart';
import '../models/review_type.dart';

/// Repository interface for Review Center
abstract class ReviewCenterRepositoryInterface {
  /// Get paginated list of pending transactions.
  /// [type] filters by [ReviewType]; null = all types.
  Future<List<PendingTransaction>> getPendingTransactions({
    ConfidenceLevel? level,
    ReviewType? type,
    int page = 1,
    int pageSize = 20,
  });

  /// Get single pending transaction detail by ID
  Future<PendingTransaction> getPendingTransactionDetail(String id);

  /// Confirm a pending transaction (records it as a regular transaction)
  Future<void> confirmTransaction(String id);

  /// Resolve a review with a decision action. Throws on failure.
  ///
  /// [action] is the raw wire value (IGNORE_NEW, ACCEPT, CHOOSE_OTHER, ...).
  /// Kept as a string rather than [ReviewAction] because the detail page sends
  /// backend-defined `decisionOptions[].value`, which is an open set.
  Future<void> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  });

  /// Batch-resolve reviews of the same type with one action.
  /// POST /bean/reviews/batch-resolve (rate-limited 5/min, max 50; caller
  /// chunks >50). Backend validates all IDs share a type.
  ///
  /// [successIds] are the ids the backend reports as resolved (from
  /// `BatchResolveResultDto.results`) — used to record per-item undo even on
  /// partial success (IGN-287 item C). Empty when the backend omits `results`
  /// or it can't be interpreted; callers fall back to full-success-only undo.
  Future<({int successCount, int failedCount, List<String> successIds})>
      batchResolve({
    required List<String> reviewIds,
    required String action,
    Map<String, dynamic>? data,
  });

  /// Undo a single resolution within the 24h window.
  /// POST /bean/reviews/:id/undo. Returns true on success.
  Future<bool> undoReview(String id);

  /// Delete a pending transaction
  Future<void> deleteTransaction(String id);

  /// Get pending review stats for badges/chips.
  /// Flat map: {'total': N, '<ReviewType.wireValue>': n, ...} — the type
  /// keys are the byType counts, 'total' is the grand total.
  Future<Map<String, int>> getPendingCount();
}
