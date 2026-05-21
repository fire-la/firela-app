import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../fire_journey/presentation/providers/use_fire_progress.dart';

/// Savings rate indicator with color-coded visual feedback
class SavingsRateIndicator extends HookWidget {
  const SavingsRateIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fireProgress = useFireProgress();

    return Watch((context) {
      final isLoading = fireProgress.isLoading;
      final hasNoGoal = fireProgress.hasNoGoal;
      final savingsRate = fireProgress.progress?.savingsRate ?? 0.0;

      if (isLoading) {
        return _buildLoadingCard();
      }

      if (hasNoGoal) {
        return _buildNoGoalCard(context, l10n);
      }

      // Determine color based on savings rate
      final Color rateColor;
      final Color backgroundColor;
      final String rateLabel;
      final IconData rateIcon;

      if (savingsRate >= 60) {
        rateColor = TokenColors.success;
        backgroundColor = TokenColors.success.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateExcellent;
        rateIcon = Icons.trending_up;
      } else if (savingsRate >= 40) {
        rateColor = TokenColors.success;
        backgroundColor = TokenColors.success.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateGood;
        rateIcon = Icons.trending_up;
      } else if (savingsRate >= 20) {
        rateColor = TokenColors.primary;
        backgroundColor = TokenColors.primary.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateFair;
        rateIcon = Icons.trending_flat;
      } else {
        rateColor = TokenColors.error;
        backgroundColor = TokenColors.error.withValues(alpha: 0.1);
        rateLabel = l10n.homeSavingsRateNeedsWork;
        rateIcon = Icons.trending_down;
      }

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
                  l10n.homeSavingsRate,
                  style: TokenTypography.h4(fontWeight: FontWeight.w600),
                ),
                Icon(
                  rateIcon,
                  size: 18,
                  color: rateColor,
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.xl),

            // Rate display
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '${savingsRate.toStringAsFixed(1)}%',
                  style: TokenTypography.h3(
                    fontWeight: FontWeight.bold,
                    color: rateColor,
                  ),
                ),
                const SizedBox(width: TokenSpacing.sm),
                Padding(
                  padding: const EdgeInsets.only(bottom: TokenSpacing.sm),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: TokenRadius.borderSm,
                    ),
                    child: Text(
                      rateLabel,
                      style: TokenTypography.caption(
                        color: rateColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.xl),

            // Progress bar
            ClipRRect(
              borderRadius: BorderRadius.circular(TokenSpacing.xs),
              child: LinearProgressIndicator(
                value: (savingsRate / 100).clamp(0.0, 1.0),
                backgroundColor: TokenColors.neutral200,
                valueColor: AlwaysStoppedAnimation<Color>(rateColor),
                minHeight: 8,
              ),
            ),
            const SizedBox(height: TokenSpacing.sm),

            // Scale labels
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0%',
                  style: TokenTypography.micro(
                    color: TokenColors.textTertiary,
                  ),
                ),
                Text(
                  '50%',
                  style: TokenTypography.micro(
                    color: TokenColors.textTertiary,
                  ),
                ),
                Text(
                  '100%',
                  style: TokenTypography.micro(
                    color: TokenColors.textTertiary,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
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

  Widget _buildNoGoalCard(BuildContext context, AppLocalizations l10n) {
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
      ),
      child: Column(
        children: [
          Icon(
            Icons.flag_outlined,
            size: 32,
            color: TokenColors.textTertiary,
          ),
          const SizedBox(height: TokenSpacing.sm),
          Text(
            l10n.homeSetGoal,
            style: TokenTypography.body(),
          ),
        ],
      ),
    );
  }
}
