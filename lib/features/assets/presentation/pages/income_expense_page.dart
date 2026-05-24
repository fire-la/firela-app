import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../../../../shared/widgets/section_header.dart';

class IncomeExpensePage extends StatelessWidget {
  const IncomeExpensePage({
    super.key,
    required this.isLoading,
    required this.monthlyIncome,
    required this.monthlyExpense,
    required this.currency,
    this.error,
    this.onRefresh,
  });

  final bool isLoading;
  final String monthlyIncome;
  final String monthlyExpense;
  final String currency;
  final String? error;
  final VoidCallback? onRefresh;

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

              // NetWorthDisplay: expense + income
              NetWorthDisplay(
                leftLabel: '本月实际支出(元)',
                leftValue: isLoading ? '—' : '-$monthlyExpense',
                rightLabel: '收入(元)',
                rightValue: isLoading ? '—' : '+$monthlyIncome',
              ),
              const SizedBox(height: TokenSpacing.xl),

              // DonutChartCard + ChartCard row
              Row(
                children: [
                  Expanded(
                    child: DonutChartCard(
                      title: '支出分类',
                      centerText: isLoading ? '—' : monthlyExpense,
                      sections: _buildDonutSections(),
                      legends: _buildDonutLegends(),
                    ),
                  ),
                  const SizedBox(width: TokenSpacing.xl),
                  Expanded(
                    child: ChartCard(
                      title: '支出变化趋势',
                      chartWidget: _buildLineChart(),
                      bottomLeftLabel: _getCurrentMonth(),
                      bottomRightLabel: isLoading
                          ? null
                          : '-$monthlyExpense',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Section header
              SectionHeader(
                title: l10n.expenseDetails,
                trailing: '查看全部',
                onTrailingTap: () => context.push(RouteNames.transactions),
              ),
              const SizedBox(height: TokenSpacing.xl),

              // Transaction list using ListTileCards
              if (monthlyIncome == '0.00' && monthlyExpense == '0.00' && !isLoading)
                Padding(
                  padding: const EdgeInsets.all(TokenSpacing.xxl),
                  child: Column(
                    children: [
                      Icon(Icons.receipt_long_outlined, size: 48, color: TokenColors.textTertiary),
                      const SizedBox(height: TokenSpacing.lg),
                      Text(
                        '暂无交易记录',
                        style: TokenTypography.body(color: TokenColors.textTertiary),
                      ),
                    ],
                  ),
                )
              else ...[
                ListTileCard(
                  leadingIcon: Icons.arrow_downward,
                  title: '支出',
                  subtitle: '${_getCurrentPeriod()} 支出汇总',
                  onTap: () {},
                ),
                const SizedBox(height: TokenSpacing.sm),
                ListTileCard(
                  leadingIcon: Icons.arrow_upward,
                  title: '收入',
                  subtitle: '${_getCurrentPeriod()} 收入汇总',
                  onTap: () {},
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _getCurrentPeriod() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}';
  }

  String _getCurrentMonth() {
    final now = DateTime.now();
    return '${now.month}月';
  }

  List<PieChartSectionData> _buildDonutSections() {
    if (isLoading) {
      return [
        PieChartSectionData(value: 1, color: TokenColors.neutral200, radius: 30, title: ''),
      ];
    }
    return [
      PieChartSectionData(value: 40, color: TokenColors.chartAmber, radius: 30, title: ''),
      PieChartSectionData(value: 30, color: TokenColors.chartBlue, radius: 30, title: ''),
      PieChartSectionData(value: 30, color: TokenColors.chartGreen, radius: 30, title: ''),
    ];
  }

  List<DonutLegendItem> _buildDonutLegends() {
    return [
      DonutLegendItem(label: '进阶', color: TokenColors.chartAmber),
      DonutLegendItem(label: '稳健', color: TokenColors.chartBlue),
      DonutLegendItem(label: '活期', color: TokenColors.chartGreen),
    ];
  }

  Widget _buildLineChart() {
    return LineChart(
      LineChartData(
        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),
        lineBarsData: [
          LineChartBarData(
            spots: const [
              FlSpot(0, 800),
              FlSpot(1, 1000),
              FlSpot(2, 950),
              FlSpot(3, 1100),
            ],
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
}
