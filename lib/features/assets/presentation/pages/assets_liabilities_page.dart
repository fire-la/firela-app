import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../domain/models/net_worth_history_point.dart';
import 'assets_tabs_page.dart';

class AssetsLiabilitiesPage extends StatelessWidget {
  const AssetsLiabilitiesPage({
    super.key,
    required this.isLoading,
    required this.netWorth,
    required this.totalAssets,
    required this.totalLiabilities,
    required this.accounts,
    this.netWorthHistory = const [],
    this.selectedPeriodMonths = 6,
    this.error,
    this.onRefresh,
    this.onPeriodChanged,
    this.onDetailsTap,
    this.onStatisticsTap,
  });

  final bool isLoading;
  final String netWorth;
  final String totalAssets;
  final String totalLiabilities;
  final List<AccountData> accounts;
  final List<NetWorthHistoryPoint> netWorthHistory;
  final int selectedPeriodMonths;
  final String? error;
  final VoidCallback? onRefresh;
  final void Function(int months)? onPeriodChanged;
  final VoidCallback? onDetailsTap;
  final VoidCallback? onStatisticsTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => onRefresh?.call(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: TokenSpacing.xl),

              // NetWorthDisplay
              NetWorthDisplay(
                leftLabel: '总净资产(元)',
                leftValue: isLoading ? '—' : netWorth,
                rightLabel: '本月收益(元)',
                rightValue: _calculateMonthlyChange(),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // DonutChartCard + ChartCard row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: DonutChartCard(
                      title: l10n.assetDistribution,
                      centerText: isLoading ? '—' : '${accounts.length}',
                      sections: _buildDonutSections(),
                      legends: _buildDonutLegends(),
                      onTap: onStatisticsTap,
                    ),
                  ),
                  const SizedBox(width: TokenSpacing.xl),
                  Expanded(
                    child: ChartCard(
                      title: l10n.assetChange,
                      chartWidget: _buildLineChart(),
                      bottomLeftLabel: _getPeriodLabel(l10n),
                      bottomRightLabel: isLoading ? null : _getChangePercent(),
                      onTap: onStatisticsTap,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TokenSpacing.xl),

              // AssetBar
              AssetBar(
                leftLabel: l10n.assets,
                leftValue: totalAssets,
                rightLabel: l10n.liabilities,
                rightValue: totalLiabilities == '0.00' ? '0.00' : '-$totalLiabilities',
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Section header + account list (grouped by institution)
              if (accounts.isNotEmpty) ...[
                SectionHeader(
                  title: '账户',
                  trailing: '查看全部',
                  onTrailingTap: onDetailsTap,
                ),
                const SizedBox(height: TokenSpacing.xl),
                ..._buildGroupedAccountItems(context),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _calculateMonthlyChange() {
    if (netWorthHistory.length < 2) return '+0';
    final latest = netWorthHistory.last.netWorth;
    final previous = netWorthHistory[netWorthHistory.length - 2].netWorth;
    final change = latest - previous;
    return '${change >= 0 ? '+' : ''}${change.toStringAsFixed(0)}';
  }

  List<PieChartSectionData> _buildDonutSections() {
    if (accounts.isEmpty || isLoading) {
      return [
        PieChartSectionData(value: 1, color: TokenColors.neutral200, radius: 30, title: ''),
      ];
    }
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey,
    ];
    return accounts.asMap().entries.map((entry) {
      return PieChartSectionData(
        value: entry.value.balance.abs(),
        title: '',
        color: colors[entry.key % colors.length],
        radius: 30,
      );
    }).toList();
  }

  List<DonutLegendItem> _buildDonutLegends() {
    if (accounts.isEmpty) return [];
    final colors = [
      TokenColors.chartBlue,
      TokenColors.chartAmber,
      TokenColors.chartGreen,
      TokenColors.chartGrey,
    ];
    return accounts.take(3).toList().asMap().entries.map((entry) {
      return DonutLegendItem(
        label: entry.value.displayName,
        color: colors[entry.key % colors.length],
      );
    }).toList();
  }

  Widget? _buildLineChart() {
    final spots = _convertHistoryToSpots();
    if (spots.isEmpty && !isLoading) return null;

    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: spots.isEmpty
                ? [const FlSpot(0, 5)]
                : spots,
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

  String _getPeriodLabel(AppLocalizations l10n) {
    switch (selectedPeriodMonths) {
      case 1: return l10n.period1Month;
      case 3: return l10n.period3Months;
      case 12: return l10n.period1Year;
      default: return l10n.period6Months;
    }
  }

  String? _getChangePercent() {
    if (netWorthHistory.length < 2) return null;
    final latest = netWorthHistory.last.netWorth;
    final previous = netWorthHistory[netWorthHistory.length - 2].netWorth;
    if (previous == 0) return null;
    final pct = ((latest - previous) / previous * 100).toStringAsFixed(1);
    return '$pct%';
  }

  List<FlSpot> _convertHistoryToSpots() {
    if (netWorthHistory.isEmpty) return [];
    final sorted = List<NetWorthHistoryPoint>.from(netWorthHistory)
      ..sort((a, b) => a.date.compareTo(b.date));
    final values = sorted.map((h) => h.netWorth).toList();
    final minValue = values.reduce((a, b) => a < b ? a : b);
    final maxValue = values.reduce((a, b) => a > b ? a : b);
    final range = maxValue - minValue;
    return sorted.asMap().entries.map((entry) {
      final index = entry.key.toDouble();
      final value = entry.value.netWorth;
      final normalizedY = range > 0 ? ((value - minValue) / range) * 10 : 5.0;
      return FlSpot(index, normalizedY);
    }).toList();
  }

  IconData _getPlatformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'alipay': return Icons.account_balance_wallet;
      case 'wechat': return Icons.chat_bubble_outline;
      case 'bank': return Icons.account_balance;
      case 'assets': return Icons.trending_up;
      case 'expenses': return Icons.trending_down;
      case 'income': return Icons.arrow_upward;
      case 'liabilities': return Icons.credit_card;
      default: return Icons.account_balance;
    }
  }

  Widget _buildAccountItem(BuildContext context, AccountData account) {
    return GestureDetector(
      onTap: () {
        if (account.accountId.isNotEmpty) {
          context.push('${RouteNames.transactions}?accountId=${Uri.encodeComponent(account.accountId)}&accountName=${Uri.encodeComponent(account.displayName)}');
        }
      },
      child: Container(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl, horizontal: TokenSpacing.xxl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 18,
            offset: Offset(0, 2),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
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
                  style: TokenTypography.caption(color: TokenColors.textTertiary),
                ),
                Text(
                  '${account.balance.abs().toStringAsFixed(2)} ${account.currency}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: TokenColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (account.platform.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: TokenColors.bgCard,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: TokenColors.borderTag, width: 0.5),
                  ),
                  child: Text(
                    account.platform,
                    style: TokenTypography.micro(color: TokenColors.textTertiary),
                  ),
                ),
            ],
          ),
        ],
      ),
      ),
    );
  }

  /// Group accounts by institution and build widgets
  List<Widget> _buildGroupedAccountItems(BuildContext context) {
    final grouped = <String, List<AccountData>>{};
    for (final a in accounts) {
      final key = a.institutionName.isNotEmpty ? a.institutionName : '其他';
      grouped.putIfAbsent(key, () => []).add(a);
    }
    return grouped.entries.expand((entry) => [
      Padding(
        padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
        child: Text(
          entry.key,
          style: TokenTypography.caption(color: TokenColors.textTertiary),
        ),
      ),
      ...entry.value.map((account) => Padding(
        padding: const EdgeInsets.only(bottom: TokenSpacing.xl),
        child: _buildAccountItem(context, account),
      )),
    ]).toList();
  }
}
