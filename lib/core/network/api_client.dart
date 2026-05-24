import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import '../constants/api_constants.dart';
import 'auth_manager.dart';
import '../utils/logger.dart';

/// IGN API 客户端
/// 参考 IGN 项目 ignRequest.js 实现
/// 支持地域路由: /api/v1/{region}/{module}/* 用于地域前缀端点
class ApiClient {
  ApiClient._();
  static final ApiClient instance = ApiClient._();

  String _baseUrl = ApiConstants.ignBaseUrl;
  final Duration _timeout = ApiConstants.timeout;

  /// 当前地域代码，默认为 'cn'
  String _currentRegion = 'cn';

  String get baseUrl => _baseUrl;
  String get currentRegion => _currentRegion;

  /// 需要地域前缀的路径前缀
  /// 参考 region-routing-integration.md
  /// API文档: https://api-s.firela.io/api/docs-json
  /// 地域前缀端点: /bean/*, /dashboard/*, /reporting/*, /region/*
  static const List<String> _regionScopedPrefixes = ['/bean/', '/dashboard/', '/reporting/', '/region/'];

  /// 判断路径是否需要地域前缀
  /// 全局端点 (auth, symbol, platforms) 不需要地域前缀
  bool _isRegionScopedPath(String path) {
    final normalizedPath = path.startsWith('/') ? path : '/$path';
    return _regionScopedPrefixes.any((prefix) => normalizedPath.startsWith(prefix));
  }

  /// 构建 API URL
  /// - 地域前缀路径: /api/v1/{region}{path}
  /// - 全局路径: /api/v1{path}
  /// 注意: baseUrl 已经包含 /api，所以这里只构建 /v1/... 部分
  String _buildUrl(String path) {
    final normalizedPath = path.startsWith('/') ? path : '/$path';

    if (_isRegionScopedPath(normalizedPath)) {
      // 地域前缀路径: /v1/{region}{path}
      return '/v1/$_currentRegion$normalizedPath';
    } else {
      // 全局路径: /v1{path}
      return '/v1$normalizedPath';
    }
  }

  /// 设置当前地域
  void setRegion(String region) {
    _currentRegion = region;
    logger.i('[ApiClient] 切换地域: $region');
  }

  /// 切换 API 环境
  void switchEnvironment(String baseUrl) {
    _baseUrl = baseUrl;
    logger.i('[ApiClient] 切换环境: $_baseUrl');
  }

  /// GET 请求
  Future<dynamic> get(String path, {Map<String, String>? queryParams}) async {
    return _request('GET', path, queryParams: queryParams);
  }

  /// POST 请求
  Future<dynamic> post(String path, {dynamic body}) async {
    return _request('POST', path, body: body);
  }

  /// PUT 请求
  Future<dynamic> put(String path, {dynamic body}) async {
    return _request('PUT', path, body: body);
  }

  /// PATCH 请求
  Future<dynamic> patch(String path, {dynamic body}) async {
    return _request('PATCH', path, body: body);
  }

  /// DELETE 请求
  Future<dynamic> delete(String path, {Map<String, String>? queryParams}) async {
    return _request('DELETE', path, queryParams: queryParams);
  }

  /// 文件上传（用于账单导入）
  Future<dynamic> uploadFile(
    String path,
    String filePath, {
    String fieldName = 'file',
    Map<String, String>? formFields,
  }) async {
    // 确保已登录
    final loginOk = await AuthManager.instance.ensureLoggedIn();
    if (!loginOk) {
      throw const ApiException(401, '需要登录');
    }

    final uri = Uri.parse('$_baseUrl${_buildUrl(path)}');
    final request = http.MultipartRequest('POST', uri);

    // 添加认证头
    final token = AuthManager.instance.authToken;
    if (token != null) {
      request.headers['Authorization'] = 'Bearer $token';
    }

    // 添加文件
    final file = File(filePath);
    final fileName = file.path.split('/').last;
    final extension = fileName.split('.').last.toLowerCase();

    MediaType? contentType;
    if (extension == 'csv') {
      contentType = MediaType('text', 'csv');
    } else if (extension == 'xlsx') {
      contentType = MediaType('application', 'vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    } else if (extension == 'xls') {
      contentType = MediaType('application', 'vnd.ms-excel');
    }

    request.files.add(await http.MultipartFile.fromPath(
      fieldName,
      filePath,
      filename: fileName,
      contentType: contentType,
    ));

    // 添加额外表单字段
    if (formFields != null) {
      request.fields.addAll(formFields);
    }

    logger.i('[ApiClient] UPLOAD $uri');

    try {
      final streamedResponse = await request.send().timeout(ApiConstants.uploadTimeout);
      final response = await http.Response.fromStream(streamedResponse);
      return _handleResponse(response);
    } catch (e) {
      if (e is ApiException) rethrow;
      logger.e('[ApiClient] 上传失败: $e');
      throw const ApiException(0, '网络异常，请检查网络连接');
    }
  }

  /// 通用请求方法
  Future<dynamic> _request(
    String method,
    String path, {
    dynamic body,
    Map<String, String>? queryParams,
  }) async {
    // 确保已登录
    final loginOk = await AuthManager.instance.ensureLoggedIn();
    if (!loginOk) {
      throw const ApiException(401, '需要登录');
    }

    // 构建 URI（使用 _buildUrl 处理地域路由）
    var uri = Uri.parse('$_baseUrl${_buildUrl(path)}');
    if (queryParams != null && queryParams.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParams);
    }

    // 构建请求头
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    final token = AuthManager.instance.authToken;
    if (token != null) {
      headers['Authorization'] = 'Bearer $token';
    }

    final encodedBody = body != null ? jsonEncode(body) : null;

    logger.i('[ApiClient] $method $uri');
    // Redact sensitive headers before logging
    final sanitizedHeaders = Map<String, String>.from(headers);
    if (sanitizedHeaders.containsKey('Authorization')) {
      sanitizedHeaders['Authorization'] = 'Bearer ***';
    }
    logger.d('[ApiClient] 请求头: $sanitizedHeaders');
    if (encodedBody != null) {
      logger.d('[ApiClient] 请求体: $encodedBody');
    }

    try {
      http.Response response;

      switch (method) {
        case 'GET':
          response = await http.get(uri, headers: headers).timeout(_timeout);
          break;
        case 'POST':
          response = await http.post(
            uri,
            headers: headers,
            body: encodedBody,
          ).timeout(_timeout);
          break;
        case 'PUT':
          response = await http.put(
            uri,
            headers: headers,
            body: encodedBody,
          ).timeout(_timeout);
          break;
        case 'DELETE':
          response = await http.delete(uri, headers: headers).timeout(_timeout);
          break;
        default:
          throw const ApiException(0, '不支持的请求方法');
      }

      return _handleResponse(response);
    } catch (e) {
      if (e is ApiException) rethrow;
      logger.e('[ApiClient] 请求失败: $e');
      throw const ApiException(0, '网络异常，请检查网络连接');
    }
  }

  /// 处理响应（无需认证的请求）
  Future<dynamic> requestWithoutAuth(
    String method,
    String path, {
    dynamic body,
  }) async {
    final uri = Uri.parse('$_baseUrl${_buildUrl(path)}');
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    };

    logger.i('[ApiClient] $method $uri (no auth)');

    try {
      http.Response response;

      switch (method) {
        case 'POST':
          response = await http.post(
            uri,
            headers: headers,
            body: body != null ? jsonEncode(body) : null,
          ).timeout(_timeout);
          break;
        case 'GET':
          response = await http.get(uri, headers: headers).timeout(_timeout);
          break;
        default:
          throw const ApiException(0, '不支持的请求方法');
      }

      return _handleResponse(response);
    } catch (e) {
      if (e is ApiException) rethrow;
      logger.e('[ApiClient] 请求失败: $e');
      throw const ApiException(0, '网络异常，请检查网络连接');
    }
  }

  /// 处理 HTTP 响应
  dynamic _handleResponse(http.Response response) {
    logger.i('[ApiClient] 响应状态: ${response.statusCode}');

    if (response.statusCode >= 200 && response.statusCode < 300) {
      logger.d('[ApiClient] 响应体: ${response.body.length > 500 ? '${response.body.substring(0, 500)}...' : response.body}');
      if (response.body.isEmpty) return null;
      try {
        return jsonDecode(response.body);
      } catch (_) {
        return response.body;
      }
    } else if (response.statusCode == 401) {
      logger.e('[ApiClient] 401 响应体: ${response.body}');
      AuthManager.instance.clearAuthToken();
      throw const ApiException(401, '登录已过期，请重试');
    } else if (response.statusCode == 413) {
      throw const ApiException(413, '文件过大，请选择小于50MB的文件');
    } else if (response.statusCode == 429) {
      throw const ApiException(429, '请等待当前操作完成后再试');
    } else {
      // 详细的错误调试信息
      logger.e('[ApiClient] 错误响应 [${response.statusCode}]');
      logger.e('[ApiClient] 响应头: ${response.headers}');
      logger.e('[ApiClient] 响应体: ${response.body}');

      String message = '请求失败 (${response.statusCode})';
      dynamic responseData;
      try {
        responseData = jsonDecode(response.body);
        message = responseData['message']
            ?? responseData['detail']
            ?? responseData['error']
            ?? message;
      } catch (_) {
        // 响应体不是 JSON
        if (response.body.isNotEmpty) {
          message = '请求失败 (${response.statusCode}): ${response.body.length > 200 ? response.body.substring(0, 200) : response.body}';
        }
      }
      throw ApiException(response.statusCode, message, data: responseData);
    }
  }
}

/// API 异常
class ApiException implements Exception {
  final int statusCode;
  final String message;
  final dynamic data;

  const ApiException(this.statusCode, this.message, {this.data});

  @override
  String toString() => 'ApiException($statusCode): $message';
}
