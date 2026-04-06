import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
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
    final theme = Theme.of(context);
    final fireProgress = useFireProgress();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              blurRadius: 8,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeFireProgress,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (fireProgress.isLoading)
                  const LoadingIndicator()
                else
                  Icon(Icons.local_fire_department, size: 18, color: theme.colorScheme.outline),
              ],
            ),
            const SizedBox(height: 12),
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
                  padding: const EdgeInsets.symmetric(vertical: 8),
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
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      TextButton(
                        onPressed: onTap,
                        style: TextButton.styleFrom(
                          foregroundColor: theme.colorScheme.primary,
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
                        style: theme.textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        progressValue >= 100
                            ? Icons.check_circle
                            : progressValue > 0
                                ? Icons.trending_up
                                : Icons.trending_down,
                        size: 18,
                        color: progressValue >= 100
                            ? theme.colorScheme.primary
                            : progressValue > 0
                                ? Colors.green
                                : Colors.red,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),

                  // Years to FIRE
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.homeYearsToFire,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            yearsToFire != null
                              ? l10n.homeYearsToFireValue(yearsToFire.toStringAsFixed(1))
                              : '--',
                            style: theme.textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Savings rate
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.homeSavingsRate,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                      Text(
                        '${savingsRate.toStringAsFixed(1)}%',
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: savingsRate > 50
                            ? Colors.green
                            : Colors.orange,
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
                      color: theme.colorScheme.outline,
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
