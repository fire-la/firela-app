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

import 'package:built_collection/built_collection.dart';
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

  // === Transaction edit helpers (IGN-298) ===

  /// PATCH /transactions/:id — metadata-only update (narration/payee/tags).
  /// Structural fields (postings/amount/account/date) require [correctTransaction].
  Future<gen.TransactionDetailDto> updateTransactionMeta(
    String region,
    String id, {
    String? narration,
    String? payee,
    List<String>? tags,
  }) async {
    final dto = gen.UpdateTransactionDto((b) => b
      ..narration = narration
      ..payee = payee
      ..tags = tags == null ? null : ListBuilder<String>(tags));
    final response = await transactions.transactionControllerUpdate(
      region: region,
      id: id,
      updateTransactionDto: dto,
    );
    return _bodyOrThrow(response, 'updateTransactionMeta');
  }

  /// POST /transactions/:id/correct — supersede with a new transaction.
  /// Use when structural fields change; returns the NEW transaction (new id).
  /// The caller builds [dto] (date/narration/postings required).
  Future<gen.TransactionDetailDto> correctTransaction(
    String region,
    String id,
    gen.CorrectTransactionDto dto,
  ) async {
    final response = await transactions.transactionControllerCorrect(
      region: region,
      id: id,
      correctTransactionDto: dto,
    );
    return _bodyOrThrow(response, 'correctTransaction');
  }

  /// POST /transaction-rules — create an auto-categorization rule (ADR-0064).
  /// The caller builds [dto] (`name` required).
  Future<void> createCategoryRule(
    String region,
    gen.CreateTransactionRuleDto dto,
  ) async {
    await transactionRules.transactionRuleControllerCreate(
      region: region,
      createTransactionRuleDto: dto,
    );
  }

  /// Unwrap a nullable response body or throw (backend 200 but empty body).
  T _bodyOrThrow<T>(Response<T> response, String op) {
    final data = response.data;
    if (data == null) {
      throw DioException(
        requestOptions: response.requestOptions,
        response: response,
        type: DioExceptionType.badResponse,
        message: '$op: response body is empty',
      );
    }
    return data;
  }
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
