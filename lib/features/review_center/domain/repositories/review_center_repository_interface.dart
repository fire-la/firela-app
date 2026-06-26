import '../entities/pending_transaction.dart';
import '../models/confidence_level.dart';

/// Repository interface for Review Center
abstract class ReviewCenterRepositoryInterface {
  /// Get paginated list of pending transactions.
  /// [type] filters by BranchType (DUPLICATE / RULE_MATCH / PAYEE_MATCH /
  /// ACCOUNT_VALIDATION / PIPELINE_ERROR); null = all types.
  Future<List<PendingTransaction>> getPendingTransactions({
    ConfidenceLevel? level,
    String? type,
    int page = 1,
    int pageSize = 20,
  });

  /// Get single pending transaction detail by ID
  Future<PendingTransaction> getPendingTransactionDetail(String id);

  /// Confirm a pending transaction (records it as a regular transaction)
  Future<void> confirmTransaction(String id);

  /// Resolve a review with a decision action.
  /// Returns the ResolveResultDto map (success, messageKey, canUndo, ...).
  Future<Map<String, dynamic>> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  });

  /// Batch-resolve reviews of the same type with one action.
  /// POST /bean/reviews/batch-resolve (rate-limited 5/min, max 50; caller
  /// chunks >50). Backend validates all IDs share a type.
  Future<({int successCount, int failedCount})> batchResolve({
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
  /// Flat map: {'total': N, 'DUPLICATE': n, 'RULE_MATCH': n, ...} — the type
  /// keys are the byType counts, 'total' is the grand total.
  Future<Map<String, int>> getPendingCount();
}
