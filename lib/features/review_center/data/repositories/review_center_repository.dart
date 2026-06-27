import '../../domain/entities/pending_transaction.dart';
import '../../domain/mappers/review_mappers.dart';
import '../../domain/models/confidence_level.dart';
import '../../domain/models/review_type.dart';
import '../../domain/repositories/review_center_repository_interface.dart';
import '../../../../core/utils/logger.dart';
import '../datasources/review_center_remote_datasource.dart';

/// Repository implementation for Review Center.
///
/// Maps generated DTOs (from the typed [ReviewCenterRemoteDatasource]) to domain
/// [PendingTransaction] entities via [review_mappers]. No raw Map handling — the
/// data layer is fully typed (IGN-287 clean migration).
class ReviewCenterRepository implements ReviewCenterRepositoryInterface {
  ReviewCenterRepository._();
  static final ReviewCenterRepository instance = ReviewCenterRepository._();

  final ReviewCenterRemoteDatasource _datasource =
      ReviewCenterRemoteDatasource.instance;

  @override
  Future<List<PendingTransaction>> getPendingTransactions({
    ConfidenceLevel? level,
    ReviewType? type,
    int page = 1,
    int pageSize = 20,
  }) async {
    try {
      final dto = await _datasource.getPendingTransactions(
        type: type,
        confidenceLevel: level?.name.toLowerCase(),
        page: page,
        limit: pageSize,
      );
      if (dto == null) return const [];
      return dto.items.map(toPendingTransaction).toList();
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get transactions: $e');
      rethrow;
    }
  }

  @override
  Future<PendingTransaction> getPendingTransactionDetail(String id) async {
    try {
      final dto = await _datasource.getPendingTransactionDetail(id);
      if (dto == null) {
        throw Exception('Review $id not found');
      }
      return toPendingTransactionFromDetail(dto);
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get detail $id: $e');
      rethrow;
    }
  }

  @override
  Future<void> confirmTransaction(String id) async {
    try {
      await _datasource.confirmTransaction(id);
      logger.i('[ReviewCenterRepository] Transaction confirmed: $id');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to confirm $id: $e');
      rethrow;
    }
  }

  @override
  Future<void> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  }) async {
    try {
      await _datasource.resolveReview(id, action: action, data: data);
      logger.i('[ReviewCenterRepository] Resolved $id action=$action');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to resolve $id: $e');
      rethrow;
    }
  }

  @override
  Future<({int successCount, int failedCount, List<String> successIds})>
      batchResolve({
    required List<String> reviewIds,
    required String action,
    Map<String, dynamic>? data,
  }) async {
    try {
      final result = await _datasource.batchResolve(
        reviewIds: reviewIds,
        action: action,
        data: data,
      );
      logger.i('[ReviewCenterRepository] Batch resolved (${result.successCount} '
          'ok, ${result.failedCount} failed)');
      return result;
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to batch resolve: $e');
      rethrow;
    }
  }

  @override
  Future<bool> undoReview(String id) async {
    // The datasource swallows exceptions and returns false here, so no try/catch.
    final ok = await _datasource.undoReview(id);
    logger.i('[ReviewCenterRepository] Undo $id: ${ok ? "ok" : "failed"}');
    return ok;
  }

  @override
  Future<void> deleteTransaction(String id) async {
    try {
      await _datasource.deleteTransaction(id);
      logger.i('[ReviewCenterRepository] Transaction deleted: $id');
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to delete $id: $e');
      rethrow;
    }
  }

  @override
  Future<Map<String, int>> getPendingCount() async {
    try {
      final stats = await _datasource.getStats();
      final result = <String, int>{'total': 0};
      if (stats == null) return result;
      result['total'] = stats.total.toInt();
      // byType is a free-form JSON object; read it as a plain map. Keys are
      // ReviewType wire values (DUPLICATE, RULE_MATCH, ...).
      if (stats.byType.isMap) {
        for (final entry in stats.byType.asMap.entries) {
          result[entry.key.toString()] = (entry.value as num?)?.toInt() ?? 0;
        }
      }
      return result;
    } catch (e) {
      logger.e('[ReviewCenterRepository] Failed to get stats: $e');
      rethrow;
    }
  }
}
