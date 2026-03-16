import '../../../../api/api_client.dart';
import '../../../../api/generated/openapi.dart';
import 'package:dio/dio.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/models/confidence_level.dart';
import '../models/pending_transaction_model.dart';

/// Remote datasource for Review Center API calls
///
/// This datasource uses typed API types from OpenAPI spec.
/// - Endpoints: /bean/reviews (region-scoped)
/// - ApiClientWrapper adds /v1/{region} prefix
/// - API docs: https://api-s.firela.io/api/docs-json
class ReviewCenterRemoteDatasource {
  ReviewCenterRemoteDatasource._();
  static final ReviewCenterRemoteDatasource instance = ReviewCenterRemoteDatasource._();

  /// Dio client from ApiClientWrapper
  late final Dio _dio;

  ReviewCenterRemoteDatasource() {
    _dio = ApiClientWrapper.instance.dio;
  }

  /// Base path for Review Center endpoints
  static const String _basePath = '/bean/reviews';

  /// Handle Dio errors and convert to domain exceptions
  Never _handleDioError(DioException e) {
    if (e.response?.statusCode == 401) {
      throw Exception('Login expired');
    }
    if (e.response?.statusCode == 404) {
      throw Exception('Transaction not found');
    }
    throw Exception(e.message ?? 'Network error');
  }

  /// Get paginated list of pending transactions with typed response
  /// API: GET /api/v1/{region}/bean/reviews
  /// Query params: type, confidenceLevel, sortBy, page, limit
  /// If [level] is null, returns all transactions (for "全部" tab)
  ///
  /// Returns typed [TransactionListResponse] for type-safe access.
  Future<TransactionListResponse> getPendingTransactionsTyped({
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

    logger.i('[ReviewCenter] Fetching pending transactions: level=$level, page=$page');

    try {
      final response = await _dio.get(
        _basePath,
        queryParameters: queryParams,
      );

      if (response.data == null) {
        return const TransactionListResponse(data: [], total: 0);
      }

      // Parse typed response
      if (response.data is Map<String, dynamic>) {
        return TransactionListResponse.fromJson(response.data);
      }

      // Fallback: wrap raw list
      if (response.data is List) {
        final items = response.data as List<dynamic>;
        return TransactionListResponse(
          data: items
              .whereType<Map<String, dynamic>>()
              .map((json) => TransactionDetail.fromJson(json))
              .toList(),
          total: items.length,
        );
      }

      return const TransactionListResponse(data: [], total: 0);
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending transactions: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Get paginated list of pending transactions (backward-compatible dynamic response)
  /// API: GET /api/v1/{region}/bean/reviews
  /// Query params: type, confidenceLevel, sortBy, page, limit
  /// If [level] is null, returns all transactions (for "全部" tab)
  ///
  /// Note: Prefer [getPendingTransactionsTyped] for type-safe access.
  Future<dynamic> getPendingTransactions({
    ConfidenceLevel? level,
    int page = 1,
    int limit = 20,
  }) async {
    // Use typed method and return raw data for backward compatibility
    final typedResponse = await getPendingTransactionsTyped(
      level: level,
      page: page,
      limit: limit,
    );

    // Return raw map for compatibility with existing code
    return {
      'data': typedResponse.data.map((t) => t.toJson()),
      'total': typedResponse.total,
      'limit': typedResponse.limit,
      'offset': typedResponse.offset,
    };
  }

  /// Get single pending transaction detail by ID (typed)
  /// API: GET /api/v1/{region}/bean/reviews/:id
  Future<TransactionDetail> getPendingTransactionDetailTyped(String id) async {
    logger.i('[ReviewCenter] Fetching transaction detail: $id');

    try {
      final response = await _dio.get('$_basePath/$id');
      return TransactionDetail.fromJson(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch transaction detail: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Get single pending transaction detail by ID (backward-compatible)
  /// API: GET /api/v1/{region}/bean/reviews/:id
  ///
  /// Note: Prefer [getPendingTransactionDetailTyped] for type-safe access.
  Future<dynamic> getPendingTransactionDetail(String id) async {
    final typed = await getPendingTransactionDetailTyped(id);
    return typed.toJson();
  }

  /// Accept a pending transaction (records it as a regular transaction)
  /// Alias for confirmTransaction for semantic clarity
  Future<dynamic> acceptTransaction(String id) async {
    return confirmTransaction(id);
  }

  /// Confirm a pending transaction (records it as a regular transaction)
  /// Uses POST /bean/reviews/:id/resolve with action: 'ACCEPT'
  Future<dynamic> confirmTransaction(String id) async {
    logger.i('[ReviewCenter] Confirming (accepting) transaction: $id');

    try {
      final response = await _dio.post(
        '$_basePath/$id/resolve',
        data: {'action': 'ACCEPT'},
      );
      return response.data;
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to confirm transaction: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Reject a pending transaction (undo/delete)
  /// Uses POST /bean/reviews/:id/resolve with action: 'REJECT'
  Future<dynamic> rejectTransaction(String id) async {
    logger.i('[ReviewCenter] Rejecting transaction: $id');

    try {
      final response = await _dio.post(
        '$_basePath/$id/resolve',
        data: {'action': 'REJECT'},
      );
      return response.data;
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to reject transaction: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Update a pending transaction
  Future<dynamic> updateTransaction(String id, Map<String, dynamic> data) async {
    logger.i('[ReviewCenter] Updating transaction: $id');

    try {
      final response = await _dio.put('$_basePath/$id', data: data);
      return response.data;
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to update transaction: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Delete a pending transaction (reject)
  /// Uses POST /bean/reviews/:id/resolve with action: 'REJECT'
  Future<void> deleteTransaction(String id) async {
    logger.i('[ReviewCenter] Deleting (rejecting) transaction: $id');

    try {
      await _dio.post(
        '$_basePath/$id/resolve',
        data: {'action': 'REJECT'},
      );
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to delete transaction: ${e.message}');
      _handleDioError(e);
      rethrow;
    }
  }

  /// Get pending count for badge (total and by type)
  /// Uses GET /bean/reviews/stats
  /// Returns a map with total, byType counts
  Future<Map<String, int>> getPendingCount() async {
    logger.i('[ReviewCenter] Fetching pending count');

    try {
      final response = await _dio.get('$_basePath/stats');

      // Handle various response formats
      // API returns: {total: number, byType: {DUPLICATE: number, RULE_MATCH: number, ...}}
      if (response.data is Map<String, dynamic>) {
        final byType = response.data['byType'] as Map<String, dynamic>? ?? {};
        return {
          'total': response.data['total'] as int? ?? 0,
          'high': byType['DUPLICATE'] as int? ?? 0,
          'medium': byType['RULE_MATCH'] as int? ?? byType['PAYEE_MATCH'] as int? ?? 0,
          'low': byType['ACCOUNT_VALIDATION'] as int? ?? byType['PIPELINE_ERROR'] as int? ?? 0,
        };
      }

      // If response is just a number, treat as total
      if (response.data is int) {
        return {
          'total': response.data,
          'high': 0,
          'medium': 0,
          'low': 0,
        };
      }

      return {'total': 0, 'high': 0, 'medium': 0, 'low': 0};
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending count: ${e.message}');
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
