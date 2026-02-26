import '../../domain/entities/pending_transaction.dart';
import '../../domain/repositories/review_center_repository_interface.dart';
import '../datasources/review_center_remote_datasource.dart';
import '../../domain/models/confidence_level.dart';
import '../models/pending_transaction_model.dart';
import '../../../../core/utils/logger.dart';

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
      final response = await _datasource.getPendingTransactions(
        level: level,
        page: page,
        pageSize: pageSize,
      );

      // Parse response and convert to entities
      final models = _datasource.parseTransactionList(response);
      return models.map((model) => model as PendingTransaction).toList();
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get pending transactions: $e');
      rethrow;
    }
  }

  @override
  Future<PendingTransaction> getPendingTransactionDetail(String id) async {
    try {
      final response = await _datasource.getPendingTransactionDetail(id);
      return PendingTransactionModel.fromJson(response as Map<String, dynamic>);
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
