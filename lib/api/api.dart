/// Firela API Service - type-safe interface to firela-vlt backend
///
/// Provides typed access to all backend API endpoints via the
/// generated `firela_api` package (auto-generated from OpenAPI spec).
///
/// Usage:
///   final api = FirelaApi();
///   api.setAuthToken('my-jwt-token');
///   final transactions = await api.transactions.listTransactions('us');
library;

import 'package:dio/dio.dart';
import 'package:firela_api/firela_api.dart';

import 'src/api_client.dart';

/// API Error type alias
typedef FirelaApiException = DioException;

/// Firela API Service
///
/// Provides type-safe access to all firela-vlt backend APIs.
/// Wraps the generated `firela_api` client with project-specific configuration.
class FirelaApi {
  static final FirelaApi _instance = FirelaApi._internal();
  factory FirelaApi() => _instance;

  late final _GeneratedFirelaApi _generated;
  final ApiClient _client = ApiClient();

  FirelaApi._internal() {
    _generated = _GeneratedFirelaApi(_client.dio);
  }

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

  BeanTransactionsApi get transactions => _generated.getBeanTransactionsApi();
  BeanAccountsApi get accounts => _generated.getBeanAccountsApi();
  BeanCommoditiesApi get commodities => _generated.getBeanCommoditiesApi();
  BeanBalancesApi get balances => _generated.getBeanBalancesApi();
  HealthApi get health => _generated.getHealthApi();
  BeanAccountStandardsApi get regions =>
      _generated.getBeanAccountStandardsApi();
  ProviderSyncApi get providerSync => _generated.getProviderSyncApi();
  BeanPayeesApi get payees => _generated.getBeanPayeesApi();
  BeanReviewsApi get reviews => _generated.getBeanReviewsApi();
  BeanTransactionRulesApi get transactionRules =>
      _generated.getBeanTransactionRulesApi();
  RecurringRulesApi get recurringRules => _generated.getRecurringRulesApi();
  ExpectedTransactionsApi get expectedTransactions =>
      _generated.getExpectedTransactionsApi();
  DashboardApi get dashboard => _generated.getDashboardApi();
  ReportingApi get reporting => _generated.getReportingApi();
  BeanImportApi get imports => _generated.getBeanImportApi();
  BeanNLPApi get nlp => _generated.getBeanNLPApi();
}

/// Internal wrapper for the generated FirelaApi client
///
/// Uses the project's shared Dio instance from [ApiClient] instead of
/// creating its own, ensuring consistent auth headers and base URL.
class _GeneratedFirelaApi extends FirelaApi {
  _GeneratedFirelaApi(Dio dio)
      : super(
          dio: dio,
          interceptors: [], // Use the project's ApiClient interceptors
        );
}
