import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../providers/use_home_data.dart';

/// Spending insights card showing income vs expense comparison
class SpendingInsightsCard extends HookWidget {
  const SpendingInsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final homeData = useHomeData();

    return Watch((context) {
      final isLoading = homeData.isLoading;
      final monthlyIncome = homeData.monthlyIncome;
      final monthlyExpense = homeData.monthlyExpense;
      final netSavings = monthlyIncome - monthlyExpense;
      final savingsRate = monthlyIncome > 0 ? (netSavings / monthlyIncome * 100) : 0.0;

      if (isLoading) {
        return _buildLoadingCard(theme);
      }

      // Determine spending status
      final bool isOverspending = netSavings < 0;
      final Color statusColor = isOverspending ? Colors.red : Colors.green;
      final IconData statusIcon = isOverspending ? Icons.warning_amber : Icons.check_circle_outline;

      return Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeSpendingInsights,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  statusIcon,
                  size: 20,
                  color: statusColor,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Income vs Expense bars
            _buildComparisonBar(
              theme: theme,
              label: l10n.homeIncomeThisMonth,
              amount: monthlyIncome,
              maxAmount: monthlyIncome > monthlyExpense ? monthlyIncome : monthlyExpense,
              color: Colors.green,
            ),
            const SizedBox(height: 12),

            _buildComparisonBar(
              theme: theme,
              label: l10n.homeExpenseThisMonth,
              amount: monthlyExpense,
              maxAmount: monthlyIncome > monthlyExpense ? monthlyIncome : monthlyExpense,
              color: Colors.red,
            ),
            const SizedBox(height: 16),

            // Divider
            Divider(color: theme.colorScheme.outline.withValues(alpha: 0.2)),
            const SizedBox(height: 16),

            // Net savings summary
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeNetSavings,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                Text(
                  _formatCurrency(netSavings),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // Savings rate summary
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeSavingsRateLabel,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                Text(
                  '${savingsRate.toStringAsFixed(1)}%',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: statusColor,
                  ),
                ),
              ],
            ),

            // Warning message if overspending
            if (isOverspending) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      size: 16,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        l10n.homeOverspendingWarning,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      );
    });
  }

  Widget _buildComparisonBar({
    required ThemeData theme,
    required String label,
    required double amount,
    required double maxAmount,
    required Color color,
  }) {
    final barWidth = maxAmount > 0 ? (amount / maxAmount).clamp(0.0, 1.0) : 0.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
            Text(
              '¥${_formatCurrency(amount)}',
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Stack(
          children: [
            Container(
              height: 8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            FractionallySizedBox(
              widthFactor: barWidth,
              child: Container(
                height: 8,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoadingCard(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      ),
    );
  }

  String _formatCurrency(double value) {
    if (value == 0) return '0.00';
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];

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
