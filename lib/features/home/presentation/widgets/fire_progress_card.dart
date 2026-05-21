import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../fire_journey/presentation/providers/use_fire_progress.dart';
import '../../../../shared/widgets/loading_indicator.dart';

/// FIRE progress card widget displaying progress toward FIRE
class FireProgressCard extends HookWidget {
  const FireProgressCard({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fireProgress = useFireProgress();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderLg,
          boxShadow: TokenShadows.cardList,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeFireProgress,
                  style: TokenTypography.h4(fontWeight: FontWeight.w600),
                ),
                if (fireProgress.isLoading)
                  const LoadingIndicator()
                else
                  Icon(Icons.local_fire_department, size: 18, color: TokenColors.textTertiary),
              ],
            ),
            const SizedBox(height: TokenSpacing.lg),
            Watch((context) {
              final hasNoGoal = fireProgress.hasNoGoal;
              final progressData = fireProgress.progress;
              final savingsRate = progressData?.savingsRate ?? 0.0;
              final yearsToFire = progressData?.yearsToFire;
              final progressValue = progressData?.progressPercentage ?? 0.0;

              if (fireProgress.isLoading) {
                return const LoadingIndicator();
              }

              if (hasNoGoal) {
                // No goal state
                return Container(
                  padding: const EdgeInsets.symmetric(vertical: TokenSpacing.sm),
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
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: TokenSpacing.sm),
                      TextButton(
                        onPressed: onTap,
                        style: TextButton.styleFrom(
                          foregroundColor: TokenColors.textAccent,
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        child: Text(l10n.homeSetGoal),
                      ),
                    ],
                  ),
                );
              }

              // Has goal - show progress
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Progress percentage
                  Row(
                    children: [
                      Text(
                        '${progressValue.toStringAsFixed(1)}%',
                        style: TokenTypography.h2(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: TokenSpacing.xs),
                      Icon(
                        progressValue >= 100
                            ? Icons.check_circle
                            : progressValue > 0
                                ? Icons.trending_up
                                : Icons.trending_down,
                        size: 18,
                        color: progressValue >= 100
                            ? TokenColors.textAccent
                            : progressValue > 0
                                ? TokenColors.success
                                : TokenColors.error,
                      ),
                    ],
                  ),
                  const SizedBox(height: TokenSpacing.lg),

                  // Years to FIRE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.homeYearsToFire,
                            style: TokenTypography.caption(
                              color: TokenColors.textTertiary,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            yearsToFire != null
                              ? l10n.homeYearsToFireValue(yearsToFire.toStringAsFixed(1))
                              : '--',
                            style: TokenTypography.h4(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Savings rate
                  const SizedBox(height: TokenSpacing.lg),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.homeSavingsRate,
                        style: TokenTypography.caption(
                          color: TokenColors.textTertiary,
                        ),
                      ),
                      Text(
                        '${savingsRate.toStringAsFixed(1)}%',
                        style: TokenTypography.h4(
                          color: savingsRate > 50
                            ? TokenColors.success
                            : TokenColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  // Arrow indicator
                  Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: TokenColors.textTertiary,
                    ),
                  ),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
