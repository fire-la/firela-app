import '../../../../core/network/api_client.dart' as core;
import '../../../../core/utils/logger.dart';
import '../../domain/models/confidence_level.dart';

/// Remote datasource for Review Center API calls
/// Uses the core ApiClient with correct base URL and region routing.
class ReviewCenterRemoteDatasource {
  ReviewCenterRemoteDatasource._();
  static final ReviewCenterRemoteDatasource instance = ReviewCenterRemoteDatasource._();

  final _client = core.ApiClient.instance;

  /// Base path for Review Center endpoints (region-scoped, auto-routed)
  static const String _basePath = '/bean/reviews';

  /// Get raw pending transactions response
  /// API returns {"data": [...], "total": N} — we normalize to {"items": [...]}
  Future<Map<String, dynamic>> getRawPendingTransactions({
    ConfidenceLevel? level,
    String? type,
    int page = 1,
    int limit = 20,
  }) async {
    final queryParams = <String, String>{
      'page': page.toString(),
      'limit': limit.toString(),
    };

    if (level != null) {
      queryParams['confidenceLevel'] = level.name.toLowerCase();
    }
    if (type != null && type.isNotEmpty) {
      queryParams['type'] = type;
    }

    logger.i('[ReviewCenter] Fetching raw pending transactions: type=$type, level=$level, page=$page');

    final response = await _client.get(_basePath, queryParams: queryParams);

    if (response is Map<String, dynamic>) {
      // Normalize: API may return "data" or "items" key
      final items = response['items'] ?? response['data'] ?? response['transactions'];
      return {
        'items': items is List ? items : [],
        'total': response['total'] ?? (items is List ? items.length : 0),
      };
    }

    if (response is List) {
      return {'items': response, 'total': response.length};
    }

    return {'items': [], 'total': 0};
  }

  /// Get raw pending transaction detail
  Future<Map<String, dynamic>> getRawPendingTransactionDetail(String id) async {
    logger.i('[ReviewCenter] Fetching raw transaction detail: $id');
    final response = await _client.get('$_basePath/$id');
    return response as Map<String, dynamic>;
  }

  /// Confirm a pending transaction (records it as a regular transaction)
  /// POST /bean/reviews/:id/resolve with action: 'ACCEPT'
  Future<dynamic> confirmTransaction(String id) async {
    logger.i('[ReviewCenter] Confirming (accepting) transaction: $id');
    return await _client.post('$_basePath/$id/resolve', body: {'action': 'ACCEPT'});
  }

  /// Reject a pending transaction (undo/delete)
  /// POST /bean/reviews/:id/resolve with action: 'REJECT'
  Future<dynamic> rejectTransaction(String id) async {
    logger.i('[ReviewCenter] Rejecting transaction: $id');
    return await _client.post('$_basePath/$id/resolve', body: {'action': 'REJECT'});
  }

  /// Resolve a review with a decision action.
  /// POST /bean/reviews/:id/resolve {action, data?} → ResolveResultDto.
  /// `data` carries type-specific payload (e.g. chosenAccount for CHOOSE_OTHER).
  Future<Map<String, dynamic>> resolveReview(
    String id, {
    required String action,
    Map<String, dynamic>? data,
  }) async {
    logger.i('[ReviewCenter] Resolving review: $id action=$action');
    final body = <String, dynamic>{'action': action};
    if (data != null) body['data'] = data;
    final response = await _client.post('$_basePath/$id/resolve', body: body);
    return response is Map<String, dynamic>
        ? response
        : <String, dynamic>{};
  }

  /// Batch-resolve reviews of one type with a single action.
  /// POST /bean/reviews/batch-resolve {reviewIds[], action, data?}.
  /// Rate-limited (5/min, max 50) — caller chunks larger sets.
  Future<({int successCount, int failedCount})> batchResolve({
    required List<String> reviewIds,
    required String action,
    Map<String, dynamic>? data,
  }) async {
    logger.i('[ReviewCenter] Batch resolving ${reviewIds.length} reviews: action=$action');
    final body = <String, dynamic>{
      'reviewIds': reviewIds,
      'action': action,
      if (data != null) 'data': data,
    };
    final response = await _client.post('$_basePath/batch-resolve', body: body);
    if (response is Map<String, dynamic>) {
      return (
        successCount: (response['successCount'] as num?)?.toInt() ?? 0,
        failedCount: (response['failedCount'] as num?)?.toInt() ?? 0,
      );
    }
    logger.w('[ReviewCenter] Unexpected batch-resolve response for $action: $response');
    return (successCount: 0, failedCount: reviewIds.length);
  }

  /// Undo a single resolution within the 24h window.
  /// POST /bean/reviews/:id/undo.
  ///
  /// Unlike [batchResolve], this swallows exceptions and returns `false` on
  /// failure — callers get a simple boolean. (Chosen because the caller only
  /// needs success/failure, not the error detail.)
  Future<bool> undoReview(String id) async {
    logger.i('[ReviewCenter] Undoing review: $id');
    try {
      await _client.post('$_basePath/$id/undo');
      return true;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to undo review $id: $e');
      return false;
    }
  }

  /// Delete a pending transaction (reject)
  Future<void> deleteTransaction(String id) async {
    logger.i('[ReviewCenter] Deleting (rejecting) transaction: $id');
    await _client.post('$_basePath/$id/resolve', body: {'action': 'REJECT'});
  }

  /// Get pending review stats for badges/chips.
  /// GET /bean/reviews/stats → {total, byType}. Returned as a flat map:
  /// {'total': N, 'DUPLICATE': n, 'RULE_MATCH': n, ...}.
  Future<Map<String, int>> getPendingCount() async {
    logger.i('[ReviewCenter] Fetching pending stats');

    try {
      final response = await _client.get('$_basePath/stats');
      final result = <String, int>{'total': 0};

      if (response is Map<String, dynamic>) {
        result['total'] = (response['total'] as num?)?.toInt() ?? 0;
        final byType = response['byType'];
        if (byType is Map) {
          for (final entry in byType.entries) {
            result[entry.key.toString()] = (entry.value as num?)?.toInt() ?? 0;
          }
        }
      } else if (response is num) {
        result['total'] = response.toInt();
      }

      return result;
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending stats: $e');
      rethrow;
    }
  }
}
