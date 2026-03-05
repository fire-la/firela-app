import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../domain/models/net_worth_history_point.dart';
import 'assets_tabs_page.dart';

/// Assets and Liabilities page
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
    final theme = Theme.of(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => onRefresh?.call(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 16),

              // 净资产卡片
              Container(
                margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.totalAssets,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                        const Icon(Icons.visibility_outlined, size: 20),
                      ],
                    ),
                    const SizedBox(height: 12),
                    isLoading
                        ? const SizedBox(
                            height: 36,
                            child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                          )
                        : Text(
                            netWorth,
                            style: theme.textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          '${l10n.assets} ',
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          totalAssets,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 24),
                        Text(
                          '${l10n.liabilities} ',
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          totalLiabilities == '0.00' ? '0.00' : '-$totalLiabilities',
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: onDetailsTap,
                          child: Text(l10n.details),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // 账户列表
              if (accounts.isNotEmpty) ...[
                const SizedBox(height: 8),
                SectionHeader(
                  title: '账户列表',
                  trailing: '${accounts.length}个',
                ),
                const SizedBox(height: 8),
                ...accounts.map((account) => _buildAccountItem(context, account)),
                const SizedBox(height: 16),
              ],

              const SizedBox(height: 8),

              // 资产分布
              SectionHeader(
                title: l10n.assetDistribution,
                trailing: l10n.statistics,
                onTrailingTap: onStatisticsTap,
              ),
              const SizedBox(height: 8),
              _buildAssetDistribution(context, l10n),

              const SizedBox(height: 24),

              // 资产变动趋势
              SectionHeader(
                title: l10n.assetChange,
                trailing: l10n.statistics,
                onTrailingTap: onStatisticsTap,
              ),
              const SizedBox(height: 8),
              _buildAssetChart(context, l10n),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountItem(BuildContext context, AccountData account) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              _getPlatformIcon(account.platform),
              size: 20,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.displayName,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                if (account.platform.isNotEmpty)
                  Text(
                    account.platform,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
              ],
            ),
          ),
          Text(
            '${account.balance >= 0 ? '' : '-'}${account.balance.abs().toStringAsFixed(2)} ${account.currency}',
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
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

  Widget _buildAssetDistribution(BuildContext context, AppLocalizations l10n) {
    // 根据账户数据生成饼图
    final hasData = accounts.isNotEmpty;
    final sections = hasData
        ? accounts.asMap().entries.map((entry) {
            final colors = [
              const Color(0xFF000000),
              const Color(0xFF444444),
              const Color(0xFF666666),
              const Color(0xFF888888),
              const Color(0xFFAAAAAA),
              const Color(0xFFBDBDBD),
            ];
            return PieChartSectionData(
              value: entry.value.balance.abs(),
              title: '',
              color: colors[entry.key % colors.length],
              radius: 50,
            );
          }).toList()
        : [
            PieChartSectionData(value: 1, title: '', color: const Color(0xFFBDBDBD), radius: 50),
          ];

    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PieChart(
              PieChartData(
                sections: sections,
                sectionsSpace: 2,
                centerSpaceRadius: 0,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: hasData
                  ? accounts.take(3).map((a) => Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          a.displayName,
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )).toList()
                  : [
                      Text('暂无数据', style: Theme.of(context).textTheme.bodySmall),
                    ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAssetChart(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    // Convert history points to FlSpot
    final spots = _convertHistoryToSpots(netWorthHistory);
    final hasData = spots.isNotEmpty;

    return Container(
      height: 220,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Period selector
          _buildPeriodSelector(context, l10n),
          const SizedBox(height: 16),
          // Chart or empty/loading state
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
                : hasData
                    ? LineChart(
                        LineChartData(
                          gridData: const FlGridData(show: false),
                          titlesData: const FlTitlesData(show: false),
                          borderData: FlBorderData(show: false),
                          lineBarsData: [
                            LineChartBarData(
                              spots: spots,
                              isCurved: true,
                              color: const Color(0xFF000000),
                              barWidth: 2,
                              dotData: const FlDotData(show: false),
                              belowBarData: BarAreaData(show: false),
                            ),
                          ],
                        ),
                      )
                    : Center(
                        child: Text(
                          l10n.loading,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                      ),
          ),
        ],
      ),
    );
  }

  /// Build period selector widget (1M, 3M, 6M, 1Y)
  Widget _buildPeriodSelector(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);
    final periods = [
      (1, l10n.period1Month),
      (3, l10n.period3Months),
      (6, l10n.period6Months),
      (12, l10n.period1Year),
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: periods.map((period) {
          final isSelected = selectedPeriodMonths == period.$1;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: GestureDetector(
              onTap: () => onPeriodChanged?.call(period.$1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xFF000000) : Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: isSelected ? const Color(0xFF000000) : theme.colorScheme.outline,
                  ),
                ),
                child: Text(
                  period.$2,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isSelected ? const Color(0xFFFFFFFF) : theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  /// Convert NetWorthHistoryPoint list to FlSpot list for chart
  List<FlSpot> _convertHistoryToSpots(List<NetWorthHistoryPoint> history) {
    if (history.isEmpty) return [];

    // Sort by date ascending
    final sortedHistory = List<NetWorthHistoryPoint>.from(history)
      ..sort((a, b) => a.date.compareTo(b.date));

    // Find min and max values for normalization
    final values = sortedHistory.map((h) => h.netWorth).toList();
    final minValue = values.reduce((a, b) => a < b ? a : b);
    final maxValue = values.reduce((a, b) => a > b ? a : b);
    final range = maxValue - minValue;

    // Convert to FlSpot with normalized Y values (0-10 scale)
    return sortedHistory.asMap().entries.map((entry) {
      final index = entry.key.toDouble();
      final value = entry.value.netWorth;
      // Normalize to 0-10 scale for better visualization
      final normalizedY = range > 0 ? ((value - minValue) / range) * 10 : 5.0;
      return FlSpot(index, normalizedY);
    }).toList();
  }
}
