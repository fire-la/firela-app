/// API Client Configuration for firela Flutter App
///
/// Configures Dio HTTP client with authentication and base URL.
library;

import 'dart:developer';

import 'package:dio/dio.dart';

/// API Client Configuration
class ApiClient {
  static final ApiClient _instance = ApiClient._internal();
  factory ApiClient() => _instance;

  late final Dio _dio;

  ApiClient._internal() {
    _dio = Dio(BaseOptions(
      baseUrl: const String.fromEnvironment(
        'API_URL',
        defaultValue: 'http://localhost:3334/api/v1',
      ),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    // Add auth interceptor
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Add auth token from storage
        // final token = await _getToken();
        // if (token != null) {
        //   options.headers['Authorization'] = 'Bearer $token';
        // }
        return handler.next(options);
      },
      onError: (error, handler) {
        if (error.response?.statusCode == 401) {
          // Handle unauthorized - redirect to login
          log('[API] Unauthorized - redirecting to login', name: 'ApiClient');
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
