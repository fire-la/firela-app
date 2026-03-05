import '../network/api_client.dart';
import '../constants/api_constants.dart';

/// IGN API 服务
/// 参考 IGN 项目 api/ign.js 的所有接口封装
class IgnApiService {
  IgnApiService._();
  static final IgnApiService instance = IgnApiService._();

  final _client = ApiClient.instance;

  // ============ NLP 自然语言记账 ============

  /// 处理自然语言输入
  /// [message] 自然语言文本，最大 500 字符
  /// [sessionId] 会话ID（多轮对话时必传）
  ///
  /// 响应 action 类型:
  /// - created: 记账成功（高置信度 ≥75%，已自动创建交易）
  /// - confirm: 需要用户确认（低置信度 <75%）
  /// - ask: 需要补充信息（缺少必需字段）
  /// - confirm_duplicate: 检测到可能重复的交易
  /// - cancel: 用户取消
  Future<Map<String, dynamic>> processNlp(String message, {String? sessionId}) async {
    final body = <String, dynamic>{
      'message': message,
    };
    if (sessionId != null && sessionId.isNotEmpty) {
      body['sessionId'] = sessionId;
    }
    final result = await _client.post(ApiConstants.nlpProcessEndpoint, body: body);
    return Map<String, dynamic>.from(result as Map);
  }

  /// 清除 NLP 会话
  Future<void> clearNlpSession(String sessionId) async {
    await _client.delete(
      ApiConstants.nlpSessionEndpoint,
      queryParams: {'sessionId': sessionId},
    );
  }

  // ============ 交易记账 ============

  /// 创建交易记录
  Future<Map<String, dynamic>> createTransaction(Map<String, dynamic> data) async {
    final result = await _client.post(ApiConstants.transactionEndpoint, body: data);
    return Map<String, dynamic>.from(result as Map);
  }

  /// 获取交易列表
  Future<dynamic> getTransactions({Map<String, String>? params}) async {
    return await _client.get(ApiConstants.transactionEndpoint, queryParams: params);
  }

  // ============ 账单导入 ============

  /// 导入账单文件
  /// 返回 {imported, failed, skipped, errors}
  Future<Map<String, dynamic>> importBillFile(String filePath) async {
    final result = await _client.uploadFile(
      ApiConstants.importFileEndpoint,
      filePath,
      fieldName: 'file',
    );
    return Map<String, dynamic>.from(result as Map);
  }

  /// 识别文件类型（不导入）
  Future<Map<String, dynamic>> identifyBillFile(String filePath) async {
    final result = await _client.uploadFile(
      ApiConstants.identifyFileEndpoint,
      filePath,
      fieldName: 'file',
    );
    return Map<String, dynamic>.from(result as Map);
  }

  // ============ OCR 收据识别 ============

  /// OCR 识别收据图片
  /// 返回 {success, data: {date, amount, merchant, category, description, confidence}, error}
  Future<Map<String, dynamic>> ocrReceiptImage(String imagePath) async {
    final result = await _client.uploadFile(
      ApiConstants.ocrReceiptEndpoint,
      imagePath,
      fieldName: 'image',
    );
    return Map<String, dynamic>.from(result as Map);
  }

  // ============ Dashboard 仪表盘 ============

  /// 获取净资产概览
  Future<Map<String, dynamic>> getNetWorth({String? date}) async {
    final params = <String, String>{};
    if (date != null) params['date'] = date;
    final result = await _client.get(ApiConstants.netWorthEndpoint, queryParams: params.isEmpty ? null : params);
    return Map<String, dynamic>.from(result as Map);
  }

  /// 获取现金流汇总
  Future<Map<String, dynamic>> getCashFlow({String? period}) async {
    final params = <String, String>{};
    if (period != null) params['period'] = period;
    final result = await _client.get(ApiConstants.cashFlowEndpoint, queryParams: params.isEmpty ? null : params);
    return Map<String, dynamic>.from(result as Map);
  }

  /// 获取账户列表（按平台分组）
  Future<Map<String, dynamic>> getDashboardAccounts() async {
    final result = await _client.get(ApiConstants.dashboardAccountsEndpoint);
    return Map<String, dynamic>.from(result as Map);
  }

  /// 获取净资产历史数据
  /// [months] 查询的月份数
  /// 返回 [{date, netWorth, totalAssets, totalLiabilities}, ...]
  Future<List<Map<String, dynamic>>> getNetWorthHistory({required int months}) async {
    final result = await _client.get(
      ApiConstants.netWorthHistoryEndpoint,
      queryParams: {'months': months.toString()},
    );
    return (result as List).cast<Map<String, dynamic>>();
  }

  // ============ 余额/收款方 ============

  /// 获取账户余额
  Future<dynamic> getBalance({Map<String, String>? params}) async {
    return await _client.get(ApiConstants.balanceEndpoint, queryParams: params);
  }

  /// 获取收款方列表
  Future<dynamic> getPayeeList() async {
    return await _client.get(ApiConstants.payeeEndpoint);
  }
}
