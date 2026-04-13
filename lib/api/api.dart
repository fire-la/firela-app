/// Firela API Service - type-safe interface to firela-vlt backend
///
/// Provides typed access to all backend API endpoints.
/// Response models are defined in src/responses.dart.
library;

import 'package:dio/dio.dart';
import 'src/api_client.dart';
import 'src/region_types.dart';
import 'src/responses.dart';

/// API Error type alias
typedef FirelaApiException = DioException;

/// Transaction API Service
class TransactionApi {
  final Dio _dio;

  TransactionApi(this._dio);

  /// List transactions for a region
  Future<TransactionListResponse> listTransactions(
    String region, {
    int? limit,
    String? cursor,
    String? dateStart,
    String? dateEnd,
  }) async {
    final response = await _dio.get('/$region/bean/transactions', queryParameters: {
      'limit': limit,
      'cursor': cursor,
      'date_start': dateStart,
      'date_end': dateEnd,
    });
    return TransactionListResponse.fromJson(response.data as Map<String, dynamic>);
  }

  /// Get a single transaction
  Future<TransactionDetail> getTransaction(String region, String id) async {
    final response = await _dio.get('/$region/bean/transactions/$id');
    return TransactionDetail.fromJson(response.data as Map<String, dynamic>);
  }

  /// Batch create transactions
  Future<BatchTransactionResponse> batchCreateTransactions(
    String region, {
    required List<Map<String, dynamic>> transactions,
  }) async {
    final response = await _dio.post(
      '/$region/bean/transactions/batch',
      data: {'transactions': transactions},
    );
    return BatchTransactionResponse.fromJson(response.data as Map<String, dynamic>);
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
  Future<ProviderSyncResult> syncParsedBillTransactions(
    String region, {
    required String sourceAccount,
    required String defaultCurrency,
    required String defaultExpenseAccount,
    required String defaultIncomeAccount,
    required List<Map<String, dynamic>> transactions,
  }) async {
    final response = await _dio.post(
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
    return ProviderSyncResult.fromJson(response.data as Map<String, dynamic>);
  }
}

/// Account API Service
class AccountApi {
  final Dio _dio;

  AccountApi(this._dio);

  /// List all accounts for a region
  Future<AccountListResponse> listAccounts(String region) async {
    final response = await _dio.get('/$region/bean/accounts');
    return AccountListResponse.fromJson(response.data as Map<String, dynamic>);
  }

  /// Get a single account
  Future<AccountDetail> getAccount(String region, String id) async {
    final response = await _dio.get('/$region/bean/accounts/$id');
    return AccountDetail.fromJson(response.data as Map<String, dynamic>);
  }
}

/// Commodity API Service
class CommodityApi {
  final Dio _dio;

  CommodityApi(this._dio);

  /// List all commodities for a region
  Future<CommodityListResponse> listCommodities(String region) async {
    final response = await _dio.get('/$region/bean/commodities');
    return CommodityListResponse.fromJson(response.data as Map<String, dynamic>);
  }
}

/// Price API Service
class PriceApi {
  final Dio _dio;

  PriceApi(this._dio);

  /// List all prices for a region
  Future<PriceListResponse> listPrices(
    String region, {
    String? baseCurrency,
    String? quoteCurrency,
  }) async {
    final response = await _dio.get('/$region/bean/prices', queryParameters: {
      'base_currency': baseCurrency,
      'quote_currency': quoteCurrency,
    });
    return PriceListResponse.fromJson(response.data as Map<String, dynamic>);
  }
}

/// Balance API Service
class BalanceApi {
  final Dio _dio;

  BalanceApi(this._dio);

  /// Get balances for a region
  ///
  /// Returns either a [BatchBalanceResponse] or a list of [BalanceEntry] /
  /// [MultiCurrencyBalance] depending on query parameters.
  Future<BatchBalanceResponse> getBalances(
    String region, {
    String? date,
    List<String>? account,
  }) async {
    final response = await _dio.get('/$region/bean/balances', queryParameters: {
      'date': date,
      'account': account,
    });
    return BatchBalanceResponse.fromJson(response.data as Map<String, dynamic>);
  }
}

/// Health API Service (infrastructure endpoint, returns raw Response)
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

  FirelaApi._internal();

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
