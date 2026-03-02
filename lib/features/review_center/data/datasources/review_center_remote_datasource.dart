import '../../../../core/network/api_client.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/models/confidence_level.dart';
import '../models/pending_transaction_model.dart';

/// Remote datasource for Review Center API calls
/// Endpoints: /bean/review-center (region-scoped, ApiClient adds /v1/{region} prefix)
class ReviewCenterRemoteDatasource {
  ReviewCenterRemoteDatasource._();
  static final ReviewCenterRemoteDatasource instance = ReviewCenterRemoteDatasource._();

  /// Base path for Review Center endpoints
  /// ApiClient._buildUrl() will construct: /api/v1/{region}/bean/review-center
  static const String _basePath = '/bean/review-center';

  /// Get paginated list of pending transactions
  /// If [level] is null, returns all transactions (for "全部" tab)
  Future<dynamic> getPendingTransactions({
    ConfidenceLevel? level,
    int page = 1,
    int pageSize = 20,
  }) async {
    final queryParams = <String, String>{
      'page': page.toString(),
      'page_size': pageSize.toString(),
    };

    if (level != null) {
      queryParams['confidence_level'] = level.name.toUpperCase();
    }

    logger.i('[ReviewCenter] Fetching pending transactions: level=$level, page=$page');

    try {
      return await ApiClient.instance.get(_basePath, queryParams: queryParams);
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending transactions: $e');
      rethrow;
    }
  }

  /// Get single pending transaction detail by ID
  Future<dynamic> getPendingTransactionDetail(String id) async {
    logger.i('[ReviewCenter] Fetching transaction detail: $id');

    try {
      return await ApiClient.instance.get('$_basePath/$id');
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch transaction detail: $e');
      rethrow;
    }
  }

  /// Accept a pending transaction (records it as a regular transaction)
  /// Alias for confirmTransaction for semantic clarity
  Future<dynamic> acceptTransaction(String id) async {
    return confirmTransaction(id);
  }

  /// Confirm a pending transaction (records it as a regular transaction)
  /// Uses POST /bean/review-center/:id/accept
  Future<dynamic> confirmTransaction(String id) async {
    logger.i('[ReviewCenter] Confirming (accepting) transaction: $id');

    try {
      return await ApiClient.instance.post('$_basePath/$id/accept');
    } catch (e) {
      logger.e('[ReviewCenter] Failed to confirm transaction: $e');
      rethrow;
    }
  }

  /// Reject a pending transaction
  Future<dynamic> rejectTransaction(String id) async {
    logger.i('[ReviewCenter] Rejecting transaction: $id');

    try {
      return await ApiClient.instance.post('$_basePath/$id/reject');
    } catch (e) {
      logger.e('[ReviewCenter] Failed to reject transaction: $e');
      rethrow;
    }
  }

  /// Update a pending transaction
  Future<dynamic> updateTransaction(String id, Map<String, dynamic> data) async {
    logger.i('[ReviewCenter] Updating transaction: $id');

    try {
      return await ApiClient.instance.put('$_basePath/$id', body: data);
    } catch (e) {
      logger.e('[ReviewCenter] Failed to update transaction: $e');
      rethrow;
    }
  }

  /// Delete a pending transaction
  Future<void> deleteTransaction(String id) async {
    logger.i('[ReviewCenter] Deleting transaction: $id');

    try {
      await ApiClient.instance.delete('$_basePath/$id');
    } catch (e) {
      logger.e('[ReviewCenter] Failed to delete transaction: $e');
      rethrow;
    }
  }

  /// Get pending count for badge (total and by level)
  /// Returns a map with total, high, medium, low counts
  Future<Map<String, int>> getPendingCount() async {
    logger.i('[ReviewCenter] Fetching pending count');

    try {
      final response = await ApiClient.instance.get('$_basePath/count');

      // Handle various response formats
      if (response is Map<String, dynamic>) {
        return {
          'total': response['total'] as int? ?? 0,
          'high': response['high'] as int? ?? response['HIGH'] as int? ?? 0,
          'medium': response['medium'] as int? ?? response['MEDIUM'] as int? ?? 0,
          'low': response['low'] as int? ?? response['LOW'] as int? ?? 0,
        };
      }

      // If response is just a number, treat as total
      if (response is int) {
        return {
          'total': response,
          'high': 0,
          'medium': 0,
          'low': 0,
        };
      }

      return {'total': 0, 'high': 0, 'medium': 0, 'low': 0};
    } catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending count: $e');
      rethrow;
    }
  }

  /// Parse pending transaction list from API response
  List<PendingTransactionModel> parseTransactionList(dynamic response) {
    if (response == null) return [];

    // Handle various response formats
    List<dynamic> items;
    if (response is List) {
      items = response;
    } else if (response is Map<String, dynamic>) {
      items = response['items'] ?? response['data'] ?? response['transactions'] ?? [];
    } else {
      return [];
    }

    return items
        .whereType<Map<String, dynamic>>()
        .map((json) => PendingTransactionModel.fromJson(json))
        .toList();
  }
}
