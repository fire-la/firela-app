import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// Result of scenario modeling changes
class ScenarioModel {
  const ScenarioModel({
    required this.monthlySavingsDelta,
    required this.expectedReturn,
    required this.retirementSpendingRate,
  });

  /// Change in monthly savings (percentage, e.g., 0.1 for +10%)
  final double monthlySavingsDelta;

  /// Expected annual return rate (e.g., 0.07 for 7%)
  final double expectedReturn;

  /// Retirement spending rate (as fraction of current expenses)
  final double retirementSpendingRate;

  ScenarioModel copyWith({
    double? monthlySavingsDelta,
    double? expectedReturn,
    double? retirementSpendingRate,
  }) {
    return ScenarioModel(
      monthlySavingsDelta: monthlySavingsDelta ?? this.monthlySavingsDelta,
      expectedReturn: expectedReturn ?? this.expectedReturn,
      retirementSpendingRate: retirementSpendingRate ?? this.retirementSpendingRate,
    );
  }
}

/// Scenario modeling widget with slider controls
class ScenarioSelector extends HookWidget {
  const ScenarioSelector({
    super.key,
    required this.baseMonthlySavings,
    required this.baseAnnualReturn,
    required this.onScenarioChanged,
    this.initialScenario = const ScenarioModel(
      monthlySavingsDelta: 0,
      expectedReturn: 0.07,
      retirementSpendingRate: 1.0,
    ),
  });

  /// Base monthly savings amount
  final double baseMonthlySavings;

  /// Base annual return rate
  final double baseAnnualReturn;

  /// Callback when scenario parameters change
  final void Function(ScenarioModel) onScenarioChanged;

  /// Initial scenario values
  final ScenarioModel initialScenario;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    // Slider values
    final savingsDelta = useState(initialScenario.monthlySavingsDelta);
    final expectedReturn = useState(initialScenario.expectedReturn);
    final retirementSpending = useState(initialScenario.retirementSpendingRate);

    // Calculate derived values
    final adjustedSavings = baseMonthlySavings * (1 + savingsDelta.value);
    final savingsDeltaPercent = (savingsDelta.value * 100).round();

    // Notify parent of changes
    useEffect(() {
      onScenarioChanged(ScenarioModel(
        monthlySavingsDelta: savingsDelta.value,
        expectedReturn: expectedReturn.value,
        retirementSpendingRate: retirementSpending.value,
      ));
      return null;
    }, [savingsDelta.value, expectedReturn.value, retirementSpending.value]);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.neutral200,
        borderRadius: TokenRadius.borderSm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.scenarioModeling,
                style: TokenTypography.h4(fontWeight: FontWeight.w600),
              ),
              TextButton(
                onPressed: () {
                  HapticFeedback.lightImpact();
                  savingsDelta.value = 0;
                  expectedReturn.value = 0.07;
                  retirementSpending.value = 1.0;
                },
                child: Text(
                  l10n.reset,
                  style: TokenTypography.micro(fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          const SizedBox(height: TokenSpacing.xl),

          // Monthly Savings slider
          _buildSliderTile(
            context: context,
            l10n: l10n,
            icon: Icons.savings,
            label: l10n.monthlySavings,
            value: savingsDelta.value,
            min: -0.1,
            max: 0.1,
            divisions: 10,
            displayValue: savingsDeltaPercent >= 0
                ? '+$savingsDeltaPercent%'
                : '$savingsDeltaPercent%',
            subtitle: l10n.adjustedSavingsValue(_formatCurrency(adjustedSavings)),
            onChanged: (value) {
              HapticFeedback.selectionClick();
              savingsDelta.value = value;
            },
          ),

          const SizedBox(height: TokenSpacing.lg),

          // Expected Return slider
          _buildSliderTile(
            context: context,
            l10n: l10n,
            icon: Icons.trending_up,
            label: l10n.expectedReturn,
            value: expectedReturn.value,
            min: 0.04,
            max: 0.12,
            divisions: 8,
            displayValue: '${(expectedReturn.value * 100).round()}%',
            subtitle: l10n.returnRateDescription,
            onChanged: (value) {
              HapticFeedback.selectionClick();
              expectedReturn.value = value;
            },
          ),

          const SizedBox(height: TokenSpacing.lg),

          // Retirement Spending slider
          _buildSliderTile(
            context: context,
            l10n: l10n,
            icon: Icons.home_outlined,
            label: l10n.retirementSpending,
            value: retirementSpending.value,
            min: 0.7,
            max: 1.0,
            divisions: 6,
            displayValue: '${(retirementSpending.value * 100).round()}%',
            subtitle: l10n.retirementSpendingDescription,
            onChanged: (value) {
              HapticFeedback.selectionClick();
              retirementSpending.value = value;
            },
          ),

          const SizedBox(height: TokenSpacing.xl),

          // Impact summary
          _buildImpactSummary(
            context,
            l10n,
            theme,
            adjustedSavings,
            savingsDelta.value,
            expectedReturn.value,
          ),
        ],
      ),
    );
  }

  Widget _buildSliderTile({
    required BuildContext context,
    required AppLocalizations l10n,
    required IconData icon,
    required String label,
    required double value,
    required double min,
    required double max,
    required int divisions,
    required String displayValue,
    required String subtitle,
    required void Function(double) onChanged,
  }) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 18,
                  color: TokenColors.textTertiary,
                ),
                const SizedBox(width: TokenSpacing.sm),
                Text(
                  label,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
              decoration: BoxDecoration(
                color: TokenColors.bgCard,
                borderRadius: TokenRadius.borderSm,
              ),
              child: Text(
                displayValue,
                style: TokenTypography.micro(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: TokenSpacing.sm),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 16),
          ),
          child: Slider(
            value: value,
            min: min,
            max: max,
            divisions: divisions,
            onChanged: onChanged,
          ),
        ),
        Text(
          subtitle,
          style: TokenTypography.micro(
            color: TokenColors.textTertiary,
          ),
        ),
      ],
    );
  }

  Widget _buildImpactSummary(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    double adjustedSavings,
    double savingsDelta,
    double expectedReturn,
  ) {
    // Calculate impact
    final isImproved = savingsDelta > 0 || expectedReturn > baseAnnualReturn;

    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: isImproved
            ? TokenColors.success.withValues(alpha: 0.1)
            : TokenColors.bgCard.withValues(alpha: 0.5),
        borderRadius: TokenRadius.borderSm,
        border: Border.all(
          color: isImproved
              ? TokenColors.success.withValues(alpha: 0.3)
              : TokenColors.textTertiary.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          Icon(
            isImproved ? Icons.lightbulb : Icons.info_outline,
            size: 20,
            color: isImproved ? TokenColors.success : TokenColors.textTertiary,
          ),
          const SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: Text(
              isImproved
                  ? l10n.scenarioImpactPositive
                  : l10n.scenarioImpactNeutral,
              style: TokenTypography.caption(
                color: isImproved ? TokenColors.success : TokenColors.textTertiary,
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatCurrency(double value) {
    if (value == 0) return '0';

    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(0).split('.');
    final intPart = parts[0];

    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }

    return '${isNegative ? '-' : ''}${buffer.toString()}';
  }
}
