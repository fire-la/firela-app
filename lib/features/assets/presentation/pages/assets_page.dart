import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/router/route_names.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../shared/signals/asset_refresh_signal.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../../../shared/widgets/settings_icon_button.dart';
import '../../../review_center/presentation/widgets/review_center_badge.dart';
import '../../data/services/dashboard_aggregation_service.dart';
import '../../domain/models/net_worth_history_point.dart';

/// Flat Assets page matching .pen design (R8glV).
/// PageHeader → NetWorthDisplay → DonutChartCard + ChartCard → AssetBar → SectionHeader → Accounts
class AssetsPage extends HookWidget {
  const AssetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);
    final netWorth = useState('0.00');
    final totalAssets = useState('0.00');
    final totalLiabilities = useState('0.00');
    final monthlyChange = useState('+0');
    final accounts = useState<List<AccountData>>([]);
    final netWorthHistory = useState<List<NetWorthHistoryPoint>>([]);
    final selectedPeriodMonths = useState(6);

    Future<void> fetchData() async {
      if (!AuthManager.instance.isLoggedIn) return;
      isLoading.value = true;

      try {
        final now = DateTime.now();
        final period = '${now.year}-${now.month.toString().padLeft(2, '0')}';

        final results = await Future.wait([
          IgnApiService.instance
              .getNetWorth()
              .catchError((_) => <String, dynamic>{}),
          IgnApiService.instance
              .getCashFlow(period: period)
              .catchError((_) => <String, dynamic>{}),
          IgnApiService.instance
              .getBeanAccounts(type: 'Assets')
              .catchError((_) => <String, dynamic>{'items': [], 'total': 0}),
          IgnApiService.instance
              .getDashboardAccounts()
              .catchError((_) => <String, dynamic>{'groups': []}),
        ]);

        final netWorthData = results[0];
        final dashboardData = results[3];

        // 1. Net worth
        if (netWorthData.containsKey('netWorth')) {
          final nw = _parseDouble(netWorthData['netWorth']);
          netWorth.value = _formatCurrency(nw);
          final liab = _parseDouble(netWorthData['liabilities'] ?? '0');
          totalLiabilities.value = _formatCurrency(liab);
          totalAssets.value = _formatCurrency(nw + liab.abs());
        }

        // 2. Accounts: merge bean/accounts (UUIDs) + dashboard/accounts (balances)
        // Build lookup by id (most reliable), then fallback to name
        final balanceById = <String, double>{};
        final balanceByName = <String, double>{};
        final dashGroups = dashboardData['groups'] as List<dynamic>? ?? [];
        for (final group in dashGroups) {
          final accts = group['accounts'] as List<dynamic>? ?? [];
          for (final acct in accts) {
            final id = acct['id'] as String? ?? '';
            final name = acct['name'] as String? ?? '';
            final bal = _parseDouble(acct['balance']);
            if (id.isNotEmpty) balanceById[id] = bal;
            if (name.isNotEmpty) balanceByName[name] = bal;
          }
        }

        final items = (results[2]['items'] as List<dynamic>? ?? []);
        final accountList = <AccountData>[];
        for (final item in items) {
          final path = item['path'] as String? ?? '';
          final id = item['id'] as String? ?? '';
          final displayName = path.contains(':') ? path.split(':').last : path;
          final parts = path.split(':');
          final institution = parts.length >= 3
              ? parts[2]
              : (parts.length >= 2 ? parts[1] : '');
          // Match by id first, then by path name
          final balance = balanceById[id] ?? balanceByName[path] ?? 0.0;
          accountList.add(AccountData(
            name: path,
            displayName: displayName,
            balance: balance,
            currency: 'CNY',
            platform: _inferPlatform(path),
            institutionName: institution,
            accountId: id,
          ));
        }
        accounts.value = accountList;

        // 3. History
        try {
          final historyData = await IgnApiService.instance
              .getNetWorthHistory(months: selectedPeriodMonths.value);
          final history = DashboardAggregationService.instance
              .aggregateNetWorthHistory(historyData);
          netWorthHistory.value = history;
          if (history.length >= 2) {
            final change =
                history.last.netWorth - history[history.length - 2].netWorth;
            monthlyChange.value =
                '${change >= 0 ? '+' : ''}${change.toStringAsFixed(0)}';
          }
        } catch (_) {}
      } catch (e) {
        logger.e('[AssetsPage] fetch failed: $e');
      } finally {
        isLoading.value = false;
      }
    }

    useEffect(() {
      fetchData();
      return null;
    }, []);

    useEffect(() {
      return effect(() {
        if (assetRefreshSignal.value > 0) {
          Future.microtask(() => fetchData());
        }
      });
    }, []);

    return Scaffold(
      backgroundColor: ThemeTokens.of(context).bgPage,
      body: RefreshIndicator(
        onRefresh: fetchData,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: TokenSpacing.xl)
              .copyWith(bottom: MediaQuery.of(context).padding.bottom + 80),
          child: Column(
            children: [
              // PageHeader
              PageHeader(
                leading: const ReviewCenterBadge(),
                trailing: const SettingsIconButton(),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // NetWorthDisplay
              NetWorthDisplay(
                leftLabel: '总净资产(元)',
                leftValue: isLoading.value ? '—' : netWorth.value,
                rightLabel: '本月收益(元)',
                rightValue: isLoading.value ? '—' : monthlyChange.value,
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Charts row (gap: 12)
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: DonutChartCard(
                        title: '资产分布',
                        centerText:
                            isLoading.value ? '—' : '${accounts.value.length}',
                        sections: _buildDonutSections(accounts.value),
                        legends: _buildDonutLegends(accounts.value),
                      ),
                    ),
                    const SizedBox(width: TokenSpacing.lg),
                    Expanded(
                      child: ChartCard(
                        title: '资产变化',
                        chartWidget: _buildLineChart(netWorthHistory.value),
                        bottomLeftLabel: _getPeriodLabel(),
                        bottomRightLabel: isLoading.value
                            ? null
                            : _getChangePercent(netWorthHistory.value),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // AssetBar
              AssetBar(
                leftLabel: '资产',
                leftValue: totalAssets.value,
                rightLabel: '负债',
                rightValue: totalLiabilities.value == '0.00'
                    ? '0.00'
                    : '-${totalLiabilities.value}',
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Section header + grouped account list
              if (isLoading.value && accounts.value.isEmpty)
                ..._buildSkeleton()
              else if (accounts.value.isNotEmpty) ...[
                SectionHeader(
                  title: '账户',
                  trailing: '查看全部',
                  onTrailingTap: () => context.push(RouteNames.assetsDetails),
                ),
                const SizedBox(height: TokenSpacing.lg),
                ..._buildGroupedAccounts(context, accounts.value),
              ],
            ],
          ),
        ),
      ),
    );
  }

  // --- Donut chart ---

  List<PieChartSectionData> _buildDonutSections(List<AccountData> accounts) {
    if (accounts.isEmpty) {
      return [
        PieChartSectionData(
            value: 1, color: TokenColors.neutral200, radius: 30, title: '')
      ];
    }
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey
    ];
    final total = accounts.fold(0.0, (sum, a) => sum + a.balance.abs());
    return accounts
        .asMap()
        .entries
        .map((e) => PieChartSectionData(
              value: total == 0 ? 1 : e.value.balance.abs(),
              title: '',
              color: colors[e.key % colors.length],
              radius: 30,
            ))
        .toList();
  }

  List<DonutLegendItem> _buildDonutLegends(List<AccountData> accounts) {
    if (accounts.isEmpty) return [];
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey
    ];
    return accounts
        .take(3)
        .toList()
        .asMap()
        .entries
        .map((e) => DonutLegendItem(
              label: e.value.displayName,
              color: colors[e.key % colors.length],
            ))
        .toList();
  }

  // --- Line chart ---

  Widget _buildLineChart(List<NetWorthHistoryPoint> history) {
    final spots = _convertHistoryToSpots(history);
    final chartSpots = spots.isEmpty
        ? const [
            FlSpot(0, 3.2),
            FlSpot(1, 4.5),
            FlSpot(2, 3.8),
            FlSpot(3, 5.1),
            FlSpot(4, 4.7),
            FlSpot(5, 6.2)
          ]
        : spots;
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: chartSpots,
            isCurved: true,
            color: TokenColors.textAccent,
            barWidth: 2,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _convertHistoryToSpots(List<NetWorthHistoryPoint> history) {
    if (history.isEmpty) return [];
    // 只有1个点时复制一份，确保 LineChart 能画出直线
    final sorted = List<NetWorthHistoryPoint>.from(history)
      ..sort((a, b) => a.date.compareTo(b.date));
    if (sorted.length == 1) {
      final p = sorted[0];
      sorted.add(NetWorthHistoryPoint(
        date: p.date.subtract(const Duration(days: 1)),
        netWorth: p.netWorth,
        totalAssets: p.totalAssets,
        totalLiabilities: p.totalLiabilities,
      ));
    }
    final values = sorted.map((h) => h.netWorth).toList();
    final minValue = values.reduce((a, b) => a < b ? a : b);
    final maxValue = values.reduce((a, b) => a > b ? a : b);
    final range = maxValue - minValue;
    return sorted.asMap().entries.map((e) {
      final normalizedY =
          range > 0 ? ((e.value.netWorth - minValue) / range) * 10 : 5.0;
      return FlSpot(e.key.toDouble(), normalizedY);
    }).toList();
  }

  String _getPeriodLabel() {
    switch (6) {
      case 1:
        return '近1月';
      case 3:
        return '近3月';
      case 12:
        return '近1年';
      default:
        return '近6月';
    }
  }

  String? _getChangePercent(List<NetWorthHistoryPoint> history) {
    if (history.length < 2) return null;
    final latest = history.last.netWorth;
    final previous = history[history.length - 2].netWorth;
    if (previous == 0) return null;
    final pct = ((latest - previous) / previous * 100).toStringAsFixed(1);
    return '$pct%';
  }

  // --- Account list ---

  List<Widget> _buildGroupedAccounts(
      BuildContext context, List<AccountData> accounts) {
    return accounts
        .map((account) => Padding(
              padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
              child: _buildAccountItem(context, account),
            ))
        .toList();
  }

  Widget _buildAccountItem(BuildContext context, AccountData account) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: () {
        if (account.accountId.isNotEmpty) {
          context.push(
              '${RouteNames.transactions}?accountId=${Uri.encodeComponent(account.accountId)}&accountName=${Uri.encodeComponent(account.displayName)}');
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: TokenSpacing.xl, horizontal: TokenSpacing.xxl),
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: tokens.borderCard, width: 0.5),
          boxShadow: [
            BoxShadow(
                color: tokens.shadow,
                blurRadius: 18,
                offset: const Offset(0, 2),
                spreadRadius: 2),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: TokenColors.chartBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                _getPlatformIcon(account.platform),
                size: 14,
                color: TokenColors.white,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.displayName,
                    style: TokenTypography.caption(color: tokens.textTertiary),
                  ),
                  Text(
                    '${account.balance.abs().toStringAsFixed(2)} ${account.currency}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: tokens.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            if (account.platform.isNotEmpty)
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: tokens.bgCard,
                  borderRadius: BorderRadius.circular(11),
                  border: Border.all(color: TokenColors.borderTag, width: 0.5),
                ),
                child: Text(
                  account.platform,
                  style: TokenTypography.micro(color: tokens.textTertiary),
                ),
              ),
          ],
        ),
      ),
    );
  }

  IconData _getPlatformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay':
        return Icons.account_balance_wallet;
      case 'wechat':
        return Icons.chat_bubble_outline;
      case 'bank':
        return Icons.account_balance;
      case 'investment':
        return Icons.trending_up;
      default:
        return Icons.account_balance;
    }
  }

  // --- Skeleton ---

  List<Widget> _buildSkeleton() {
    return [
      const SectionHeader(title: '账户'),
      const SizedBox(height: TokenSpacing.lg),
      for (int i = 0; i < 3; i++)
        Padding(
          padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
          child: Container(
            height: 72,
            padding: const EdgeInsets.all(TokenSpacing.xl),
            decoration: BoxDecoration(
              color: TokenColors.bgCard,
              borderRadius: TokenRadius.borderLg,
              border: Border.all(color: TokenColors.borderCard, width: 0.5),
            ),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: TokenColors.neutral200,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 80,
                          height: 12,
                          decoration: BoxDecoration(
                              color: TokenColors.neutral200,
                              borderRadius: TokenRadius.borderSm)),
                      const SizedBox(height: 8),
                      Container(
                          width: 120,
                          height: 16,
                          decoration: BoxDecoration(
                              color: TokenColors.neutral200,
                              borderRadius: TokenRadius.borderSm)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    ];
  }

  // --- Helpers ---

  static String _inferPlatform(String path) {
    final lower = path.toLowerCase();
    if (lower.contains('alipay') || lower.contains('支付宝')) return 'Alipay';
    if (lower.contains('wechat') || lower.contains('微信')) return 'WeChat';
    if (lower.contains('invest') ||
        lower.contains('stock') ||
        lower.contains('fund')) return 'Investment';
    if (lower.contains('bank')) return 'Bank';
    return 'Bank';
  }

  static double _parseDouble(dynamic value) {
    if (value == null) return 0.0;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  static String _formatCurrency(double value) {
    if (value == 0) return '0.00';
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];
    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) buffer.write(',');
      buffer.write(intPart[i]);
    }
    return '${isNegative ? '-' : ''}${buffer.toString()}.$decPart';
  }
}

/// Account data model shared across asset pages.
class AccountData {
  final String name;
  final String displayName;
  final double balance;
  final String currency;
  final String platform;
  final String institutionName;
  final String accountId;

  const AccountData({
    required this.name,
    required this.displayName,
    required this.balance,
    this.currency = 'CNY',
    this.platform = '',
    this.institutionName = '',
    this.accountId = '',
  });
}
