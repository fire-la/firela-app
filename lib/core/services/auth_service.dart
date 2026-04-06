import 'package:cloudflare_turnstile/cloudflare_turnstile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/api_constants.dart';
import '../network/auth_manager.dart';
import '../utils/logger.dart';

/// 认证服务 - 处理登录 UI 交互逻辑
/// 参考 IGN 项目 pages/assets/index.vue 的登录流程
class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  /// 检查登录状态并在需要时显示登录选项
  /// 返回 true 表示已登录，false 表示未登录
  Future<bool> checkAndLogin(BuildContext context) async {
    final auth = AuthManager.instance;

    // 如果已登录，直接返回
    if (auth.isLoggedIn) {
      // 检查是否是新用户，需要显示安全令牌
      if (auth.isNewUser && auth.userAccessToken != null) {
        if (context.mounted) {
          await _showSecurityTokenDialog(context, auth.userAccessToken!);
        }
      }
      return true;
    }

    // 尝试自动登录
    final autoLoginOk = await auth.ensureLoggedIn();
    if (autoLoginOk) {
      // 自动登录成功后检查新用户状态
      if (auth.isNewUser && auth.userAccessToken != null && context.mounted) {
        await _showSecurityTokenDialog(context, auth.userAccessToken!);
      }
      return true;
    }

    // 需要用户操作
    if (context.mounted) {
      return await showLoginOptions(context);
    }
    return false;
  }

  /// 显示登录选项
  /// 参考 IGN 项目 showLoginOptions 方法
  Future<bool> showLoginOptions(BuildContext context) async {
    final auth = AuthManager.instance;
    final hasSaved = auth.hasUserAccessToken;

    final options = <String>[];
    if (hasSaved) options.add('使用已保存的令牌登录');
    options.add('输入安全令牌登录');
    options.add('创建新账户');

    logger.i('[AuthService] 显示登录选项弹窗, options: $options');

    final selected = await showModalBottomSheet<int>(
      context: context,
      isDismissible: true,
      enableDrag: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      builder: (ctx) => SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(ctx).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 拖动指示器
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(top: 12),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  '请选择登录方式',
                  style: Theme.of(ctx).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...options.asMap().entries.map((entry) => ListTile(
                leading: Icon(_getOptionIcon(entry.value), color: Theme.of(ctx).primaryColor),
                title: Text(entry.value),
                onTap: () => Navigator.pop(ctx, entry.key),
              )),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );

    logger.i('[AuthService] 用户选择: $selected');

    if (selected == null || !context.mounted) return false;

    if (hasSaved) {
      switch (selected) {
        case 0:
          return await _loginWithSavedToken(context);
        case 1:
          return await _showInputTokenDialog(context);
        case 2:
          return await _createNewAccount(context);
      }
    } else {
      switch (selected) {
        case 0:
          return await _showInputTokenDialog(context);
        case 1:
          return await _createNewAccount(context);
      }
    }

    return false;
  }

  IconData _getOptionIcon(String option) {
    if (option.contains('已保存')) return Icons.key;
    if (option.contains('输入')) return Icons.vpn_key_outlined;
    if (option.contains('创建')) return Icons.person_add_outlined;
    return Icons.login;
  }

  /// 使用已保存的令牌登录
  Future<bool> _loginWithSavedToken(BuildContext context) async {
    final auth = AuthManager.instance;
    final savedToken = auth.userAccessToken;
    if (savedToken == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('未找到保存的令牌')),
        );
      }
      return false;
    }

    return await _performLogin(context, savedToken);
  }

  /// 显示输入令牌对话框
  Future<bool> _showInputTokenDialog(BuildContext context) async {
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) {
        final controller = TextEditingController();
        return AlertDialog(
          title: const Text('输入安全令牌'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: '请输入您的安全令牌',
              border: OutlineInputBorder(),
            ),
            maxLines: 3,
            autofocus: true,
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('取消'),
            ),
            FilledButton(
              onPressed: () {
                if (controller.text.trim().isNotEmpty) {
                  Navigator.pop(ctx, controller.text.trim());
                }
              },
              child: const Text('登录'),
            ),
          ],
        );
      },
    );

    if (result == null || result.isEmpty || !context.mounted) return false;
    return await _performLogin(context, result);
  }

  /// 执行登录
  Future<bool> _performLogin(BuildContext context, String accessToken) async {
    // 显示 loading
    if (!context.mounted) return false;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => const Center(child: CircularProgressIndicator()),
    );

    try {
      await AuthManager.instance.loginWithAccessToken(accessToken);
      if (context.mounted) {
        Navigator.pop(context); // 关闭 loading
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('登录成功')),
        );
      }
      return true;
    } catch (e) {
      if (context.mounted) {
        Navigator.pop(context); // 关闭 loading
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString().contains('无效') ? '安全令牌无效' : '登录失败')),
        );
      }
      return false;
    }
  }

  /// 获取 Turnstile token（仅当 Turnstile 开启时）
  Future<String?> _getTurnstileToken() async {
    logger.i('[AuthService] Turnstile 开关: ${ApiConstants.enableTurnstile}, SiteKey: ${ApiConstants.turnstileSiteKey.isNotEmpty ? '已配置' : '未配置'}');
    if (!ApiConstants.enableTurnstile) {
      logger.i('[AuthService] Turnstile 未启用，跳过验证');
      return null;
    }

    logger.i('[AuthService] 开始获取 Turnstile token... baseUrl: ${ApiConstants.turnstileBaseUrl}');
    final turnstile = CloudflareTurnstile.invisible(
      siteKey: ApiConstants.turnstileSiteKey,
      baseUrl: ApiConstants.turnstileBaseUrl,
    );

    try {
      final token = await turnstile.getToken();
      logger.i('[AuthService] Turnstile token 获取${token != null ? '成功' : '失败'}, token长度: ${token?.length ?? 0}');
      return token;
    } catch (e) {
      logger.e('[AuthService] Turnstile token 获取异常: $e');
      rethrow;
    } finally {
      await turnstile.dispose();
      // HeadlessInAppWebView dispose 后需要短暂延迟让 Android 回收 WebView 焦点
      await Future.delayed(const Duration(milliseconds: 100));
    }
  }

  /// 创建新账户
  Future<bool> _createNewAccount(BuildContext context) async {
    if (!context.mounted) return false;
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => const Center(child: CircularProgressIndicator()),
    );

    try {
      final turnstileToken = await _getTurnstileToken();

      if (ApiConstants.enableTurnstile && turnstileToken == null) {
        logger.w('[AuthService] Turnstile 已启用但 token 为 null，中止注册');
        if (context.mounted) {
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('人机验证失败，请重试')),
          );
        }
        return false;
      }

      logger.i('[AuthService] 开始创建新用户, turnstileToken: ${turnstileToken != null ? '已获取' : '无'}');
      final accessToken = await AuthManager.instance.createNewUser(
        turnstileToken: turnstileToken,
      );
      logger.i('[AuthService] 新用户创建成功');
      if (context.mounted) {
        Navigator.pop(context);
        await _showSecurityTokenDialog(context, accessToken);
      }
      return true;
    } catch (e) {
      logger.e('[AuthService] 创建账户失败: $e');
      if (context.mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('创建账户失败: $e')),
        );
      }
      return false;
    }
  }

  /// 显示安全令牌弹窗（新用户）
  /// 参考 IGN 项目 showSecurityTokenDialog 方法
  Future<void> _showSecurityTokenDialog(BuildContext context, String accessToken) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) {
        final theme = Theme.of(ctx);
        return AlertDialog(
          title: Row(
            children: [
              const Icon(Icons.lock_outline, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  '请保存您的安全令牌',
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '这是您的账户恢复令牌，请务必复制并保存到安全的地方！如果丢失，您将无法恢复账户数据。',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: Colors.red[700],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SelectableText(
                  accessToken,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontFamily: 'monospace',
                  ),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                AuthManager.instance.setIsNewUser(false);
                Navigator.pop(ctx);
              },
              child: const Text('我已保存'),
            ),
            FilledButton.icon(
              onPressed: () {
                Clipboard.setData(ClipboardData(text: accessToken));
                ScaffoldMessenger.of(ctx).showSnackBar(
                  const SnackBar(content: Text('已复制到剪贴板')),
                );
                AuthManager.instance.setIsNewUser(false);
                Navigator.pop(ctx);
              },
              icon: const Icon(Icons.copy, size: 18),
              label: const Text('复制令牌'),
            ),
          ],
        );
      },
    );
  }
}
