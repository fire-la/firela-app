import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

import '../../data/services/fire_calculation_service.dart';

/// FIRE type enumeration
enum FireType {
  full,
  coast,
  barista,
  lean,
}

/// Data class for FIRE type information
class FireTypeInfo {
  const FireTypeInfo({
    required this.type,
    required this.name,
    required this.description,
    required this.multiplier,
    required this.icon,
    required this.color,
  });

  final FireType type;
  final String name;
  final String description;
  final double multiplier;
  final IconData icon;
  final Color color;
}

/// Card widget showing a specific FIRE type with progress
class FireTypeCard extends StatelessWidget {
  const FireTypeCard({
    super.key,
    required this.fireTypeInfo,
    required this.currentNetWorth,
    required this.monthlyExpenses,
    required this.monthlySavings,
    required this.annualReturn,
    required this.isSelected,
    this.onTap,
  });

  final FireTypeInfo fireTypeInfo;
  final double currentNetWorth;
  final double monthlyExpenses;
  final double monthlySavings;
  final double annualReturn;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    // Calculate FIRE number for this type
    final fireNumber = FireCalculationService.instance.calculateFireNumber(
      monthlyExpenses * fireTypeInfo.multiplier,
    );

    // Calculate progress
    final progress = FireCalculationService.instance.calculateProgress(
      currentNetWorth,
      fireNumber,
    );

    // Calculate years to FIRE
    final yearsToFire = FireCalculationService.instance.calculateYearsToFire(
      currentNetWorth,
      fireNumber,
      monthlySavings,
      annualReturn: annualReturn,
    );

    // Calculate monthly savings needed
    final monthlyNeeded = FireCalculationService.instance.calculateMonthlySavings(
      currentNetWorth,
      fireNumber,
      10, // Default 10 years target
      annualReturn: annualReturn,
    );

    return GestureDetector(
      onTap: () {
        HapticFeedback.lightImpact();
        onTap?.call();
      },
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: TokenSpacing.lg),
        padding: const EdgeInsets.all(TokenSpacing.xl),
        decoration: BoxDecoration(
          color: isSelected
              ? fireTypeInfo.color.withValues(alpha: 0.1)
              : TokenColors.neutral200,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(
            color: isSelected
                ? fireTypeInfo.color
                : TokenColors.textTertiary.withValues(alpha: 0.2),
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon and name
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(TokenSpacing.sm),
                  decoration: BoxDecoration(
                    color: fireTypeInfo.color.withValues(alpha: 0.15),
                    borderRadius: TokenRadius.borderSm,
                  ),
                  child: Icon(
                    fireTypeInfo.icon,
                    size: 18,
                    color: fireTypeInfo.color,
                  ),
                ),
                const SizedBox(width: TokenSpacing.sm),
                Expanded(
                  child: Text(
                    fireTypeInfo.name,
                    style: TokenTypography.h4(
                      fontWeight: FontWeight.w600,
                      color: isSelected ? fireTypeInfo.color : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: TokenSpacing.lg),

            // Description
            Text(
              fireTypeInfo.description,
              style: TokenTypography.micro(
                color: TokenColors.textTertiary,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: TokenSpacing.lg),

            // Target amount
            _buildInfoRow(
              l10n.targetAmount,
              _formatCompactCurrency(fireNumber),
            ),
            const SizedBox(height: 6),

            // Progress
            _buildInfoRow(
              l10n.currentProgress,
              '${progress.toStringAsFixed(1)}%',
              valueColor: progress >= 100 ? TokenColors.success : null,
            ),
            const SizedBox(height: 6),

            // Time to reach
            _buildInfoRow(
              l10n.timeToReach,
              yearsToFire != null
                  ? l10n.yearsValue(yearsToFire.toStringAsFixed(1))
                  : l10n.alreadyAchieved,
              valueColor: yearsToFire == null ? TokenColors.success : null,
            ),
            const SizedBox(height: 6),

            // Monthly needed
            _buildInfoRow(
              l10n.monthlyNeeded,
              _formatCompactCurrency(monthlyNeeded),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    String label,
    String value, {
    Color? valueColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TokenTypography.micro(
            color: TokenColors.textTertiary,
          ),
        ),
        Text(
          value,
          style: TokenTypography.micro(
            fontWeight: FontWeight.w600,
            color: valueColor,
          ),
        ),
      ],
    );
  }

  String _formatCompactCurrency(double value) {
    if (value == 0) return '0';

    if (value >= 1000000) {
      return '${(value / 1000000).toStringAsFixed(1)}M';
    } else if (value >= 1000) {
      return '${(value / 1000).toStringAsFixed(0)}K';
    }

    return value.toStringAsFixed(0);
  }
}

/// Horizontal scrollable list of FIRE type cards
class FireTypesCarousel extends StatelessWidget {
  const FireTypesCarousel({
    super.key,
    required this.currentNetWorth,
    required this.monthlyExpenses,
    required this.monthlySavings,
    this.annualReturn = 0.07,
    this.selectedType,
    this.onTypeSelected,
  });

  final double currentNetWorth;
  final double monthlyExpenses;
  final double monthlySavings;
  final double annualReturn;
  final FireType? selectedType;
  final void Function(FireType)? onTypeSelected;

  List<FireTypeInfo> _getFireTypes(AppLocalizations l10n) {
    return [
      FireTypeInfo(
        type: FireType.full,
        name: l10n.fullFire,
        description: l10n.fullFireDescription,
        multiplier: 1.0,
        icon: Icons.flag,
        color: TokenColors.info,
      ),
      FireTypeInfo(
        type: FireType.coast,
        name: l10n.coastFire,
        description: l10n.coastFireDescription,
        multiplier: 0.7,
        icon: Icons.sailing,
        color: TokenColors.primary,
      ),
      FireTypeInfo(
        type: FireType.barista,
        name: l10n.baristaFire,
        description: l10n.baristaFireDescription,
        multiplier: 0.5,
        icon: Icons.coffee,
        color: TokenColors.chartAmber,
      ),
      FireTypeInfo(
        type: FireType.lean,
        name: l10n.leanFire,
        description: l10n.leanFireDescription,
        multiplier: 0.6,
        icon: Icons.minimize,
        color: TokenColors.primary,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final fireTypes = _getFireTypes(l10n);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
          child: Text(
            l10n.fireTypes,
            style: TokenTypography.h4(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: TokenSpacing.lg),

        // Horizontal scroll
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            itemCount: fireTypes.length,
            itemBuilder: (context, index) {
              final fireType = fireTypes[index];
              return FireTypeCard(
                fireTypeInfo: fireType,
                currentNetWorth: currentNetWorth,
                monthlyExpenses: monthlyExpenses,
                monthlySavings: monthlySavings,
                annualReturn: annualReturn,
                isSelected: selectedType == fireType.type,
                onTap: () => onTypeSelected?.call(fireType.type),
              );
            },
          ),
        ),
      ],
    );
  }
}
