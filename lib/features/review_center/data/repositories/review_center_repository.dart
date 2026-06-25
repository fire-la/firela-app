import '../../domain/entities/pending_transaction.dart';
import '../../domain/repositories/review_center_repository_interface.dart';
import '../datasources/review_center_remote_datasource.dart';
import '../../domain/models/confidence_level.dart';
import '../../../../core/utils/logger.dart';
import '../models/pending_transaction_model.dart';

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

      // Parse items array
      final items = response['items'] as List<dynamic>? ?? [];
      final models = items
          .whereType<Map<String, dynamic>>()
          .map((json) => PendingTransactionModel.fromJson(json))
          .toList();
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
      return PendingTransactionModel.fromJson(response);
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
  Future<Map<String, dynamic>> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  }) async {
    try {
      final result = await _datasource.resolveReview(
        id,
        action: action,
        data: data,
      );
      logger.i('[ReviewCenterRepository] Review resolved: $id action=$action');
      return result;
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to resolve review: $e');
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
