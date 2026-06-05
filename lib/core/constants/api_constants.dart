/// API configuration constants
/// 参考 IGN 项目 ignRequest.js 的环境配置
///
/// 地域路由说明 (参考 region-routing-integration.md):
/// - baseUrl 为 https://api-s.firela.io/api (已包含 /api)
/// - ApiClient._buildUrl() 会自动添加 /v1/{region} 前缀
/// - 地域前缀端点: /bean/*, /reporting/*, /region/*
/// - 全局端点: /auth/*, /symbol/*, /platforms/* (无需地域前缀)
///
/// 端点路径格式:
/// - 地域前缀: /bean/transactions → /api/v1/{region}/bean/transactions
/// - 全局端点: /auth/login → /api/v1/auth/login
class ApiConstants {
  ApiConstants._();

  /// API 基础路径 (已包含 /api 前缀)
  // static const String ignBaseUrl = String.fromEnvironment(
  //   'API_BASE_URL',
  //   defaultValue: 'https://api-s.firela.io/api',
  // );
  // static const String ignBaseUrl = 'https://vlt-s.firela.io/api';
  static const String ignBaseUrl = 'https://ign-dev.firela.io/api'; // 测试环境

  /// API 超时时间
  static const Duration timeout = Duration(seconds: 30);

  /// 文件上传超时时间
  static const Duration uploadTimeout = Duration(seconds: 60);

  /// Token 有效期（180天）
  static const Duration tokenExpireDuration = Duration(days: 180);

  // ============ Auth 认证相关端点 (全局端点，无需地域前缀) ============
  // 注意: AuthManager 直接构建 URL (不通过 ApiClient._buildUrl)，
  // 所以这些端点需要包含 /v1 前缀

  /// 创建新用户 POST
  static const String createUserEndpoint = '/v1/users';

  /// 匿名登录（使用 accessToken） POST
  static const String anonymousLoginEndpoint = '/v1/auth/sessions/anonymous';

  /// 获取用户信息 GET
  static const String userInfoEndpoint = '/v1/users';

  /// 删除用户账户 DELETE (全局端点)
  /// Body: { "accessToken": "..." } — DeleteOwnUserDto
  static const String deleteUserEndpoint = '/v1/users';

  // ============ NLP 自然语言记账端点 (地域前缀端点) ============
  /// NLP 处理 POST
  static const String nlpProcessEndpoint = '/bean/nlp/process';

  /// NLP 会话 POST/GET/DELETE
  static const String nlpSessionEndpoint = '/bean/nlp/session';

  // ============ Bean 交易相关端点 (地域前缀端点) ============
  /// 交易 CRUD
  static const String transactionEndpoint = '/bean/transactions';

  /// Bean 账户 CRUD GET
  static const String beanAccountsEndpoint = '/bean/accounts';

  /// 批量创建交易 POST
  /// 请求格式: {'transactions': [...]}
  /// 每批最多 50 条
  static const String transactionBatchEndpoint = '/bean/transactions/batch';

  /// 收款方/付款方
  static const String payeeEndpoint = '/bean/payees';

  // ============ 账单导入端点 (地域前缀端点) ============
  /// 导入账单文件 POST (multipart/form-data)
  static const String importFileEndpoint = '/bean/import/file';

  /// 识别文件类型 POST
  static const String identifyFileEndpoint = '/bean/import/identify';

  // ============ OCR 端点 (地域前缀端点) ============
  /// OCR 识别收据图片 POST (multipart/form-data)
  static const String ocrReceiptEndpoint = '/bean/ocr/receipt';

  /// 导入器配置
  static const String importerConfigEndpoint = '/bean/import/config';

  // ============ Dashboard 仪表盘端点 (地域前缀端点) ============
  /// 净资产概览 GET
  /// ApiClient._buildUrl() 会自动添加 /v1/{region} 前缀
  static const String netWorthEndpoint = '/dashboard/net-worth';

  /// 净资产历史数据 GET (query: period, granularity)
  /// 后端实现: /reporting/portfolio/trends
  static const String netWorthHistoryEndpoint = '/reporting/portfolio/trends';

  /// 现金流汇总 GET
  static const String cashFlowEndpoint = '/dashboard/cash-flow';

  /// 账户列表（按平台分组） GET
  static const String dashboardAccountsEndpoint = '/dashboard/accounts';

  /// 负债按类型明细 GET
  /// 返回 {total: number, byType: [{type, amount, count, accounts}]}
  static const String liabilitiesBreakdownEndpoint = '/dashboard/liabilities/breakdown';

  // ============ FIRE Journey 端点 (地域前缀端点) ============
  /// FIRE 目标 GET/POST
  static const String fireGoalEndpoint = '/bean/fire-goal';

  // ============ Recurring Rules 端点 (地域前缀端点) ============
  static const String recurringRulesEndpoint = '/bean/recurring-rules';

  // ============ Bean 余额/商品/价格 (地域前缀端点) ============
  /// 余额查询
  static const String balanceEndpoint = '/bean/balances';

  /// 商品/货币
  static const String commoditiesEndpoint = '/bean/commodities';

  /// 价格
  static const String priceEndpoint = '/bean/price';

  /// 平台
  static const String platformEndpoint = '/bean/platforms';

  // ============ Cloudflare Turnstile 防护配置 ============
  /// 是否启用 Turnstile（默认关闭以提升开发体验，生产环境可通过 --dart-define=ENABLE_TURNSTILE=true 开启）
  static const bool enableTurnstile = bool.fromEnvironment(
    'ENABLE_TURNSTILE',
    defaultValue: false,
  );

  /// Turnstile Site Key（自托管可通过 --dart-define=TURNSTILE_SITE_KEY=xxx 覆盖）
  static const String turnstileSiteKey = String.fromEnvironment(
    'TURNSTILE_SITE_KEY',
    defaultValue: '0x4AAAAAACaYNForERDUDIkl',
  );

  /// Turnstile Base URL（必须与 Cloudflare Dashboard 中 Widget 的 Hostname 配置匹配）
  /// Flutter App 通过 WebView 加载，需要显式指定域名
  static const String turnstileBaseUrl = String.fromEnvironment(
    'TURNSTILE_BASE_URL',
    defaultValue: 'https://api.firela.io/',
  );
}
