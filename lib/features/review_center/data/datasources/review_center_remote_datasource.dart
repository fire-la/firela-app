import 'package:firela_api/firela_api.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import '../../../../api/src/api_client.dart';
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
  ReviewCenterRemoteDatasource._() {
    _dio = ApiClient().dio;
  }
  static final ReviewCenterRemoteDatasource instance = ReviewCenterRemoteDatasource._();

  /// Dio client from ApiClientWrapper
  late final Dio _dio;

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

  /// Parse TxnStatus from JSON string
  TransactionDetailDtoStatusEnum _parseStatus(String? value) {
    if (value == null) return TransactionDetailDtoStatusEnum.ACTIVE;
    switch (value.toUpperCase()) {
      case 'VOIDED':
        return TransactionDetailDtoStatusEnum.VOIDED;
      case 'SUPERSEDED':
        return TransactionDetailDtoStatusEnum.SUPERSEDED;
      default:
        return TransactionDetailDtoStatusEnum.ACTIVE;
    }
  }

  /// Parse SourceType from JSON string
  TransactionDetailDtoSourceTypeEnum? _parseSourceType(String? value) {
    if (value == null) return null;
    switch (value.toUpperCase()) {
      case 'NLP':
        return TransactionDetailDtoSourceTypeEnum.NLP;
      case 'CSV':
        return TransactionDetailDtoSourceTypeEnum.CSV;
      case 'OCR':
        return TransactionDetailDtoSourceTypeEnum.OCR;
      case 'API':
        return TransactionDetailDtoSourceTypeEnum.API;
      default:
        return TransactionDetailDtoSourceTypeEnum.API;
    }
  }

  /// Parse TransactionFlag from JSON string
  TransactionDetailDtoFlagEnum? _parseFlag(String? value) {
    if (value == null) return null;
    switch (value) {
      case '*':
        return TransactionDetailDtoFlagEnum.CLEARED;
      case '!':
        return TransactionDetailDtoFlagEnum.PENDING;
      default:
        return null;
    }
  }

  /// Parse Posting from JSON map
  PostingDetailDto _parsePosting(Map<String, dynamic> json) {
    return PostingDetailDto((b) => b
      ..accountName = json['accountName'] as String? ?? json['account_name'] as String? ?? ''
      ..units = json['units'] as String? ?? '0'
      ..currency = json['currency'] as String? ?? 'CNY'
      ..accountId = json['accountId'] as String? ?? ''
      ..id = json['id'] as String? ?? ''
      ..costAmount = json['costAmount'] as String?
      ..costCurrency = json['costCurrency'] as String?
      ..costDate = json['costDate']?.toString()
      ..priceAmount = json['priceAmount'] as String?
      ..priceCurrency = json['priceCurrency'] as String?
      ..flag = json['flag'] as String?
    );
  }

  /// Parse TransactionDetailDto from JSON map
  TransactionDetailDto _parseTransactionDetail(Map<String, dynamic> json) {
    // Parse date as string
    final date = json['date']?.toString() ?? '';

    // Parse status
    final status = _parseStatus(json['status'] as String?);

    // Parse flag
    final flag = _parseFlag(json['flag'] as String?);

    // Parse postings
    final postings = <PostingDetailDto>[];
    final postingsJson = json['postings'] as List<dynamic>?;
    if (postingsJson != null) {
      for (final p in postingsJson) {
        if (p is Map<String, dynamic>) {
          postings.add(_parsePosting(p));
        }
      }
    }

    // Parse tags
    final tags = <String>[];
    final tagsJson = json['tags'] as List<dynamic>?;
    if (tagsJson != null) {
      for (final t in tagsJson) {
        if (t is String) tags.add(t);
      }
    }

    // Parse links
    final links = <String>[];
    final linksJson = json['links'] as List<dynamic>?;
    if (linksJson != null) {
      for (final l in linksJson) {
        if (l is String) links.add(l);
      }
    }

    return TransactionDetailDto((b) => b
      ..id = json['id'] as String? ?? ''
      ..date = date
      ..narration = json['narration'] as String? ?? ''
      ..status = status
      ..postings.replace(postings)
      ..flag = flag
      ..customFlag = json['customFlag'] as String? ?? json['custom_flag'] as String?
      ..payee = json['payee'] as String?
      ..tags.replace(tags)
      ..links.replace(links)
      ..sourceType = _parseSourceType(json['sourceType'] as String? ?? json['source_type'] as String?)
      ..sourcePlatform = json['sourcePlatform'] as String? ?? json['source_platform'] as String?
      ..createdAt = json['createdAt']?.toString() ?? ''
      ..voidedAt = json['voidedAt']?.toString()
      ..voidedBy = json['voidedBy'] as String? ?? json['voided_by'] as String?
      ..correctionReason = json['correctionReason'] as String? ?? json['correction_reason'] as String?
    );
  }

  /// Get paginated list of pending transactions with typed response
  /// API: GET /api/v1/{region}/bean/reviews
  /// Query params: type, confidenceLevel, sortBy, page, limit
  /// If [level] is null, returns all transactions (for "全部" tab)
  ///
  /// Returns typed [TransactionListResponseDto] for type-safe access.
  Future<TransactionListResponseDto> getPendingTransactionsTyped({
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

      logger.d('[ReviewCenter] Response type: ${response.data.runtimeType}');

      if (response.data == null) {
        logger.w('[ReviewCenter] Response data is null');
        return TransactionListResponseDto((b) => b
          ..data = ListBuilder<TransactionDetailDto>()
          ..total = 0);
      }

      // Parse response - handle both wrapped and direct list formats
      List<dynamic> items;
      int total = 0;

      if (response.data is Map<String, dynamic>) {
        // Wrapped format: { data: [...], total: n }
        final map = response.data as Map<String, dynamic>;
        logger.d('[ReviewCenter] Response map keys: ${map.keys.toList()}');

        // Try different possible field names for the data array
        List<dynamic>? dataList;
        for (final key in ['data', 'items', 'transactions', 'results', 'records']) {
          if (map[key] is List) {
            dataList = map[key] as List<dynamic>;
            logger.i('[ReviewCenter] Found data array in field: $key');
            break;
          }
        }
        items = dataList ?? [];
        total = map['total'] as int? ?? items.length;
        logger.i('[ReviewCenter] Parsed wrapped response: ${items.length} items, total=$total');
      } else if (response.data is List) {
        // Direct list format: [...]
        items = response.data as List<dynamic>;
        total = items.length;
        logger.i('[ReviewCenter] Parsed list response: ${items.length} items');
      } else {
        logger.w('[ReviewCenter] Unexpected response format: ${response.data.runtimeType}');
        return TransactionListResponseDto((b) => b
          ..data = ListBuilder<TransactionDetailDto>()
          ..total = 0);
      }

      // Parse each transaction detail
      final details = <TransactionDetailDto>[];
      for (final item in items) {
        if (item is Map<String, dynamic>) {
          try {
            final detail = _parseTransactionDetail(item);
            details.add(detail);
          } catch (e) {
            logger.w('[ReviewCenter] Failed to parse transaction item: $e');
          }
        }
      }

      logger.i('[ReviewCenter] Successfully parsed ${details.length} transactions');

      return TransactionListResponseDto((b) => b
        ..data = ListBuilder<TransactionDetailDto>(details)
        ..total = total);
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch pending transactions: ${e.message}');
      _handleDioError(e);
    }
  }

  /// Get raw pending transactions response (for TypeAdapter conversion)
  /// Returns the raw JSON map with 'items' array
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

    try {
      final response = await _dio.get(
        _basePath,
        queryParameters: queryParams,
      );

      if (response.data is Map<String, dynamic>) {
        return response.data as Map<String, dynamic>;
      }

      // If response is a list, wrap it
      if (response.data is List) {
        return {
          'items': response.data,
          'total': (response.data as List).length,
        };
      }

      return {'items': [], 'total': 0};
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch raw pending transactions: ${e.message}');
      _handleDioError(e);
    }
  }

  /// Get raw pending transaction detail (for TypeAdapter conversion)
  Future<Map<String, dynamic>> getRawPendingTransactionDetail(String id) async {
    logger.i('[ReviewCenter] Fetching raw transaction detail: $id');

    try {
      final response = await _dio.get('$_basePath/$id');
      return response.data as Map<String, dynamic>;
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch raw transaction detail: ${e.message}');
      _handleDioError(e);
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
    final typedResponse = await getPendingTransactionsTyped(
      level: level,
      page: page,
      limit: limit,
    );

    // Convert built_value to JSON map for backward compatibility
    return {
      'data': typedResponse.data.map((t) =>
        standardSerializers.serializeWith(TransactionDetailDto.serializer, t)
      ).toList(),
      'total': typedResponse.total,
      'limit': typedResponse.limit,
      'offset': typedResponse.offset,
    };
  }

  /// Get single pending transaction detail by ID (typed)
  /// API: GET /api/v1/{region}/bean/reviews/:id
  Future<TransactionDetailDto> getPendingTransactionDetailTyped(String id) async {
    logger.i('[ReviewCenter] Fetching transaction detail: $id');

    try {
      final response = await _dio.get('$_basePath/$id');
      return _parseTransactionDetail(response.data as Map<String, dynamic>);
    } on DioException catch (e) {
      logger.e('[ReviewCenter] Failed to fetch transaction detail: ${e.message}');
      _handleDioError(e);
    }
  }

  /// Get single pending transaction detail by ID (backward-compatible)
  /// API: GET /api/v1/{region}/bean/reviews/:id
  ///
  /// Note: Prefer [getPendingTransactionDetailTyped] for type-safe access.
  Future<dynamic> getPendingTransactionDetail(String id) async {
    final typed = await getPendingTransactionDetailTyped(id);
    return standardSerializers.serializeWith(
      TransactionDetailDto.serializer,
      typed,
    );
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
