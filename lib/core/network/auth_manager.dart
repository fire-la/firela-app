import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import '../constants/api_constants.dart';
import '../constants/storage_keys.dart';
import '../utils/logger.dart';

/// 认证管理器
/// 参考 IGN 项目 ignRequest.js 的登录策略
///
/// 登录流程：
/// 1. 检查本地是否有有效 JWT token -> 有则直接使用
/// 2. 检查是否有保存的 accessToken -> 有则尝试自动登录
/// 3. 都没有 -> 需要用户创建新账户或输入安全令牌
class AuthManager {
  AuthManager._();
  static final AuthManager instance = AuthManager._();

  Box? _box;

  /// 初始化存储
  Future<void> init() async {
    _box = await Hive.openBox('auth');
  }

  /// 获取 JWT auth token（用于 API 请求）
  String? get authToken => _box?.get(StorageKeys.authToken);

  /// 设置 JWT auth token
  void setAuthToken(String token) {
    _box?.put(StorageKeys.authToken, token);
    _box?.put('loginTime', DateTime.now().millisecondsSinceEpoch);
  }

  /// 清除 JWT auth token
  void clearAuthToken() {
    _box?.delete(StorageKeys.authToken);
    _box?.delete('loginTime');
  }

  /// 获取用户安全令牌（accessToken，用户需要保存的）
  String? get userAccessToken => _box?.get('userAccessToken');

  /// 设置用户安全令牌
  void setUserAccessToken(String accessToken) {
    _box?.put('userAccessToken', accessToken);
  }

  /// 检查是否有保存的安全令牌
  bool get hasUserAccessToken => userAccessToken != null && userAccessToken!.isNotEmpty;

  /// 检查是否是新用户（需要显示令牌保存提示）
  bool get isNewUser => _box?.get('isNewUser', defaultValue: false) ?? false;

  /// 设置新用户标记
  void setIsNewUser(bool value) {
    _box?.put('isNewUser', value);
  }

  /// 检查 token 是否过期
  bool get isTokenExpired {
    final loginTime = _box?.get('loginTime');
    if (loginTime == null) return true;
    final elapsed = DateTime.now().millisecondsSinceEpoch - (loginTime as int);
    return elapsed > ApiConstants.tokenExpireDuration.inMilliseconds;
  }

  /// 检查是否已登录（有有效 token）
  bool get isLoggedIn => authToken != null && !isTokenExpired;

  /// 从 JWT token 中解析 userId
  String? get userId {
    final token = authToken;
    if (token == null) return null;
    try {
      final parts = token.split('.');
      if (parts.length != 3) return null;
      // Base64 解码 payload
      String payload = parts[1];
      // 补齐 base64 padding
      switch (payload.length % 4) {
        case 2: payload += '=='; break;
        case 3: payload += '='; break;
      }
      final decoded = utf8.decode(base64Url.decode(payload));
      final data = jsonDecode(decoded) as Map<String, dynamic>;
      return data['id'] as String?;
    } catch (e) {
      logger.w('[AuthManager] 解析 JWT userId 失败: $e');
      return null;
    }
  }

  /// 获取用户显示名称（user_ + userId 尾缀）
  String get displayName {
    final id = userId;
    if (id != null && id.length >= 8) {
      return 'user_${id.substring(id.length - 8)}';
    } else if (id != null) {
      return 'user_$id';
    }
    return '未登录';
  }

  /// 确保已登录
  /// 返回 true 表示已登录，false 表示需要用户操作
  Future<bool> ensureLoggedIn() async {
    // 1. 检查是否有有效的登录态
    if (isLoggedIn) {
      logger.i('[AuthManager] 已有有效登录态');
      return true;
    }

    // 2. 检查是否有保存的安全令牌，尝试自动登录
    final savedToken = userAccessToken;
    if (savedToken != null && savedToken.isNotEmpty) {
      logger.i('[AuthManager] 发现保存的安全令牌，尝试自动登录...');
      try {
        await loginWithAccessToken(savedToken);
        return true;
      } catch (e) {
        logger.w('[AuthManager] 使用保存的安全令牌登录失败: $e');
        // 令牌可能已失效，但不清除它（用户可能想手动输入）
      }
    }

    // 3. 需要用户操作
    logger.i('[AuthManager] 需要用户登录或创建账户');
    return false;
  }

  /// 创建新用户
  /// 调用 POST /api/v1/users
  /// 返回 accessToken（用户需要保存的安全令牌）
  /// [turnstileToken] - Cloudflare Turnstile 验证 token（仅当 Turnstile 开启时需要）
  Future<String> createNewUser({String? turnstileToken}) async {
    final uri = Uri.parse('${ApiConstants.ignBaseUrl}${ApiConstants.createUserEndpoint}');
    logger.i('[AuthManager] 创建新用户账户... URL: $uri');

    final body = <String, dynamic>{};
    if (turnstileToken != null) {
      body['turnstileToken'] = turnstileToken;
    }
    logger.i('[AuthManager] 请求体: ${jsonEncode(body)}');

    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode(body),
    ).timeout(ApiConstants.timeout);

    logger.i('[AuthManager] 注册响应状态: ${response.statusCode}');
    logger.d('[AuthManager] 注册响应体: ${response.body}');

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      final authTokenValue = data['authToken'] as String?;
      final accessToken = data['accessToken'] as String?;

      if (authTokenValue != null && accessToken != null) {
        setAuthToken(authTokenValue);
        setUserAccessToken(accessToken);
        setIsNewUser(true);
        logger.i('[AuthManager] 新用户创建成功');
        return accessToken;
      } else {
        throw Exception('创建用户响应中缺少必要字段');
      }
    } else if (response.statusCode == 400) {
      logger.e('[AuthManager] 400 错误: ${response.body}');
      throw Exception('人机验证失败，请重试');
    } else if (response.statusCode == 403) {
      logger.e('[AuthManager] 403 错误: ${response.body}');
      throw Exception('用户注册已禁用');
    } else {
      logger.e('[AuthManager] 注册失败 [${response.statusCode}]: ${response.body}');
      throw Exception('创建用户失败: ${response.statusCode}');
    }
  }

  /// 使用安全令牌登录
  /// 调用 POST /api/v1/auth/sessions/anonymous
  Future<void> loginWithAccessToken(String accessToken) async {
    logger.i('[AuthManager] 使用安全令牌登录...');

    final uri = Uri.parse('${ApiConstants.ignBaseUrl}${ApiConstants.anonymousLoginEndpoint}');

    final response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({'accessToken': accessToken}),
    ).timeout(ApiConstants.timeout);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final data = jsonDecode(response.body);
      final authTokenValue = data['authToken'] as String?;

      if (authTokenValue != null) {
        setAuthToken(authTokenValue);
        setUserAccessToken(accessToken);
        setIsNewUser(false);
        logger.i('[AuthManager] 安全令牌登录成功');
      } else {
        throw Exception('登录响应中没有 authToken');
      }
    } else if (response.statusCode == 401) {
      throw Exception('安全令牌无效，请检查输入');
    } else {
      throw Exception('登录失败: ${response.statusCode}');
    }
  }

  /// 清除所有认证数据
  void clearAllData() {
    _box?.delete(StorageKeys.authToken);
    _box?.delete('userAccessToken');
    _box?.delete('loginTime');
    _box?.delete('isNewUser');
  }
}
