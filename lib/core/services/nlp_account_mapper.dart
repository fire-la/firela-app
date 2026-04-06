/// NLP 账户映射服务
/// 根据后端文档 NLP-ACCOUNT-MAPPING.md 实现
/// 用于将 NLP 响应中的 intent、paymentSource、liabilityHint 映射到正确的 Beancount 账户
class NlpAccountMapper {
  NlpAccountMapper._();
  static final NlpAccountMapper instance = NlpAccountMapper._();

  /// 负债账户映射（按 liabilityHint 映射）
  static const Map<String, String> _liabilityAccounts = {
    'CreditCard': 'Liabilities:CreditCard',
    'Huabei': 'Liabilities:Huabei',
    'Baitiao': 'Liabilities:Baitiao',
  };

  /// 默认账户
  static const String _defaultAssetAccount = 'Assets:Bank:Checking';
  static const String _defaultExpenseAccount = 'Expenses:Uncategorized';
  static const String _defaultIncomeAccount = 'Income:Uncategorized';
  static const String _defaultLiabilityAccount = 'Liabilities:CreditCard';

  /// 映射结果
  /// source: 资金来源账户
  /// destination: 资金去向账户
  AccountsResult mapToAccounts({
    required String? intent,
    String? paymentSource,
    String? liabilityHint,
  }) {
    switch (intent) {
      case 'expense':
        // 支出交易
        final sourceAccount = paymentSource == 'liability'
            ? _liabilityAccounts[liabilityHint ?? 'CreditCard'] ?? _defaultLiabilityAccount
            : _defaultAssetAccount;

        return AccountsResult(
          source: sourceAccount,
          destination: _defaultExpenseAccount,
        );

      case 'income':
        // 收入交易
        return const AccountsResult(
          source: _defaultIncomeAccount,
          destination: _defaultAssetAccount,
        );

      case 'liability':
        // 借贷交易（负债增加）
        return const AccountsResult(
          source: _defaultLiabilityAccount,
          destination: _defaultAssetAccount,
        );

      case 'equity':
        // 期初余额
        return const AccountsResult(
          source: 'Equity:Opening-Balances',
          destination: _defaultAssetAccount,
        );

      case 'asset':
        // 资产转移
        return const AccountsResult(
          source: _defaultAssetAccount,
          destination: _defaultAssetAccount,
        );

      default:
        // 默认为支出
        return const AccountsResult(
          source: _defaultAssetAccount,
          destination: _defaultExpenseAccount,
        );
    }
  }

  /// 从 NLP 响应中提取账户映射
  /// response 包含 intent, paymentSource, liabilityHint 等字段
  AccountsResult mapFromResponse(Map<String, dynamic> response) {
    return mapToAccounts(
      intent: response['intent'] as String?,
      paymentSource: response['paymentSource'] as String?,
      liabilityHint: response['liabilityHint'] as String?,
    );
  }

  /// 获取默认资产账户
  String get defaultAssetAccount => _defaultAssetAccount;

  /// 获取默认支出账户
  String get defaultExpenseAccount => _defaultExpenseAccount;

  /// 获取默认收入账户
  String get defaultIncomeAccount => _defaultIncomeAccount;
}

/// 账户映射结果
class AccountsResult {
  final String source;
  final String destination;

  const AccountsResult({
    required this.source,
    required this.destination,
  });
}
