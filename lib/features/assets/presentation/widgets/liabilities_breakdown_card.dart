import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../domain/models/liability_breakdown.dart';

/// Liabilities breakdown card widget displaying categorized liabilities
class LiabilitiesBreakdownCard extends HookWidget {
  const LiabilitiesBreakdownCard({
    super.key,
    required this.totalLiabilities,
    required this.breakdowns,
    this.isLoading = false,
    this.onTypeTap,
  });

  /// Total liabilities amount
  final double totalLiabilities;

  /// List of liability breakdowns by type
  final List<LiabilityBreakdown> breakdowns;

  /// Loading state
  final bool isLoading;

  /// Callback when a liability type is tapped
  final void Function(LiabilityBreakdown breakdown)? onTypeTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final expandedIndex = useState<int?>(null);

    if (isLoading) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Center(
          child: SizedBox(
            height: 36,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with total
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  Icons.trending_down,
                  size: 24,
                  color: theme.colorScheme.error,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.liabilitiesByType,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        _formatCurrency(totalLiabilities),
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Horizontal list of liability types
          if (breakdowns.isNotEmpty)
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: breakdowns.length,
                itemBuilder: (context, index) {
                  final breakdown = breakdowns[index];
                  final isExpanded = expandedIndex.value == index;

                  return _LiabilityTypeCard(
                    breakdown: breakdown,
                    isExpanded: isExpanded,
                    onTap: () {
                      if (expandedIndex.value == index) {
                        expandedIndex.value = null;
                      } else {
                        expandedIndex.value = index;
                      }
                      onTypeTap?.call(breakdown);
                    },
                  );
                },
              ),
            ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  String _formatCurrency(double value) {
    if (value == 0) return '0.00';
    final isNegative = value < 0;
    final absValue = value.abs();
    final parts = absValue.toStringAsFixed(2).split('.');
    final intPart = parts[0];
    final decPart = parts[1];

    final buffer = StringBuffer();
    for (int i = 0; i < intPart.length; i++) {
      if (i > 0 && (intPart.length - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(intPart[i]);
    }

    return '${isNegative ? '-' : ''}${buffer.toString()}.$decPart';
  }
}

/// Individual liability type card
class _LiabilityTypeCard extends StatelessWidget {
  const _LiabilityTypeCard({
    required this.breakdown,
    required this.isExpanded,
    required this.onTap,
  });

  final LiabilityBreakdown breakdown;
  final bool isExpanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: isExpanded ? 160 : 120,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isExpanded
              ? theme.colorScheme.surfaceContainerHigh
              : theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isExpanded
                ? theme.colorScheme.outline.withValues(alpha: 0.3)
                : Colors.transparent,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              _getLiabilityIcon(breakdown.type),
              size: 20,
              color: _getLiabilityColor(breakdown.type, theme),
            ),
            const SizedBox(height: 8),
            Text(
              _getLocalizedTypeName(breakdown.type, l10n),
              style: theme.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w500,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4),
            Text(
              _formatAmount(breakdown.amount),
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded) ...[
              const SizedBox(height: 4),
              Text(
                '${breakdown.percentage.toStringAsFixed(1)}%',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
              Text(
                '${breakdown.count} ${l10n.items}',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  IconData _getLiabilityIcon(String type) {
    switch (type.toLowerCase()) {
      case 'credit_card':
      case 'creditcard':
        return Icons.credit_card;
      case 'loan':
        return Icons.account_balance;
      case 'mortgage':
        return Icons.home;
      default:
        return Icons.more_horiz;
    }
  }

  Color _getLiabilityColor(String type, ThemeData theme) {
    switch (type.toLowerCase()) {
      case 'credit_card':
      case 'creditcard':
        return Colors.orange;
      case 'loan':
        return Colors.red.shade400;
      case 'mortgage':
        return Colors.deepOrange;
      default:
        return theme.colorScheme.outline;
    }
  }

  String _getLocalizedTypeName(String type, AppLocalizations l10n) {
    switch (type.toLowerCase()) {
      case 'credit_card':
      case 'creditcard':
        return l10n.creditCards;
      case 'loan':
        return l10n.loans;
      case 'mortgage':
        return l10n.mortgages;
      default:
        return l10n.otherLiabilities;
    }
  }

  String _formatAmount(double value) {
    if (value == 0) return '0.00';
    final isNegative = value < 0;
    final absValue = value.abs();

    // Shorten large numbers
    if (absValue >= 10000) {
      final formatted = (absValue / 10000).toStringAsFixed(1);
      return '${isNegative ? '-' : ''}$formatted w';
    }

    return '${isNegative ? '-' : ''}${absValue.toStringAsFixed(2)}';
  }
}
