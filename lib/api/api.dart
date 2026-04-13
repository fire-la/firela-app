/// Firela API Service - simple wrapper
///
/// This service provides a type-safe interface to the firela-vlt backend API
/// using the existing Dio setup.
library;

import 'package:dio/dio.dart';
import 'src/api_client.dart';
import 'src/region_types.dart';

/// API Error type alias
typedef FirelaApiException = DioException;

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

  /// Sync parsed bill transactions through the Provider Sync pipeline
  ///
  /// Sends client-parsed bill data through the full ingestion pipeline
  /// (dedup + rule matching + review center branching) via EntryMode.BATCH.
  ///
  /// [region] - Region code (e.g., 'us', 'cn', 'de')
  /// [sourceAccount] - Source account for the first posting (e.g., 'Assets:Bank:Chase')
  /// [defaultCurrency] - Default currency code (e.g., 'USD', 'CNY')
  /// [defaultExpenseAccount] - Default expense account (e.g., 'Expenses:Unknown')
  /// [defaultIncomeAccount] - Default income account (e.g., 'Income:Unknown')
  /// [transactions] - List of raw transaction maps in ParsedBillRawTransaction format
  ///
  /// Returns response with ProviderSyncResult:
  /// { imported, skipped, pendingReview, failed, importedTransactionIds?, reviewItemIds? }
  Future<Response> syncParsedBillTransactions(
    String region, {
    required String sourceAccount,
    required String defaultCurrency,
    required String defaultExpenseAccount,
    required String defaultIncomeAccount,
    required List<Map<String, dynamic>> transactions,
  }) async {
    return await _dio.post(
      '/$region/bean/import/provider/parsed-bill/sync',
      data: {
        'config': {
          'sourceAccount': sourceAccount,
          'defaultCurrency': defaultCurrency,
          'defaultExpenseAccount': defaultExpenseAccount,
          'defaultIncomeAccount': defaultIncomeAccount,
        },
        'transactions': transactions,
      },
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

/// Region API Service
///
/// Provides region metadata including hierarchy information.
/// Use this to get available regions and their configuration.
class RegionApi {
  final Dio _dio;

  RegionApi(this._dio);

  /// Get all user-facing regions with metadata
  ///
  /// Returns structured region info including hierarchy chains
  /// so the frontend can understand inheritance without exposing
  /// internal-only regions (like 'eu-core') as selectable options.
  ///
  /// Example response:
  /// ```json
  /// {
  ///   "regions": [
  ///     { "code": "cn", "displayName": "China", "chain": ["cn"], ... },
  ///     { "code": "us", "displayName": "United States", "chain": ["us"], ... },
  ///     { "code": "de", "displayName": "Germany", "parent": "eu-core",
  ///       "chain": ["eu-core", "de"], ... }
  ///   ]
  /// }
  /// ```
  Future<List<RegionInfo>> getRegions(String region) async {
    final response = await _dio.get('/$region/bean/account-standards/regions');
    final data = response.data as Map<String, dynamic>;
    final regions = data['regions'] as List<dynamic>;
    return regions
        .map((e) => RegionInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}

/// Firela API Service
///
/// Provides type-safe access to all firela-vlt backend APIs.
/// Uses the existing ApiClient singleton.
class FirelaApi {
  static final FirelaApi _instance = FirelaApi._internal();
  factory FirelaApi() => _instance;

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
  RegionApi get regions => RegionApi(_client.dio);
}
