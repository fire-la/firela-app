import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../fire_journey/presentation/providers/use_fire_progress.dart';

/// Savings rate indicator with color-coded visual feedback
class SavingsRateIndicator extends HookWidget {
  const SavingsRateIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final fireProgress = useFireProgress();

    return Watch((context) {
      final isLoading = fireProgress.isLoading;
      final hasNoGoal = fireProgress.hasNoGoal;
      final savingsRate = fireProgress.progress?.savingsRate ?? 0.0;

      if (isLoading) {
        return _buildLoadingCard(theme);
      }

      if (hasNoGoal) {
        return _buildNoGoalCard(context, l10n, theme);
      }

      // Determine color based on savings rate
      final Color rateColor;
      final Color backgroundColor;
      final String rateLabel;
      final IconData rateIcon;

      if (savingsRate >= 60) {
        rateColor = Colors.green;
        backgroundColor = Colors.green.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateExcellent;
        rateIcon = Icons.trending_up;
      } else if (savingsRate >= 40) {
        rateColor = Colors.lightGreen;
        backgroundColor = Colors.lightGreen.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateGood;
        rateIcon = Icons.trending_up;
      } else if (savingsRate >= 20) {
        rateColor = Colors.orange;
        backgroundColor = Colors.orange.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateFair;
        rateIcon = Icons.trending_flat;
      } else {
        rateColor = Colors.red;
        backgroundColor = Colors.red.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateNeedsWork;
        rateIcon = Icons.trending_down;
      }

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
                  l10n.homeSavingsRate,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  rateIcon,
                  size: 18,
                  color: rateColor,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Rate display
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${savingsRate.toStringAsFixed(1)}%',
                  style: theme.textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: rateColor,
                  ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      rateLabel,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: rateColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Progress bar
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: (savingsRate / 100).clamp(0.0, 1.0),
                backgroundColor: theme.colorScheme.surfaceContainerHighest,
                valueColor: AlwaysStoppedAnimation<Color>(rateColor),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: 8),

            // Scale labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0%',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                Text(
                  '50%',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                Text(
                  '100%',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
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

  Widget _buildNoGoalCard(BuildContext context, AppLocalizations l10n, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(
            Icons.flag_outlined,
            size: 32,
            color: theme.colorScheme.outline,
          ),
          const SizedBox(height: 8),
          Text(
            l10n.homeSetGoal,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
