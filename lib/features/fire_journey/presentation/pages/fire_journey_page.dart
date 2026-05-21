import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/design_tokens/design_tokens.dart';
import '../providers/use_fire_progress.dart';
import '../widgets/milestone_badge.dart';
import '../widgets/shimmer_loading.dart';
import '../widgets/animated_number.dart';
import '../widgets/fire_projection_chart.dart';
import '../widgets/scenario_selector.dart';
import '../widgets/fire_type_card.dart';

/// FIRE Journey page showing progress and milestones
class FireJourneyPage extends HookWidget {
  const FireJourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
      backgroundColor: TokenColors.bgPage,
      appBar: AppBar(
        title: Text(
          'IGN',
          style: TokenTypography.h4(
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
            const Icon(Icons.celebration, color: TokenColors.textPrimary),
            const SizedBox(width: TokenSpacing.sm),
            Text(l10n.milestoneAchieved),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              l10n.celebrateProgress,
              style: TokenTypography.body(),
            ),
            const SizedBox(height: TokenSpacing.xl),
            ...milestones.map((m) => Padding(
              padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs),
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
      padding: const EdgeInsets.all(TokenSpacing.xl),
      child: Column(
        children: [
          // Shimmer journey card
          ShimmerLoading(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: TokenColors.neutral200,
                borderRadius: TokenRadius.borderSm,
              ),
            ),
          ),
          const SizedBox(height: TokenSpacing.xl),

          // Shimmer fire map
          ShimmerLoading(
            child: Container(
              height: 280,
              decoration: BoxDecoration(
                color: TokenColors.neutral200,
                borderRadius: TokenRadius.borderSm,
              ),
            ),
          ),
          const SizedBox(height: TokenSpacing.xl),

          // Shimmer net assets and daily income
          Row(
            children: [
              Expanded(
                child: ShimmerLoading(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: TokenColors.neutral200,
                      borderRadius: TokenRadius.borderSm,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: TokenSpacing.lg),
              Expanded(
                child: ShimmerLoading(
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: TokenColors.neutral200,
                      borderRadius: TokenRadius.borderSm,
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.flag_outlined,
              size: 64,
              color: TokenColors.textTertiary,
            ),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              l10n.fireGoal,
              style: TokenTypography.h4(),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              l10n.watchFirePlan,
              style: TokenTypography.body(
                color: TokenColors.textTertiary,
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

    // Scenario state
    final scenarioModel = useState(const ScenarioModel(
      monthlySavingsDelta: 0,
      expectedReturn: 0.07,
      retirementSpendingRate: 1.0,
    ));

    // Selected FIRE type
    final selectedFireType = useState<FireType?>(null);

    // Build projection scenarios based on current settings
    final currentNetWorth = fireProgress.progress?.currentNetWorth ?? 0;
    final baseMonthlySavings = fireProgress.progress?.monthlySavings ?? 0;
    final fireNumber = fireProgress.goal?.targetAmount ?? 0;
    final monthlyExpenses = fireProgress.goal?.monthlyExpenses ?? 0;

    // Calculate adjusted savings and return based on scenario
    final adjustedSavings = baseMonthlySavings * (1 + scenarioModel.value.monthlySavingsDelta);
    final adjustedReturn = scenarioModel.value.expectedReturn;

    final scenarios = [
      ProjectionScenario(
        name: l10n.baselineScenario,
        monthlySavings: baseMonthlySavings,
        annualReturn: 0.07, // 7% default
        color: TokenColors.textPrimary,
      ),
      ProjectionScenario(
        name: l10n.aggressiveScenario,
        monthlySavings: adjustedSavings,
        annualReturn: adjustedReturn,
        color: TokenColors.success,
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

            const SizedBox(height: TokenSpacing.xl),

            // FIRE journey map
            _buildFireMap(context, l10n, fireProgress),

            const SizedBox(height: TokenSpacing.xl),

            // FIRE Projection Chart
            FireProjectionChart(
              currentNetWorth: currentNetWorth,
              fireNumber: fireNumber,
              scenarios: scenarios,
              targetYears: fireProgress.progress?.yearsToFire,
              isLoading: false,
            ),

            const SizedBox(height: TokenSpacing.xl),

            // Scenario Modeling Controls
            ScenarioSelector(
              baseMonthlySavings: baseMonthlySavings,
              baseAnnualReturn: 0.07,
              onScenarioChanged: (model) {
                scenarioModel.value = model;
              },
            ),

            const SizedBox(height: TokenSpacing.xl),

            // FIRE Types Carousel
            FireTypesCarousel(
              currentNetWorth: currentNetWorth,
              monthlyExpenses: monthlyExpenses,
              monthlySavings: baseMonthlySavings,
              annualReturn: scenarioModel.value.expectedReturn,
              selectedType: selectedFireType.value,
              onTypeSelected: (type) {
                selectedFireType.value = type;
              },
            ),

            const SizedBox(height: TokenSpacing.xl),

            // Net assets and daily income
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(TokenSpacing.xl),
                      decoration: BoxDecoration(
                        color: TokenColors.neutral200,
                        borderRadius: TokenRadius.borderSm,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.netAssets,
                            style: TokenTypography.caption(
                              color: TokenColors.textTertiary,
                            ),
                          ),
                          const SizedBox(height: TokenSpacing.sm),
                          AnimatedNumber(
                            value: fireProgress.progress?.currentNetWorth ?? 0,
                            style: TokenTypography.h2(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: TokenSpacing.lg),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(TokenSpacing.xl),
                      decoration: BoxDecoration(
                        color: TokenColors.neutral200,
                        borderRadius: TokenRadius.borderSm,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.dailyIncome,
                            style: TokenTypography.caption(
                              color: TokenColors.textTertiary,
                            ),
                          ),
                          const SizedBox(height: TokenSpacing.sm),
                          AnimatedNumber(
                            value: (fireProgress.progress?.monthlySavings ?? 0) / 30,
                            style: TokenTypography.h2(
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
      margin: const EdgeInsets.fromLTRB(TokenSpacing.xl, 8, TokenSpacing.xl, 0),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Row(
        children: [
          // Avatar
          const CircleAvatar(
            radius: 28,
            backgroundColor: TokenColors.neutral200,
            child: Icon(Icons.person, size: 32, color: TokenColors.neutral700),
          ),

          const SizedBox(width: TokenSpacing.xl),

          // Days info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.fireJourneyDays(fireProgress.journeyDays),
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: TokenSpacing.xs),
                Text(
                  l10n.watchFirePlan,
                  style: TokenTypography.caption(
                    color: TokenColors.textTertiary,
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
                  style: TokenTypography.caption(),
                ),
                progressColor: TokenColors.textPrimary,
                backgroundColor: TokenColors.neutral200,
                circularStrokeCap: CircularStrokeCap.round,
                animation: true,
                animationDuration: 500,
              ),
            ],
          ),

          const SizedBox(width: TokenSpacing.lg),

          Column(
            children: [
              CircularPercentIndicator(
                radius: 35,
                lineWidth: 6,
                percent: fireProgress.safetyPercent,
                center: Text(
                  l10n.safety,
                  style: TokenTypography.caption(),
                ),
                progressColor: TokenColors.textPrimary,
                backgroundColor: TokenColors.neutral200,
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
    final currentNetWorth = fireProgress.progress?.currentNetWorth ?? 0;
    final milestones = fireProgress.milestones;

    // Calculate emergency fund months (6 months of expenses)
    final monthlyExpenses = fireProgress.goal?.monthlyExpenses ?? 0;
    final emergencyFundMonths = monthlyExpenses > 0 ? (currentNetWorth / monthlyExpenses).floor() : 0;

    return Container(
      height: 280,
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xxl),
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
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
              padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.sm),
              decoration: BoxDecoration(
                color: TokenColors.textPrimary.withValues(alpha: 0.87),
                borderRadius: BorderRadius.circular(TokenRadius.pill),
              ),
              child: Text(
                fireProgress.targetAmountFormatted,
                style: TokenTypography.h4(
                  color: TokenColors.white,
                  fontWeight: FontWeight.bold,
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
                  color: TokenColors.textTertiary,
                ),
                const SizedBox(width: TokenSpacing.xs),
                Text(
                  fireProgress.progress?.yearsToFire != null
                      ? '${fireProgress.progress!.yearsToFire!.toStringAsFixed(1)}${l10n.period1Year}'
                      : l10n.fireGoal,
                  style: TokenTypography.caption(),
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
          color: achieved ? TokenColors.textPrimary : TokenColors.textTertiary,
          size: 18,
        ),
        const SizedBox(width: 6),
        Text(
          label,
          style: TokenTypography.caption(
            color: achieved ? TokenColors.textPrimary : TokenColors.neutral700,
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
      ..color = TokenColors.neutral200
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
