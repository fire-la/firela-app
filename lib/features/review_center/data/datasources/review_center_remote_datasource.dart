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

    logger.i('[ReviewCenter] Fetching raw pending transactions: level=$level, page=$page');

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

  /// Delete a pending transaction (reject)
  Future<void> deleteTransaction(String id) async {
    logger.i('[ReviewCenter] Deleting (rejecting) transaction: $id');
    await _client.post('$_basePath/$id/resolve', body: {'action': 'REJECT'});
  }

  /// Get pending count for badge
  /// GET /bean/reviews/stats
  Future<Map<String, int>> getPendingCount() async {
    logger.i('[ReviewCenter] Fetching pending count');

    try {
      final response = await _client.get('$_basePath/stats');

      if (response is Map<String, dynamic>) {
        final byType = response['byType'] as Map<String, dynamic>? ?? {};
        return {
          'total': response['total'] as int? ?? 0,
          'high': byType['DUPLICATE'] as int? ?? 0,
          'medium': byType['RULE_MATCH'] as int? ?? byType['PAYEE_MATCH'] as int? ?? 0,
          'low': byType['ACCOUNT_VALIDATION'] as int? ?? byType['PIPELINE_ERROR'] as int? ?? 0,
        };
      }

      if (response is int) {
        return {'total': response, 'high': 0, 'medium': 0, 'low': 0};
      }

      return {'total': 0, 'high': 0, 'medium': 0, 'low': 0};
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending count: $e');
      rethrow;
    }
  }
}
