import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../providers/use_fire_progress.dart';
import '../widgets/milestone_badge.dart';
import '../widgets/shimmer_loading.dart';
import '../widgets/animated_number.dart';
import '../widgets/fire_projection_chart.dart';

/// FIRE Journey page showing progress and milestones
class FireJourneyPage extends HookWidget {
  const FireJourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final fireProgress = useFireProgress();

    // Show celebration dialog for newly achieved milestones
    useEffect(() {
      if (fireProgress.newlyAchievedMilestones.isNotEmpty) {
        Future.microtask(() {
          if (context.mounted) {
            _showCelebrationDialog(
              context,
              l10n,
              fireProgress.newlyAchievedMilestones,
            );
          }
        });
      }
      return null;
    }, [fireProgress.newlyAchievedMilestones.length]);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'IGN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: false,
      ),
      body: fireProgress.isLoading
          ? _buildShimmerLoadingState(context, l10n)
          : fireProgress.hasNoGoal
              ? _buildEmptyState(context, l10n)
              : _buildContent(context, l10n, fireProgress),
    );
  }

  void _showCelebrationDialog(
    BuildContext context,
    AppLocalizations l10n,
    List<dynamic> milestones,
  ) {
    HapticFeedback.heavyImpact();

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Row(
          children: [
            const Icon(Icons.celebration, color: Colors.black),
            const SizedBox(width: 8),
            Text(l10n.milestoneAchieved),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.celebrateProgress,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            ...milestones.map((m) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: MilestoneBadge(milestone: m),
            )),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              HapticFeedback.lightImpact();
              Navigator.of(context).pop();
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerLoadingState(BuildContext context, AppLocalizations l10n) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Shimmer journey card
          ShimmerLoading(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Shimmer fire map
          ShimmerLoading(
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Shimmer net assets and daily income
          Row(
            children: [
              Expanded(
                child: ShimmerLoading(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ShimmerLoading(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flag_outlined,
              size: 64,
              color: theme.colorScheme.outline,
            ),
            const SizedBox(height: 16),
            Text(
              l10n.fireGoal,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.watchFirePlan,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: () {
                HapticFeedback.mediumImpact();
                // TODO: Navigate to goal setting page
              },
              icon: const Icon(Icons.add),
              label: Text(l10n.fireGoal),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    AppLocalizations l10n,
    FireProgressResult fireProgress,
  ) {
    final theme = Theme.of(context);

    // Build projection scenarios
    final currentNetWorth = fireProgress.progress?.currentNetWorth ?? 0;
    final monthlySavings = fireProgress.progress?.monthlySavings ?? 0;
    final fireNumber = fireProgress.goal?.targetAmount ?? 0;

    final scenarios = [
      ProjectionScenario(
        name: l10n.baselineScenario,
        monthlySavings: monthlySavings,
        annualReturn: 0.07, // 7% default
        color: Colors.black,
      ),
      ProjectionScenario(
        name: l10n.aggressiveScenario,
        monthlySavings: monthlySavings * 1.2, // 20% more savings
        annualReturn: 0.10, // 10% return
        color: Colors.green,
      ),
    ];

    return RefreshIndicator(
      onRefresh: () async {
        HapticFeedback.mediumImpact();
        if (fireProgress.refresh != null) {
          await fireProgress.refresh!();
        }
      },
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            // Journey progress card
            _buildJourneyCard(context, l10n, fireProgress),

            const SizedBox(height: 16),

            // FIRE journey map
            _buildFireMap(context, l10n, fireProgress),

            const SizedBox(height: 16),

            // FIRE Projection Chart
            FireProjectionChart(
              currentNetWorth: currentNetWorth,
              fireNumber: fireNumber,
              scenarios: scenarios,
              targetYears: fireProgress.progress?.yearsToFire,
              isLoading: false,
            ),

            const SizedBox(height: 16),

            // Net assets and daily income
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.netAssets,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 8),
                          AnimatedNumber(
                            value: fireProgress.progress?.currentNetWorth ?? 0,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.dailyIncome,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: theme.colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 8),
                          AnimatedNumber(
                            value: (fireProgress.progress?.monthlySavings ?? 0) / 30,
                            style: theme.textTheme.headlineMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildJourneyCard(
    BuildContext context,
    AppLocalizations l10n,
    FireProgressResult fireProgress,
  ) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          // Avatar
          const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFFE0E0E0),
            child: Icon(Icons.person, size: 32, color: Color(0xFF757575)),
          ),

          const SizedBox(width: 16),

          // Days info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.fireJourneyDays(fireProgress.journeyDays),
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.watchFirePlan,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),

          // Progress indicators
          Column(
            children: [
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 6,
                percent: fireProgress.progressPercent,
                center: Text(
                  l10n.progress,
                  style: theme.textTheme.bodySmall,
                ),
                progressColor: const Color(0xFF000000),
                backgroundColor: const Color(0xFFE0E0E0),
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                animationDuration: 500,
              ),
            ],
          ),

          const SizedBox(width: 12),

          Column(
            children: [
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 6,
                percent: fireProgress.safetyPercent,
                center: Text(
                  l10n.safety,
                  style: theme.textTheme.bodySmall,
                ),
                progressColor: const Color(0xFF000000),
                backgroundColor: const Color(0xFFE0E0E0),
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                animationDuration: 500,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFireMap(
    BuildContext context,
    AppLocalizations l10n,
    FireProgressResult fireProgress,
  ) {
    final theme = Theme.of(context);
    final currentNetWorth = fireProgress.progress?.currentNetWorth ?? 0;
    final milestones = fireProgress.milestones;

    // Calculate emergency fund months (6 months of expenses)
    final monthlyExpenses = fireProgress.goal?.monthlyExpenses ?? 0;
    final emergencyFundMonths = monthlyExpenses > 0 ? (currentNetWorth / monthlyExpenses).floor() : 0;

    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          // Decorative background
          Positioned.fill(
            child: CustomPaint(
              painter: _MapBackgroundPainter(),
            ),
          ),

          // Milestones - show from hook data
          if (milestones.length > 2) ...[
            Positioned(
              top: 40,
              right: 60,
              child: MilestoneBadge(milestone: milestones[2]),
            ),
          ],
          if (milestones.length > 1) ...[
            Positioned(
              top: 100,
              right: 100,
              child: MilestoneBadge(milestone: milestones[1]),
            ),
          ],
          if (milestones.isNotEmpty) ...[
            Positioned(
              bottom: 100,
              right: 80,
              child: MilestoneBadge(milestone: milestones[0]),
            ),
          ],

          // Achievement indicators
          Positioned(
            bottom: 60,
            left: 40,
            child: _buildAchievement(
              context,
              l10n.netProfit,
              fireProgress.netAssetsFormatted,
              currentNetWorth > 0,
            ),
          ),

          Positioned(
            bottom: 20,
            left: 40,
            child: _buildAchievement(
              context,
              l10n.freeMonths(emergencyFundMonths),
              '$emergencyFundMonths${l10n.period1Month}',
              emergencyFundMonths >= 6,
            ),
          ),

          // Current amount
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                fireProgress.targetAmountFormatted,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),

          // Timer
          Positioned(
            bottom: 160,
            left: 40,
            child: Row(
              children: [
                Icon(
                  Icons.access_time,
                  size: 20,
                  color: theme.colorScheme.outline,
                ),
                const SizedBox(width: 4),
                Text(
                  fireProgress.progress?.yearsToFire != null
                      ? '${fireProgress.progress!.yearsToFire!.toStringAsFixed(1)}${l10n.period1Year}'
                      : l10n.fireGoal,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievement(
    BuildContext context,
    String label,
    String value,
    bool achieved,
  ) {
    return Row(
      children: [
        Icon(
          achieved ? Icons.check_circle : Icons.radio_button_unchecked,
          color: achieved ? const Color(0xFF000000) : const Color(0xFFBDBDBD),
          size: 18,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: achieved ? const Color(0xFF000000) : const Color(0xFF757575),
          ),
        ),
      ],
    );
  }
}

/// Custom painter for map background decoration
class _MapBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.grey.shade200
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    // Draw decorative paths
    final path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.8)
      ..quadraticBezierTo(
        size.width * 0.4,
        size.height * 0.6,
        size.width * 0.6,
        size.height * 0.5,
      )
      ..quadraticBezierTo(
        size.width * 0.7,
        size.height * 0.4,
        size.width * 0.8,
        size.height * 0.2,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
