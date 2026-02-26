import '../entities/pending_transaction.dart';
import '../models/confidence_level.dart';

/// Repository interface for Review Center
abstract class ReviewCenterRepositoryInterface {
  /// Get paginated list of pending transactions
  Future<List<PendingTransaction>> getPendingTransactions({
    ConfidenceLevel? level,
    int page = 1,
    int pageSize = 20,
  });

  /// Get single pending transaction detail by ID
  Future<PendingTransaction> getPendingTransactionDetail(String id);

  /// Confirm a pending transaction (records it as a regular transaction)
  Future<void> confirmTransaction(String id);

  /// Update a pending transaction
  Future<void> updateTransaction(String id, Map<String, dynamic> data);

  /// Delete a pending transaction
  Future<void> deleteTransaction(String id);

  /// Get pending count for badge
  /// Returns a map with total, high, medium, low counts
  Future<Map<String, int>> getPendingCount();
}
