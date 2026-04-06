import 'package:http/http.dart' as http;
import '../network/api_client.dart';
import '../constants/api_constants.dart';
import '../network/auth_manager.dart';
import '../utils/logger.dart';

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

  /// 上传单笔解析后的交易
  ///
  /// [transaction] 交易数据，包含:
  /// - date: 交易日期 (YYYY-MM-DD)
  /// - narration: 交易描述
  /// - payee: 交易对方 (可选)
  /// - postings: [{account, units, currency}]
  /// - meta: 元数据 (可选)
  /// - idempotencyKey: 幂等键 (可选)
  ///
  /// 返回 {transactionId, ...}
  Future<Map<String, dynamic>> uploadParsedTransaction(
    Map<String, dynamic> transaction,
  ) async {
    final result = await _client.post(
      ApiConstants.transactionEndpoint,
      body: transaction,
    );
    return Map<String, dynamic>.from(result as Map);
  }

  /// 批量上传解析后的交易（使用批量 API）
  ///
  /// [transactions] 交易列表
  ///
  /// 返回 {imported, failed, skipped, transactionIds, errors}
  ///
  /// 注意: API 每批最多支持 100 条交易，超过会自动分批处理
  Future<Map<String, dynamic>> uploadParsedTransactions(
    List<Map<String, dynamic>> transactions,
  ) async {
    if (transactions.isEmpty) {
      return {
        'imported': 0,
        'failed': 0,
        'skipped': 0,
        'transactionIds': <String>[],
        'errors': <String>[],
      };
    }

    const int batchSize = 100; // API 限制每批最多 100 条
    final allTransactionIds = <String>[];
    final allErrors = <String>[];
    var totalImported = 0;
    var totalFailed = 0;
    var totalSkipped = 0;

    // 分批处理
    for (var i = 0; i < transactions.length; i += batchSize) {
      final end = (i + batchSize < transactions.length) ? i + batchSize : transactions.length;
      final batch = transactions.sublist(i, end);

      logger.i('[IgnApiService] Processing batch ${i ~/ batchSize + 1}: ${batch.length} transactions');

      try {
        // 使用批量 API 创建交易
        final response = await _client.post(
          ApiConstants.transactionBatchEndpoint,
          body: {'transactions': batch},
        );

        // 解析响应 - API返回 {succeeded: [...], failed: [...], skipped: [...]}
        final result = response as Map<String, dynamic>;

        // 处理 succeeded 列表
        final succeededList = result['succeeded'] as List<dynamic>? ?? [];
        final transactionIds = succeededList
            .map((t) => (t as Map<String, dynamic>)['transactionId'] as String?)
            .whereType<String>()
            .toList();

        // 处理 failed 列表
        final failedList = result['failed'] as List<dynamic>? ?? [];
        final failedErrors = failedList
            .map((f) {
              final failed = f as Map<String, dynamic>;
              return '${failed['error'] ?? failed['message'] ?? 'Unknown error'}';
            })
            .toList();

        // 处理 skipped 列表
        final skippedList = result['skipped'] as List<dynamic>? ?? [];
        final skippedErrors = skippedList
            .map((s) {
              final skipped = s as Map<String, dynamic>;
              return '${skipped['reason'] ?? skipped['message'] ?? 'Skipped'}';
            })
            .toList();

        final imported = transactionIds.length;
        final failed = failedList.length;
        final skipped = skippedList.length;
        final errors = [...failedErrors, ...skippedErrors];

        allTransactionIds.addAll(transactionIds);
        allErrors.addAll(errors);
        totalImported += imported;
        totalFailed += failed;
        totalSkipped += skipped;

        logger.i('[IgnApiService] Batch ${i ~/ batchSize + 1} result: imported=$imported, failed=$failed, skipped=$skipped');
      } catch (e) {
        logger.e('[IgnApiService] Batch ${i ~/ batchSize + 1} failed: $e');
        totalFailed += batch.length;
        allErrors.add('Batch ${i ~/ batchSize + 1} failed: $e');
      }
    }

    logger.i('[IgnApiService] Total import result: imported=$totalImported, failed=$totalFailed, skipped=$totalSkipped');

    return {
      'imported': totalImported,
      'failed': totalFailed,
      'skipped': totalSkipped,
      'transactionIds': allTransactionIds,
      'errors': allErrors,
    };
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

  /// 获取负债按类型明细
  /// 返回 {total: number, byType: [{type, amount, count, accounts}]}
  Future<Map<String, dynamic>> getLiabilitiesBreakdown() async {
    final result = await _client.get(ApiConstants.liabilitiesBreakdownEndpoint);
    return Map<String, dynamic>.from(result as Map);
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

  // ============ FIRE Journey ============

  /// 获取 FIRE 目标
  /// 返回 {targetAmount, targetDate, monthlyExpenses, withdrawalRate, createdAt, updatedAt}
  Future<Map<String, dynamic>?> getFireGoal() async {
    try {
      final result = await _client.get(ApiConstants.fireGoalEndpoint);
      return Map<String, dynamic>.from(result as Map);
    } catch (e) {
      // Return null if no goal exists yet
      return null;
    }
  }

  /// 保存 FIRE 目标
  /// [data] 包含 targetAmount, targetDate, monthlyExpenses, withdrawalRate 等
  Future<Map<String, dynamic>> saveFireGoal(Map<String, dynamic> data) async {
    final result = await _client.post(ApiConstants.fireGoalEndpoint, body: data);
    return Map<String, dynamic>.from(result as Map);
  }

  // ============ 账户管理 ============

  /// 删除用户账户
  /// 调用 DELETE /api/v1/users/me
  /// 返回 success/failure
  Future<bool> deleteAccount() async {
    try {
      // Note: This is a global endpoint, we need to call it directly
      final uri = Uri.parse('${ApiConstants.ignBaseUrl}${ApiConstants.deleteUserEndpoint}');
      final response = await http.delete(
        uri,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${AuthManager.instance.authToken}',
        },
      ).timeout(ApiConstants.timeout);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        logger.i('[IgnApiService] Account deleted successfully');
        return true;
      } else if (response.statusCode == 401) {
        throw Exception('Unauthorized - please login again');
      } else if (response.statusCode == 404) {
        throw Exception('User not found');
      } else {
        throw Exception('Failed to delete account: ${response.statusCode}');
      }
    } catch (e) {
      logger.e('[IgnApiService] deleteAccount failed: $e');
      rethrow;
    }
  }
}
