import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/utils/logger.dart';
import '../../../review_center/presentation/widgets/review_center_badge.dart';
import 'assets_liabilities_page.dart';
import 'income_expense_page.dart';

/// Custom segmented tab bar widget
class _SegmentedTabBar extends StatelessWidget {
  const _SegmentedTabBar({
    required this.controller,
    required this.tabs,
  });

  final TabController controller;
  final List<String> tabs;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TabBar(
        controller: controller,
        indicator: BoxDecoration(
          color: const Color(0xFF000000),
          borderRadius: BorderRadius.circular(20),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: const Color(0xFFFFFFFF),
        unselectedLabelColor: const Color(0xFF000000),
        labelStyle: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: theme.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ),
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
      ),
    );
  }
}

/// 资产数据模型
class AssetsData {
  final String netWorth;
  final String totalAssets;
  final String totalLiabilities;
  final List<AccountData> accounts;
  final String monthlyIncome;
  final String monthlyExpense;
  final String currency;
  final bool isLoading;
  final String? error;

  const AssetsData({
    this.netWorth = '0.00',
    this.totalAssets = '0.00',
    this.totalLiabilities = '0.00',
    this.accounts = const [],
    this.monthlyIncome = '0.00',
    this.monthlyExpense = '0.00',
    this.currency = 'CNY',
    this.isLoading = false,
    this.error,
  });
}

/// 账户数据模型
class AccountData {
  final String name;
  final String displayName;
  final double balance;
  final String currency;
  final String platform;

  const AccountData({
    required this.name,
    required this.displayName,
    required this.balance,
    this.currency = 'CNY',
    this.platform = '',
  });
}

/// Assets tabs page with Assets & Liabilities and Income & Expense
class AssetsTabsPage extends HookWidget {
  const AssetsTabsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tabController = useTabController(initialLength: 2);

    // 数据状态
    final isLoading = useState(false);
    final netWorth = useState('0.00');
    final totalAssets = useState('0.00');
    final totalLiabilities = useState('0.00');
    final accounts = useState<List<AccountData>>([]);
    final monthlyIncome = useState('0.00');
    final monthlyExpense = useState('0.00');
    final currency = useState('CNY');
    final errorMsg = useState<String?>(null);

    // 加载数据
    useEffect(() {
      Future.microtask(() => _fetchData(
        context: context,
        isLoading: isLoading,
        netWorth: netWorth,
        totalAssets: totalAssets,
        totalLiabilities: totalLiabilities,
        accounts: accounts,
        monthlyIncome: monthlyIncome,
        monthlyExpense: monthlyExpense,
        currency: currency,
        errorMsg: errorMsg,
      ));
      return null;
    }, const []);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'IGN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: const [
          ReviewCenterBadge(),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: _SegmentedTabBar(
              controller: tabController,
              tabs: [
                l10n.assetsLiabilities,
                l10n.incomeExpense,
              ],
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          AssetsLiabilitiesPage(
            isLoading: isLoading.value,
            netWorth: netWorth.value,
            totalAssets: totalAssets.value,
            totalLiabilities: totalLiabilities.value,
            accounts: accounts.value,
            error: errorMsg.value,
            onRefresh: () => _fetchData(
              context: context,
              isLoading: isLoading,
              netWorth: netWorth,
              totalAssets: totalAssets,
              totalLiabilities: totalLiabilities,
              accounts: accounts,
              monthlyIncome: monthlyIncome,
              monthlyExpense: monthlyExpense,
              currency: currency,
              errorMsg: errorMsg,
            ),
          ),
          IncomeExpensePage(
            isLoading: isLoading.value,
            monthlyIncome: monthlyIncome.value,
            monthlyExpense: monthlyExpense.value,
            currency: currency.value,
            error: errorMsg.value,
            onRefresh: () => _fetchData(
              context: context,
              isLoading: isLoading,
              netWorth: netWorth,
              totalAssets: totalAssets,
              totalLiabilities: totalLiabilities,
              accounts: accounts,
              monthlyIncome: monthlyIncome,
              monthlyExpense: monthlyExpense,
              currency: currency,
              errorMsg: errorMsg,
            ),
          ),
        ],
      ),
    );
  }

  /// 并行加载资产数据（参考 IGN fetchData 方法）
  static Future<void> _fetchData({
    required BuildContext context,
    required ValueNotifier<bool> isLoading,
    required ValueNotifier<String> netWorth,
    required ValueNotifier<String> totalAssets,
    required ValueNotifier<String> totalLiabilities,
    required ValueNotifier<List<AccountData>> accounts,
    required ValueNotifier<String> monthlyIncome,
    required ValueNotifier<String> monthlyExpense,
    required ValueNotifier<String> currency,
    required ValueNotifier<String?> errorMsg,
  }) async {
    if (!AuthManager.instance.isLoggedIn) {
      logger.i('[AssetsTabsPage] 未登录，跳过数据加载');
      return;
    }

    isLoading.value = true;
    errorMsg.value = null;

    try {
      // 获取当前月份
      final now = DateTime.now();
      final currentPeriod = '${now.year}-${now.month.toString().padLeft(2, '0')}';

      logger.i('[AssetsTabsPage] 开始加载资产数据...');

      // 并行调用 3 个 API（与 IGN fetchData 一致）
      final results = await Future.wait([
        IgnApiService.instance.getNetWorth().catchError((e) {
          logger.w('[AssetsTabsPage] getNetWorth 失败: $e');
          return <String, dynamic>{};
        }),
        IgnApiService.instance.getCashFlow(period: currentPeriod).catchError((e) {
          logger.w('[AssetsTabsPage] getCashFlow 失败: $e');
          return <String, dynamic>{};
        }),
        IgnApiService.instance.getDashboardAccounts().catchError((e) {
          logger.w('[AssetsTabsPage] getDashboardAccounts 失败: $e');
          return <String, dynamic>{'groups': [], 'summary': {}};
        }),
      ]);

      final netWorthData = results[0];
      final cashFlowData = results[1];
      final dashboardData = results[2];

      logger.i('[AssetsTabsPage] API 响应: netWorth=$netWorthData');
      logger.i('[AssetsTabsPage] API 响应: cashFlow=$cashFlowData');
      logger.i('[AssetsTabsPage] API 响应: dashboardAccounts=$dashboardData');

      // 1. 处理净资产数据
      if (netWorthData.containsKey('netWorth')) {
        final nw = _parseDouble(netWorthData['netWorth']);
        netWorth.value = _formatCurrency(nw);
        // 假设负债为已知数据，实际应从 API 获取
        final liab = _parseDouble(netWorthData['liabilities'] ?? '0');
        totalLiabilities.value = _formatCurrency(liab);
        totalAssets.value = _formatCurrency(nw + liab.abs());
      } else {
        netWorth.value = '0.00';
        totalAssets.value = '0.00';
        totalLiabilities.value = '0.00';
      }

      // 2. 处理账户数据
      final groups = dashboardData['groups'] as List<dynamic>? ?? [];
      final accountList = <AccountData>[];
      for (final group in groups) {
        final platform = group['platform'] as String? ?? '';
        final accts = group['accounts'] as List<dynamic>? ?? [];
        for (final acct in accts) {
          final fullName = acct['name'] as String? ?? '';
          final displayName = fullName.contains(':')
              ? fullName.split(':').last
              : fullName;
          accountList.add(AccountData(
            name: fullName,
            displayName: displayName,
            balance: _parseDouble(acct['balance']),
            currency: acct['currency'] as String? ?? 'CNY',
            platform: platform,
          ));
        }
      }
      accounts.value = accountList;

      // 3. 处理现金流数据
      if (cashFlowData.isNotEmpty) {
        final income = _parseDouble(cashFlowData['income']);
        final expense = _parseDouble(cashFlowData['expense']);
        monthlyIncome.value = _formatCurrency(income);
        monthlyExpense.value = _formatCurrency(expense);
        currency.value = cashFlowData['currency'] as String? ?? 'CNY';
      }

      logger.i('[AssetsTabsPage] 数据加载完成: ${accountList.length} 个账户');
    } catch (e) {
      logger.e('[AssetsTabsPage] 数据加载失败: $e');
      errorMsg.value = '获取数据失败';
    } finally {
      isLoading.value = false;
    }
  }

  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static String _formatCurrency(double value) {
    if (value == 0) return '0.00';
    // 格式化为带千分位的数字
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];

    // 添加千分位逗号
    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }

    return '${isNegative ? '-' : ''}${buffer.toString()}.$decPart';
  }
}
