import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../../core/design_tokens/design_tokens.dart';
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
              const SizedBox(height: TokenSpacing.xl),

              // 净资产卡片
              Container(
                margin: const EdgeInsets.fromLTRB(TokenSpacing.xl, TokenSpacing.sm, TokenSpacing.xl, TokenSpacing.xl),
                padding: const EdgeInsets.all(TokenSpacing.xxl),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: TokenRadius.borderLg,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.totalAssets,
                          style: TokenTypography.body(color: TokenColors.textTertiary),
                        ),
                        const Icon(Icons.visibility_outlined, size: 20),
                      ],
                    ),
                    const SizedBox(height: TokenSpacing.lg),
                    isLoading
                        ? const SizedBox(
                            height: 36,
                            child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                          )
                        : Text(
                            netWorth,
                            style: TokenTypography.h2(fontWeight: FontWeight.bold),
                          ),
                    const SizedBox(height: TokenSpacing.sm),
                    Row(
                      children: [
                        Text(
                          '${l10n.assets} ',
                          style: TokenTypography.caption(),
                        ),
                        Text(
                          totalAssets,
                          style: TokenTypography.caption(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(width: TokenSpacing.xxl),
                        Text(
                          '${l10n.liabilities} ',
                          style: TokenTypography.caption(),
                        ),
                        Text(
                          totalLiabilities == '0.00' ? '0.00' : '-$totalLiabilities',
                          style: TokenTypography.caption(fontWeight: FontWeight.w500),
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
                const SizedBox(height: TokenSpacing.sm),
                SectionHeader(
                  title: '账户列表',
                  trailing: '${accounts.length}个',
                ),
                const SizedBox(height: TokenSpacing.sm),
                ...accounts.map((account) => _buildAccountItem(context, account)),
                const SizedBox(height: TokenSpacing.xl),
              ],

              const SizedBox(height: TokenSpacing.sm),

              // 资产分布
              SectionHeader(
                title: l10n.assetDistribution,
                trailing: l10n.statistics,
                onTrailingTap: onStatisticsTap,
              ),
              const SizedBox(height: TokenSpacing.sm),
              _buildAssetDistribution(context, l10n),

              const SizedBox(height: TokenSpacing.xxl),

              // 资产变动趋势
              SectionHeader(
                title: l10n.assetChange,
                trailing: l10n.statistics,
                onTrailingTap: onStatisticsTap,
              ),
              const SizedBox(height: TokenSpacing.sm),
              _buildAssetChart(context, l10n),

              const SizedBox(height: TokenSpacing.xxl),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAccountItem(BuildContext context, AccountData account) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.xs),
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
              borderRadius: TokenRadius.borderSm,
            ),
            child: Icon(
              _getPlatformIcon(account.platform),
              size: 20,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  account.displayName,
                  style: TokenTypography.body(fontWeight: FontWeight.w500),
                ),
                if (account.platform.isNotEmpty)
                  Text(
                    account.platform,
                    style: TokenTypography.caption(color: TokenColors.textTertiary),
                  ),
              ],
            ),
          ),
          Text(
            '${account.balance >= 0 ? '' : '-'}${account.balance.abs().toStringAsFixed(2)} ${account.currency}',
            style: TokenTypography.body(fontWeight: FontWeight.w600),
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
              TokenColors.textPrimary,
              TokenColors.neutral700,
              TokenColors.neutral700,
              TokenColors.neutral400,
              TokenColors.neutral400,
              TokenColors.neutral200,
            ];
            return PieChartSectionData(
              value: entry.value.balance.abs(),
              title: '',
              color: colors[entry.key % colors.length],
              radius: 50,
            );
          }).toList()
        : [
            PieChartSectionData(value: 1, title: '', color: TokenColors.neutral200, radius: 50),
          ];

    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: TokenRadius.borderSm,
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
                          style: TokenTypography.caption(),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )).toList()
                  : [
                      Text('暂无数据', style: TokenTypography.caption()),
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
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Period selector
          _buildPeriodSelector(context, l10n),
          const SizedBox(height: TokenSpacing.xl),
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
                              color: TokenColors.textPrimary,
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
                          style: TokenTypography.caption(color: TokenColors.textTertiary),
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
            padding: const EdgeInsets.only(right: TokenSpacing.sm),
            child: GestureDetector(
              onTap: () => onPeriodChanged?.call(period.$1),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg, vertical: TokenSpacing.xs),
                decoration: BoxDecoration(
                  color: isSelected ? TokenColors.textPrimary : Colors.transparent,
                  borderRadius: TokenRadius.borderLg,
                  border: Border.all(
                    color: isSelected ? TokenColors.textPrimary : TokenColors.textTertiary,
                  ),
                ),
                child: Text(
                  period.$2,
                  style: TokenTypography.caption(
                    color: isSelected ? TokenColors.white : theme.colorScheme.onSurface,
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
