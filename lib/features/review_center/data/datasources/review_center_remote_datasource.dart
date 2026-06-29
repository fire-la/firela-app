import 'package:built_value/json_object.dart';
import 'package:firela_api/firela_api.dart' as gen;

import '../../../../api/api.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/models/review_type.dart';

/// Remote datasource for Review Center API calls.
///
/// Typed facade over the generated [gen.BeanReviewsApi] (via [FirelaApi]).
/// Region is pinned to the dev single-region (`cn`), matching the transactions
/// feature; a multi-region selector is a separate task.
class ReviewCenterRemoteDatasource {
  ReviewCenterRemoteDatasource._();
  static final ReviewCenterRemoteDatasource instance =
      ReviewCenterRemoteDatasource._();

  static const String _region = 'cn';

  /// GET /bean/reviews → ReviewListResponseDto (typed). Null when the backend
  /// responds with an empty body.
  Future<gen.ReviewListResponseDto?> getPendingTransactions({
    ReviewType? type,
    String? confidenceLevel,
    int page = 1,
    int limit = 20,
  }) async {
    try {
      final response = await FirelaApi().reviews.reviewControllerFindAll(
        region: _region,
        type: type?.wireValue,
        confidenceLevel: confidenceLevel,
        page: page,
        limit: limit,
      );
      return response.data;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch list: $e');
      rethrow;
    }
  }

  /// GET /bean/reviews/:id → ReviewDetailDto (typed).
  Future<gen.ReviewDetailDto?> getPendingTransactionDetail(String id) async {
    try {
      final response = await FirelaApi()
          .reviews
          .reviewControllerFindOne(region: _region, id: id);
      return response.data;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch detail $id: $e');
      rethrow;
    }
  }

  /// Confirm a pending transaction (ACCEPT).
  Future<void> confirmTransaction(String id) =>
      resolveReview(id, action: ReviewAction.accept.wireValue);

  /// POST /bean/reviews/:id/resolve {action, data?} → ResolveResultDto.
  /// `data` carries type-specific payload (e.g. chosenAccount for CHOOSE_OTHER).
  Future<gen.ResolveResultDto?> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await FirelaApi().reviews.reviewControllerResolve(
        region: _region,
        id: id,
        resolveReviewDto: gen.ResolveReviewDto((b) => b
          ..action = gen.ResolveReviewDtoActionEnum.valueOf(action)
          ..data = data == null ? null : JsonObject(data)),
      );
      logger.i('[ReviewCenter] Resolved $id action=$action');
      return response.data;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to resolve $id: $e');
      rethrow;
    }
  }

  /// POST /bean/reviews/batch-resolve {reviewIds, action, data?}.
  /// Rate-limited (5/min, max 50) — caller chunks larger sets.
  ///
  /// `results` (spec: string[], "Details for each item") is treated as the
  /// successfully-resolved ids and returned as [successIds] for per-item undo
  /// (IGN-287 item C). It's only trusted when its length matches `successCount`
  /// — otherwise callers fall back to full-success-only undo.
  Future<({int successCount, int failedCount, List<String> successIds})>
      batchResolve({
    required List<String> reviewIds,
    required String action,
    Map<String, dynamic>? data,
  }) async {
    logger.i('[ReviewCenter] Batch resolving ${reviewIds.length} reviews: '
        'action=$action');
    try {
      final response = await FirelaApi().reviews.reviewControllerBatchResolve(
        region: _region,
        batchResolveDto: gen.BatchResolveDto((b) => b
          ..reviewIds.replace(reviewIds)
          ..action = gen.BatchResolveDtoActionEnum.valueOf(action)
          ..data = data == null ? null : JsonObject(data)),
      );
      final dto = response.data;
      if (dto == null) {
        return (
          successCount: 0,
          failedCount: reviewIds.length,
          successIds: const <String>[],
        );
      }
      final success = dto.successCount.toInt();
      final results = dto.results.toList();
      // Trust `results` only when it's a subset of the requested ids AND its
      // length matches successCount — guards against the backend echoing
      // unrelated/duplicate ids into the undo set.
      final valid = results.where((id) => reviewIds.contains(id)).toList();
      final successIds =
          valid.length == success ? valid : const <String>[];
      return (
        successCount: success,
        failedCount: dto.failedCount.toInt(),
        successIds: successIds,
      );
    } catch (e) {
      logger.e('[ReviewCenter] Failed to batch resolve ($action): $e');
      rethrow;
    }
  }

  /// POST /bean/reviews/:id/undo. Swallows exceptions and returns false so the
  /// caller gets a simple boolean (it only needs success/failure).
  Future<bool> undoReview(String id) async {
    try {
      await FirelaApi()
          .reviews
          .reviewControllerUndo(region: _region, id: id);
      return true;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to undo $id: $e');
      return false;
    }
  }

  /// Delete a pending transaction (REJECT).
  Future<void> deleteTransaction(String id) =>
      resolveReview(id, action: ReviewAction.reject.wireValue);

  /// GET /bean/reviews/stats → ReviewStatsDto (typed).
  Future<gen.ReviewStatsDto?> getStats() async {
    try {
      final response = await FirelaApi()
          .reviews
          .reviewControllerGetStats(region: _region);
      return response.data;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch stats: $e');
      rethrow;
    }
  }
}
