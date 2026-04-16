//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:firela_api/src/serializers.dart';
import 'package:firela_api/src/auth/api_key_auth.dart';
import 'package:firela_api/src/auth/basic_auth.dart';
import 'package:firela_api/src/auth/bearer_auth.dart';
import 'package:firela_api/src/auth/oauth.dart';
import 'package:firela_api/src/api/api_keys_api.dart';
import 'package:firela_api/src/api/admin_payee_profiles_api.dart';
import 'package:firela_api/src/api/auth_api.dart';
import 'package:firela_api/src/api/bean_account_standards_api.dart';
import 'package:firela_api/src/api/bean_accounts_api.dart';
import 'package:firela_api/src/api/bean_balances_api.dart';
import 'package:firela_api/src/api/bean_commodities_api.dart';
import 'package:firela_api/src/api/bean_import_api.dart';
import 'package:firela_api/src/api/bean_nlp_api.dart';
import 'package:firela_api/src/api/bean_payees_api.dart';
import 'package:firela_api/src/api/bean_platforms_api.dart';
import 'package:firela_api/src/api/bean_reviews_api.dart';
import 'package:firela_api/src/api/bean_transaction_rules_api.dart';
import 'package:firela_api/src/api/bean_transactions_api.dart';
import 'package:firela_api/src/api/dashboard_api.dart';
import 'package:firela_api/src/api/default_api.dart';
import 'package:firela_api/src/api/exchange_rate_api.dart';
import 'package:firela_api/src/api/expected_transactions_api.dart';
import 'package:firela_api/src/api/health_api.dart';
import 'package:firela_api/src/api/info_api.dart';
import 'package:firela_api/src/api/logos_api.dart';
import 'package:firela_api/src/api/market_data_api.dart';
import 'package:firela_api/src/api/properties_api.dart';
import 'package:firela_api/src/api/provider_sync_api.dart';
import 'package:firela_api/src/api/recurring_forecast_api.dart';
import 'package:firela_api/src/api/recurring_rules_api.dart';
import 'package:firela_api/src/api/reporting_api.dart';
import 'package:firela_api/src/api/symbols_api.dart';
import 'package:firela_api/src/api/users_api.dart';

class FirelaApi {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  FirelaApi({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor)
              as OAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor)
              as BearerAuthInterceptor)
          .tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor)
              as BasicAuthInterceptor)
          .authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this
                  .dio
                  .interceptors
                  .firstWhere((element) => element is ApiKeyAuthInterceptor)
              as ApiKeyAuthInterceptor)
          .apiKeys[name] = apiKey;
    }
  }

  /// Get APIKeysApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  APIKeysApi getAPIKeysApi() {
    return APIKeysApi(dio, serializers);
  }

  /// Get AdminPayeeProfilesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AdminPayeeProfilesApi getAdminPayeeProfilesApi() {
    return AdminPayeeProfilesApi(dio, serializers);
  }

  /// Get AuthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthApi getAuthApi() {
    return AuthApi(dio, serializers);
  }

  /// Get BeanAccountStandardsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanAccountStandardsApi getBeanAccountStandardsApi() {
    return BeanAccountStandardsApi(dio, serializers);
  }

  /// Get BeanAccountsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanAccountsApi getBeanAccountsApi() {
    return BeanAccountsApi(dio, serializers);
  }

  /// Get BeanBalancesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanBalancesApi getBeanBalancesApi() {
    return BeanBalancesApi(dio, serializers);
  }

  /// Get BeanCommoditiesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanCommoditiesApi getBeanCommoditiesApi() {
    return BeanCommoditiesApi(dio, serializers);
  }

  /// Get BeanImportApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanImportApi getBeanImportApi() {
    return BeanImportApi(dio, serializers);
  }

  /// Get BeanNLPApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanNLPApi getBeanNLPApi() {
    return BeanNLPApi(dio, serializers);
  }

  /// Get BeanPayeesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanPayeesApi getBeanPayeesApi() {
    return BeanPayeesApi(dio, serializers);
  }

  /// Get BeanPlatformsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanPlatformsApi getBeanPlatformsApi() {
    return BeanPlatformsApi(dio, serializers);
  }

  /// Get BeanReviewsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanReviewsApi getBeanReviewsApi() {
    return BeanReviewsApi(dio, serializers);
  }

  /// Get BeanTransactionRulesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanTransactionRulesApi getBeanTransactionRulesApi() {
    return BeanTransactionRulesApi(dio, serializers);
  }

  /// Get BeanTransactionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BeanTransactionsApi getBeanTransactionsApi() {
    return BeanTransactionsApi(dio, serializers);
  }

  /// Get DashboardApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DashboardApi getDashboardApi() {
    return DashboardApi(dio, serializers);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio, serializers);
  }

  /// Get ExchangeRateApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ExchangeRateApi getExchangeRateApi() {
    return ExchangeRateApi(dio, serializers);
  }

  /// Get ExpectedTransactionsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ExpectedTransactionsApi getExpectedTransactionsApi() {
    return ExpectedTransactionsApi(dio, serializers);
  }

  /// Get HealthApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  HealthApi getHealthApi() {
    return HealthApi(dio, serializers);
  }

  /// Get InfoApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  InfoApi getInfoApi() {
    return InfoApi(dio, serializers);
  }

  /// Get LogosApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LogosApi getLogosApi() {
    return LogosApi(dio, serializers);
  }

  /// Get MarketDataApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MarketDataApi getMarketDataApi() {
    return MarketDataApi(dio, serializers);
  }

  /// Get PropertiesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PropertiesApi getPropertiesApi() {
    return PropertiesApi(dio, serializers);
  }

  /// Get ProviderSyncApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProviderSyncApi getProviderSyncApi() {
    return ProviderSyncApi(dio, serializers);
  }

  /// Get RecurringForecastApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecurringForecastApi getRecurringForecastApi() {
    return RecurringForecastApi(dio, serializers);
  }

  /// Get RecurringRulesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  RecurringRulesApi getRecurringRulesApi() {
    return RecurringRulesApi(dio, serializers);
  }

  /// Get ReportingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ReportingApi getReportingApi() {
    return ReportingApi(dio, serializers);
  }

  /// Get SymbolsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SymbolsApi getSymbolsApi() {
    return SymbolsApi(dio, serializers);
  }

  /// Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
  }
}
