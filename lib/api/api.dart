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
// `as gen` avoids this file's own `class FirelaApi` shadowing the generated
// base class `FirelaApi` (which `_GeneratedFirelaApi` must extend) and all the
// generated `BeanXxxApi` return types.
import 'package:firela_api/firela_api.dart' as gen;

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

  gen.BeanTransactionsApi get transactions =>
      _generated.getBeanTransactionsApi();
  gen.BeanAccountsApi get accounts => _generated.getBeanAccountsApi();
  gen.BeanCommoditiesApi get commodities => _generated.getBeanCommoditiesApi();
  gen.BeanBalancesApi get balances => _generated.getBeanBalancesApi();
  gen.HealthApi get health => _generated.getHealthApi();
  gen.BeanAccountStandardsApi get regions =>
      _generated.getBeanAccountStandardsApi();
  gen.ProviderSyncApi get providerSync => _generated.getProviderSyncApi();
  gen.BeanPayeesApi get payees => _generated.getBeanPayeesApi();
  gen.BeanReviewsApi get reviews => _generated.getBeanReviewsApi();
  gen.BeanTransactionRulesApi get transactionRules =>
      _generated.getBeanTransactionRulesApi();
  gen.RecurringRulesApi get recurringRules => _generated.getRecurringRulesApi();
  gen.ExpectedTransactionsApi get expectedTransactions =>
      _generated.getExpectedTransactionsApi();
  gen.DashboardApi get dashboard => _generated.getDashboardApi();
  gen.ReportingApi get reporting => _generated.getReportingApi();
  gen.BeanImportApi get imports => _generated.getBeanImportApi();
  gen.BeanNLPApi get nlp => _generated.getBeanNLPApi();
}

/// Internal wrapper for the generated FirelaApi client
///
/// Uses the project's shared Dio instance from [ApiClient] instead of
/// creating its own, ensuring consistent auth headers and base URL.
class _GeneratedFirelaApi extends gen.FirelaApi {
  _GeneratedFirelaApi(Dio dio)
      : super(
          dio: dio,
          interceptors: [], // Use the project's ApiClient interceptors
        );
}
