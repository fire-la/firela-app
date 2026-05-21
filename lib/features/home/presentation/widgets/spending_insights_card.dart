import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../providers/use_home_data.dart';

/// Spending insights card showing income vs expense comparison
class SpendingInsightsCard extends HookWidget {
  const SpendingInsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final homeData = useHomeData();

    return Watch((context) {
      final isLoading = homeData.isLoading;
      final monthlyIncome = homeData.monthlyIncome;
      final monthlyExpense = homeData.monthlyExpense;
      final netSavings = monthlyIncome - monthlyExpense;
      final savingsRate = monthlyIncome > 0 ? (netSavings / monthlyIncome * 100) : 0.0;

      if (isLoading) {
        return _buildLoadingCard();
      }

      // Determine spending status
      final bool isOverspending = netSavings < 0;
      final Color statusColor = isOverspending ? TokenColors.error : TokenColors.success;
      final IconData statusIcon = isOverspending ? Icons.warning_amber : Icons.check_circle_outline;

      return Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderLg,
          boxShadow: TokenShadows.cardList,
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
                  style: TokenTypography.h4(fontWeight: FontWeight.w600),
                ),
                Icon(
                  statusIcon,
                  size: 20,
                  color: statusColor,
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.xl),

            // Income vs Expense bars
            _buildComparisonBar(
              label: l10n.homeIncomeThisMonth,
              amount: monthlyIncome,
              maxAmount: monthlyIncome > monthlyExpense ? monthlyIncome : monthlyExpense,
              color: TokenColors.success,
            ),
            const SizedBox(height: TokenSpacing.lg),

            _buildComparisonBar(
              label: l10n.homeExpenseThisMonth,
              amount: monthlyExpense,
              maxAmount: monthlyIncome > monthlyExpense ? monthlyIncome : monthlyExpense,
              color: TokenColors.error,
            ),
            const SizedBox(height: TokenSpacing.xl),

            // Divider
            Divider(color: TokenColors.textTertiary.withValues(alpha: 0.2)),
            const SizedBox(height: TokenSpacing.xl),

            // Net savings summary
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeNetSavings,
                  style: TokenTypography.body(
                    color: TokenColors.textTertiary,
                  ),
                ),
                Text(
                  _formatCurrency(netSavings),
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.bold,
                    color: statusColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.sm),

            // Savings rate summary
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeSavingsRateLabel,
                  style: TokenTypography.body(
                    color: TokenColors.textTertiary,
                  ),
                ),
                Text(
                  '${savingsRate.toStringAsFixed(1)}%',
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.w600,
                    color: statusColor,
                  ),
                ),
              ],
            ),

            // Warning message if overspending
            if (isOverspending) ...[
              const SizedBox(height: TokenSpacing.lg),
              Container(
                padding: const EdgeInsets.all(TokenSpacing.lg),
                decoration: BoxDecoration(
                  color: TokenColors.error.withValues(alpha: 0.1),
                  borderRadius: TokenRadius.borderSm,
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      size: 16,
                      color: TokenColors.error,
                    ),
                    const SizedBox(width: TokenSpacing.sm),
                    Expanded(
                      child: Text(
                        l10n.homeOverspendingWarning,
                        style: TokenTypography.caption(
                          color: TokenColors.error,
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
              style: TokenTypography.caption(
                color: TokenColors.textTertiary,
              ),
            ),
            Text(
              '¥${_formatCurrency(amount)}',
              style: TokenTypography.caption(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: TokenSpacing.xs),
        Stack(
          children: [
            Container(
              height: 8,
              width: double.infinity,
              decoration: BoxDecoration(
                color: TokenColors.neutral200,
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

  Widget _buildLoadingCard() {
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
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
