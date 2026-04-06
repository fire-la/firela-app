import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../../shared/widgets/section_header.dart';
import '../../../../shared/widgets/expense_details_list.dart';

/// Income and Expense page
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
    final theme = Theme.of(context);

    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async => onRefresh?.call(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 16),

              // 月度支出卡片
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
                          l10n.monthlyExpense,
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
                            '-$monthlyExpense',
                            style: theme.textTheme.displaySmall?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          '${l10n.income} ',
                          style: theme.textTheme.bodySmall,
                        ),
                        Text(
                          monthlyIncome,
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // 预算管理和趋势
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(l10n.budgetManagement),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(l10n.expenseTrend),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // 预算进度
              _buildBudgetProgress(context, l10n),

              const SizedBox(height: 16),

              // 支出趋势图
              _buildExpenseChart(context, l10n),

              const SizedBox(height: 24),

              // 支出明细
              SectionHeader(title: l10n.expenseDetails),

              const SizedBox(height: 8),

              // 交易列表（目前展示汇总数据）
              _buildTransactionSummary(context, l10n),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionSummary(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);
    final now = DateTime.now();
    final period = '${now.year}-${now.month.toString().padLeft(2, '0')}';

    if (monthlyIncome == '0.00' && monthlyExpense == '0.00' && !isLoading) {
      return Padding(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            children: [
              Icon(Icons.receipt_long_outlined, size: 48, color: theme.colorScheme.outline),
              const SizedBox(height: 12),
              Text(
                '暂无交易记录',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
        ),
      );
    }

    final items = <ExpenseDayData>[];
    final dayItems = <ExpenseItemData>[];

    if (monthlyIncome != '0.00') {
      dayItems.add(ExpenseItemData(
        category: '收入',
        description: '$period 收入汇总',
        amount: (double.tryParse(monthlyIncome.replaceAll(',', '')) ?? 0).round(),
        icon: Icons.arrow_upward,
      ));
    }
    if (monthlyExpense != '0.00') {
      dayItems.add(ExpenseItemData(
        category: '支出',
        description: '$period 支出汇总',
        amount: -(double.tryParse(monthlyExpense.replaceAll(',', '')) ?? 0).round(),
        icon: Icons.arrow_downward,
      ));
    }

    if (dayItems.isNotEmpty) {
      items.add(ExpenseDayData(
        date: '$period 汇总',
        total: dayItems.fold(0, (sum, item) => sum + item.amount),
        items: dayItems,
      ));
    }

    return ExpenseDetailsList(expenses: items);
  }

  Widget _buildBudgetProgress(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    // 基于实际支出数据计算预算进度
    final expense = double.tryParse(monthlyExpense.replaceAll(',', '')) ?? 0;
    final budgetTotal = expense > 0 ? expense * 1.5 : 10000; // 假设预算为支出的1.5倍
    final percent = expense > 0 ? (expense / budgetTotal).clamp(0.0, 1.0) : 0.0;
    final remaining = (budgetTotal - expense).toStringAsFixed(0);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12) // Design: 12px,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.used((percent * 100).round()),
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                l10n.remaining(remaining),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            lineHeight: 6,
            percent: percent,
            progressColor: const Color(0xFF000000),
            backgroundColor: const Color(0xFFE0E0E0),
            barRadius: const Radius.circular(3),
          ),
        ],
      ),
    );
  }

  Widget _buildExpenseChart(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    return Container(
      height: 140,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12) // Design: 12px,
      ),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (value) => FlLine(
              color: Colors.grey.shade300,
              strokeWidth: 1,
            ),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  return Text(
                    value.toInt().toString(),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final now = DateTime.now();
                  final labels = [
                    '${now.month}/1',
                    '${now.month}/10',
                    '${now.month}/15',
                    '${now.month}/20',
                  ];
                  if (value.toInt() < labels.length) {
                    return Text(
                      labels[value.toInt()],
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    );
                  }
                  return const Text('');
                },
              ),
            ),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
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
              color: const Color(0xFF000000),
              barWidth: 2,
              dotData: FlDotData(
                show: true,
                getDotPainter: (spot, percent, barData, index) {
                  return FlDotCirclePainter(
                    radius: 3,
                    color: const Color(0xFF000000),
                    strokeWidth: 0,
                  );
                },
              ),
              belowBarData: BarAreaData(show: false),
            ),
          ],
        ),
      ),
    );
  }
}
