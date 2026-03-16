import 'package:dio/dio.dart';
import '../core/network/auth_manager.dart';
import '../core/constants/api_constants.dart';

/// API Client wrapper using Dio (generated clients will use this)
///
/// This wrapper preserves existing ApiClient behaviors:
/// - Region routing logic (_buildPath, _isRegionScopedPath)
/// - Auth token injection via interceptors
/// - 401 error handling
class ApiClientWrapper {
  ApiClientWrapper._();
  static final ApiClientWrapper instance = ApiClientWrapper._();

  late final Dio _dio;

  String _currentRegion = 'cn';

  /// Get the configured Dio instance (for generated API clients)
  Dio get dio => _dio;

  String get currentRegion => _currentRegion;

  /// Initialize Dio with base configuration
  void initialize() {
    _dio = Dio(BaseOptions(
      baseUrl: ApiConstants.ignBaseUrl,
      connectTimeout: ApiConstants.timeout,
      receiveTimeout: ApiConstants.timeout,
      headers: {
        'Content-Type': 'application/json',
      },
    ));

    // Add auth interceptor
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        // Add auth token if available
        final token = AuthManager.instance.authToken;
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }

        // Build URL with region prefix for region-scoped endpoints
        // This maintains compatibility with existing ApiClient behavior
        options.path = _buildPath(options.path);

        return handler.next(options);
      },
      onError: (error, handler) async {
        if (error.response?.statusCode == 401) {
          AuthManager.instance.clearAuthToken();
        }
        return handler.next(error);
      },
    ));
  }

  /// Build URL path with region prefix (mirrors existing ApiClient logic)
  String _buildPath(String path) {
    final normalizedPath = path.startsWith('/') ? path : '/$path';

    if (_isRegionScopedPath(normalizedPath)) {
      return '/v1/$_currentRegion$normalizedPath';
    } else {
      return '/v1$normalizedPath';
    }
  }

  /// Check if path requires region prefix
  bool _isRegionScopedPath(String path) {
    const regionScopedPrefixes = ['/bean/', '/dashboard/', '/reporting/', '/region/'];
    return regionScopedPrefixes.any((prefix) => path.startsWith(prefix));
  }

  /// Set current region
  void setRegion(String region) {
    _currentRegion = region;
  }
}
