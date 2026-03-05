import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/router/route_names.dart';
import '../../../fire_journey/presentation/providers/use_fire_progress.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';
import '../providers/use_home_data.dart';

/// Context-aware recommendations section with actionable tips
class RecommendationsSection extends HookWidget {
  const RecommendationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final homeData = useHomeData();
    final fireProgress = useFireProgress();

    return Watch((context) {
      final recommendations = _buildRecommendations(
        context: context,
        l10n: l10n,
        homeData: homeData,
        fireProgress: fireProgress,
      );

      if (recommendations.isEmpty) {
        return const SizedBox.shrink();
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Text(
            l10n.homeRecommendations,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 12),

          // Recommendation cards
          ...recommendations.map((rec) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: _RecommendationCard(
                  icon: rec.icon,
                  title: rec.title,
                  description: rec.description,
                  onTap: rec.onTap,
                  iconColor: rec.iconColor,
                  iconBackgroundColor: rec.iconBackgroundColor,
                ),
              )),
        ],
      );
    });
  }

  List<_Recommendation> _buildRecommendations({
    required BuildContext context,
    required AppLocalizations l10n,
    required HomeDataResult homeData,
    required FireProgressResult fireProgress,
  }) {
    final recommendations = <_Recommendation>[];

    // Priority 1: No FIRE goal set
    if (fireProgress.hasNoGoal) {
      recommendations.add(_Recommendation(
        icon: Icons.flag_outlined,
        title: l10n.homeRecSetFireGoal,
        description: l10n.homeRecSetFireGoalDesc,
        iconColor: Colors.deepPurple,
        iconBackgroundColor: Colors.deepPurple.withValues(alpha: 0.1),
        onTap: () => context.go(RouteNames.home),
      ));
    }

    // Priority 2: Pending reviews
    final pendingCount = pendingCountByLevelSignal.value['total'] ?? 0;
    if (pendingCount > 0) {
      recommendations.add(_Recommendation(
        icon: Icons.fact_check_outlined,
        title: l10n.homeRecReviewPending(pendingCount),
        description: l10n.homeRecReviewPendingDesc,
        iconColor: Colors.orange,
        iconBackgroundColor: Colors.orange.withValues(alpha: 0.1),
        onTap: () => context.push(RouteNames.reviewCenter),
      ));
    }

    // Priority 3: Low savings rate (< 20%)
    final savingsRate = fireProgress.progress?.savingsRate ?? 0.0;
    if (!fireProgress.hasNoGoal && savingsRate < 20 && savingsRate >= 0) {
      recommendations.add(_Recommendation(
        icon: Icons.savings_outlined,
        title: l10n.homeRecIncreaseSavings,
        description: l10n.homeRecIncreaseSavingsDesc,
        iconColor: Colors.red,
        iconBackgroundColor: Colors.red.withValues(alpha: 0.1),
        onTap: () => context.go(RouteNames.accounts),
      ));
    }

    // Priority 4: Years to FIRE > 20
    final yearsToFire = fireProgress.progress?.yearsToFire ?? 0;
    if (!fireProgress.hasNoGoal && yearsToFire > 20) {
      recommendations.add(_Recommendation(
        icon: Icons.timeline_outlined,
        title: l10n.homeRecReduceTimeline,
        description: l10n.homeRecReduceTimelineDesc,
        iconColor: Colors.blue,
        iconBackgroundColor: Colors.blue.withValues(alpha: 0.1),
        onTap: () => context.go(RouteNames.home),
      ));
    }

    // Priority 5: Negative savings rate (overspending)
    final netSavings = homeData.monthlyIncome - homeData.monthlyExpense;
    if (netSavings < 0 && !fireProgress.hasNoGoal) {
      recommendations.add(_Recommendation(
        icon: Icons.warning_amber_outlined,
        title: l10n.homeRecReduceSpending,
        description: l10n.homeRecReduceSpendingDesc,
        iconColor: Colors.red,
        iconBackgroundColor: Colors.red.withValues(alpha: 0.1),
        onTap: () => context.go(RouteNames.accounts),
      ));
    }

    // Return top 3 most relevant
    return recommendations.take(3).toList();
  }
}

/// Recommendation data model
class _Recommendation {
  const _Recommendation({
    required this.icon,
    required this.title,
    required this.description,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final Color iconColor;
  final Color iconBackgroundColor;
  final VoidCallback onTap;
}

/// Recommendation card widget
class _RecommendationCard extends StatelessWidget {
  const _RecommendationCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final Color iconColor;
  final Color iconBackgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.03),
              blurRadius: 4,
              offset: const Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          children: [
            // Icon container
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: iconBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                size: 20,
                color: iconColor,
              ),
            ),
            const SizedBox(width: 12),

            // Text content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    description,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                ],
              ),
            ),

            // Arrow indicator
            Icon(
              Icons.chevron_right,
              size: 20,
              color: theme.colorScheme.outline,
            ),
          ],
        ),
      ),
    );
  }
}
