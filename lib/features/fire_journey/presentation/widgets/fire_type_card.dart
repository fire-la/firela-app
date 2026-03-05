import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? fireTypeInfo.color.withValues(alpha: 0.1)
              : theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected
                ? fireTypeInfo.color
                : theme.colorScheme.outline.withValues(alpha: 0.2),
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
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: fireTypeInfo.color.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    fireTypeInfo.icon,
                    size: 18,
                    color: fireTypeInfo.color,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    fireTypeInfo.name,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: isSelected ? fireTypeInfo.color : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Description
            Text(
              fireTypeInfo.description,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),

            // Target amount
            _buildInfoRow(
              theme,
              l10n.targetAmount,
              _formatCompactCurrency(fireNumber),
            ),
            const SizedBox(height: 6),

            // Progress
            _buildInfoRow(
              theme,
              l10n.currentProgress,
              '${progress.toStringAsFixed(1)}%',
              valueColor: progress >= 100 ? Colors.green : null,
            ),
            const SizedBox(height: 6),

            // Time to reach
            _buildInfoRow(
              theme,
              l10n.timeToReach,
              yearsToFire != null
                  ? l10n.yearsValue(yearsToFire.toStringAsFixed(1))
                  : l10n.alreadyAchieved,
              valueColor: yearsToFire == null ? Colors.green : null,
            ),
            const SizedBox(height: 6),

            // Monthly needed
            _buildInfoRow(
              theme,
              l10n.monthlyNeeded,
              _formatCompactCurrency(monthlyNeeded),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(
    ThemeData theme,
    String label,
    String value, {
    Color? valueColor,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: theme.textTheme.labelSmall?.copyWith(
            color: theme.colorScheme.outline,
          ),
        ),
        Text(
          value,
          style: theme.textTheme.labelSmall?.copyWith(
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
        color: Colors.blue,
      ),
      FireTypeInfo(
        type: FireType.coast,
        name: l10n.coastFire,
        description: l10n.coastFireDescription,
        multiplier: 0.7,
        icon: Icons.sailing,
        color: Colors.teal,
      ),
      FireTypeInfo(
        type: FireType.barista,
        name: l10n.baristaFire,
        description: l10n.baristaFireDescription,
        multiplier: 0.5,
        icon: Icons.coffee,
        color: Colors.brown,
      ),
      FireTypeInfo(
        type: FireType.lean,
        name: l10n.leanFire,
        description: l10n.leanFireDescription,
        multiplier: 0.6,
        icon: Icons.minimize,
        color: Colors.orange,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final fireTypes = _getFireTypes(l10n);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            l10n.fireTypes,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 12),

        // Horizontal scroll
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
