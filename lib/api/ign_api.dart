/// IGN API Service - simple wrapper
///
/// This service provides a type-safe interface to the IGN backend API
/// using the existing Dio setup.
library;

import 'package:dio/dio.dart';
import 'api_client.dart';

/// API Error type alias
typedef IgnApiException = DioException;

/// Transaction API Service
class TransactionApi {
  final Dio _dio;

  TransactionApi(this._dio);

  /// List transactions for a region
  Future<Response> listTransactions(
    String region, {
    int? limit,
    String? cursor,
    String? dateStart,
    String? dateEnd,
  }) async {
    return await _dio.get('/$region/bean/transactions', queryParameters: {
      'limit': limit,
      'cursor': cursor,
      'date_start': dateStart,
      'date_end': dateEnd,
    });
  }

  /// Get a single transaction
  Future<Response> getTransaction(String region, String id) async {
    return await _dio.get('/$region/bean/transactions/$id');
  }

  /// Batch create transactions
  Future<Response> batchCreateTransactions(
    String region, {
    required List<Map<String, dynamic>> transactions,
  }) async {
    return await _dio.post(
      '/$region/bean/transactions/batch',
      data: {'transactions': transactions},
    );
  }
}

/// Account API Service
class AccountApi {
  final Dio _dio;

  AccountApi(this._dio);

  /// List all accounts for a region
  Future<Response> listAccounts(String region) async {
    return await _dio.get('/$region/bean/accounts');
  }

  /// Get a single account
  Future<Response> getAccount(String region, String id) async {
    return await _dio.get('/$region/bean/accounts/$id');
  }
}

/// Commodity API Service
class CommodityApi {
  final Dio _dio;

  CommodityApi(this._dio);

  /// List all commodities for a region
  Future<Response> listCommodities(String region) async {
    return await _dio.get('/$region/bean/commodities');
  }
}

/// Price API Service
class PriceApi {
  final Dio _dio;

  PriceApi(this._dio);

  /// List all prices for a region
  Future<Response> listPrices(
    String region, {
    String? baseCurrency,
    String? quoteCurrency,
  }) async {
    return await _dio.get('/$region/bean/prices', queryParameters: {
      'base_currency': baseCurrency,
      'quote_currency': quoteCurrency,
    });
  }
}

/// Balance API Service
class BalanceApi {
  final Dio _dio;

  BalanceApi(this._dio);

  /// Get balance for a region
  Future<Response> getBalances(
    String region, {
    String? date,
    List<String>? account,
  }) async {
    return await _dio.get('/$region/bean/balances', queryParameters: {
      'date': date,
      'account': account,
    });
  }
}

/// Health API Service
class HealthApi {
  final Dio _dio;

  HealthApi(this._dio);

  /// Check API health
  Future<Response> checkHealth() async {
    return await _dio.get('/health');
  }
}

/// IGN API Service
///
/// Provides type-safe access to all IGN backend APIs.
/// Uses the existing ApiClient singleton.
class IgnApi {
  static final IgnApi _instance = IgnApi._internal();
  factory IgnApi() => _instance;

  final ApiClient _client = ApiClient();

  IgnApi._internal();

  /// Get the base URL
  String get baseUrl => _client.dio.options.baseUrl;

  /// Update auth token (sets Bearer token)
  void setAuthToken(String token) {
    _client.setAuthToken(token);
  }

  /// Clear auth token
  void clearAuthToken() {
    _client.clearAuthToken();
  }

  // === API instances ===

  TransactionApi get transactions => TransactionApi(_client.dio);
  AccountApi get accounts => AccountApi(_client.dio);
  CommodityApi get commodities => CommodityApi(_client.dio);
  PriceApi get prices => PriceApi(_client.dio);
  BalanceApi get balances => BalanceApi(_client.dio);
  HealthApi get health => HealthApi(_client.dio);
}
