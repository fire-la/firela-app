import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../providers/use_fire_progress.dart';

/// FIRE Journey page showing progress and milestones
class FireJourneyPage extends HookWidget {
  const FireJourneyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final fireProgress = useFireProgress();

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
          ? _buildLoadingState(context, l10n)
          : fireProgress.hasNoGoal
              ? _buildEmptyState(context, l10n)
              : _buildContent(context, l10n, fireProgress),
    );
  }

  Widget _buildLoadingState(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 16),
          Text(
            l10n.loading,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
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

            // Net assets and daily income
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.netAssets,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            fireProgress.netAssetsFormatted,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
                        color: Theme.of(context).colorScheme.surfaceContainerHighest,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l10n.dailyIncome,
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Theme.of(context).colorScheme.outline,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            fireProgress.dailyIncomeFormatted,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
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
    final targetAmount = fireProgress.goal?.targetAmount ?? 0;

    // Calculate milestone achievements based on current net worth
    final milestones = _getDefaultMilestones(targetAmount);

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

          // Milestones - show achieved and locked
          if (milestones.length > 2) ...[
            Positioned(
              top: 40,
              right: 60,
              child: _buildMilestone(context, milestones[2]['label'], currentNetWorth >= milestones[2]['amount']),
            ),
          ],
          if (milestones.length > 1) ...[
            Positioned(
              top: 100,
              right: 100,
              child: _buildMilestone(context, milestones[1]['label'], currentNetWorth >= milestones[1]['amount']),
            ),
          ],
          if (milestones.isNotEmpty) ...[
            Positioned(
              bottom: 100,
              right: 80,
              child: _buildMilestone(context, milestones[0]['label'], currentNetWorth >= milestones[0]['amount']),
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

  /// Get default milestones based on target amount
  List<Map<String, dynamic>> _getDefaultMilestones(double targetAmount) {
    // Standard milestones in CNY (万 = 10,000)
    const standardMilestones = [
      {'amount': 100000.0, 'label': '10万'},      // 100k
      {'amount': 500000.0, 'label': '50万'},      // 500k
      {'amount': 1000000.0, 'label': '100万'},    // 1M
      {'amount': 5000000.0, 'label': '500万'},    // 5M
      {'amount': 10000000.0, 'label': '1000万'},  // 10M
    ];

    // If target amount is set, filter relevant milestones
    if (targetAmount > 0) {
      return standardMilestones.where((m) => m['amount'] as double <= targetAmount * 1.2).toList();
    }

    return standardMilestones;
  }

  Widget _buildMilestone(BuildContext context, String label, bool achieved) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: achieved ? const Color(0xFFFFFFFF) : const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: achieved ? const Color(0xFF000000) : const Color(0xFF999999),
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            achieved ? Icons.check : Icons.lock_outline,
            size: 14,
            color: achieved ? const Color(0xFF000000) : const Color(0xFF666666),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: achieved ? const Color(0xFF000000) : const Color(0xFF666666),
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
