/// API Client Configuration for firela Flutter App
///
/// Configures the Dio HTTP client consumed by the generated `firela_api`
/// client (via the `FirelaApi` facade). `baseUrl` is **host-only** because
/// generated request paths already include `/api/v1/{region}/...`. Auth is
/// injected from [AuthManager] to mirror `IgnApiService`.
library;

import 'dart:developer';

import 'package:dio/dio.dart';

import '../../core/constants/api_constants.dart';
import '../../core/network/auth_manager.dart';

/// API Client Configuration
class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late final Dio _dio;

  ApiClient._internal() {
    // Generated paths are `/api/v1/{region}/...`, so baseUrl must be the host
    // only — strip the `/api` suffix that ApiConstants.ignBaseUrl carries.
    final baseUrl = ApiConstants.ignBaseUrl.endsWith('/api')
        ? ApiConstants.ignBaseUrl.substring(
            0,
            ApiConstants.ignBaseUrl.length - '/api'.length,
          )
        : ApiConstants.ignBaseUrl;

    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    // Inject auth token on every request; clear on 401 (mirrors IgnApiService).
    // Refresh an expired/missing JWT from the saved access token first — the
    // raw-http IgnApiClient does this per-request, so without it the typed path
    // (review center) 401s once the JWT expires while other features recover.
    // ensureLoggedIn is a no-op when already logged in and never throws.
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        await AuthManager.instance.ensureLoggedIn();
        final token = AuthManager.instance.authToken;
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
      onError: (error, handler) {
        if (error.response?.statusCode == 401) {
          log('[API] Unauthorized - clearing auth token', name: 'ApiClient');
          AuthManager.instance.clearAuthToken();
        }
        return handler.next(error);
      },
    ));

    // Add logging interceptor in debug mode
    assert(() {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
      return true;
    }());
  }

  Dio get dio => _dio;

  /// Update auth token
  void setAuthToken(String token) {
    _dio.options.headers['Authorization'] = 'Bearer $token';
  }

  /// Clear auth token
  void clearAuthToken() {
    _dio.options.headers.remove('Authorization');
  }
}
