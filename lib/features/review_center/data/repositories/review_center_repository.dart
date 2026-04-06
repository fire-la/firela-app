import '../../domain/entities/pending_transaction.dart';
import '../../domain/repositories/review_center_repository_interface.dart';
import '../datasources/review_center_remote_datasource.dart';
import '../../domain/models/confidence_level.dart';
import '../../../../core/utils/logger.dart';
import '../../../../api/type_adapter.dart';

/// Repository implementation for Review Center
class ReviewCenterRepository implements ReviewCenterRepositoryInterface {
  ReviewCenterRepository._();
  static final ReviewCenterRepository instance = ReviewCenterRepository._();

  final ReviewCenterRemoteDatasource _datasource = ReviewCenterRemoteDatasource.instance;

  @override
  Future<List<PendingTransaction>> getPendingTransactions({
    ConfidenceLevel? level,
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      // Use raw API response for correct field mapping
      final response = await _datasource.getRawPendingTransactions(
        level: level,
        page: page,
        limit: pageSize,
      );

      // Parse items array using TypeAdapter for correct field mapping
      final items = response['items'] as List<dynamic>? ?? [];
      final models = TypeAdapter.toPendingTransactionListFromRaw(items);
      return models.map((model) => model as PendingTransaction).toList();
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get pending transactions: $e');
      rethrow;
    }
  }

  @override
  Future<PendingTransaction> getPendingTransactionDetail(String id) async {
    try {
      // Use raw API response for correct field mapping
      final response = await _datasource.getRawPendingTransactionDetail(id);
      return TypeAdapter.toPendingTransactionFromRaw(response);
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get transaction detail: $e');
      rethrow;
    }
  }

  @override
  Future<void> confirmTransaction(String id) async {
    try {
      await _datasource.confirmTransaction(id);
      logger.i('[ReviewCenterRepository] Transaction confirmed: $id');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to confirm transaction: $e');
      rethrow;
    }
  }

  @override
  Future<void> updateTransaction(String id, Map<String, dynamic> data) async {
    try {
      await _datasource.updateTransaction(id, data);
      logger.i('[ReviewCenterRepository] Transaction updated: $id');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to update transaction: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteTransaction(String id) async {
    try {
      await _datasource.deleteTransaction(id);
      logger.i('[ReviewCenterRepository] Transaction deleted: $id');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to delete transaction: $e');
      rethrow;
    }
  }

  @override
  Future<Map<String, int>> getPendingCount() async {
    try {
      return await _datasource.getPendingCount();
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get pending count: $e');
      rethrow;
    }
  }
}
