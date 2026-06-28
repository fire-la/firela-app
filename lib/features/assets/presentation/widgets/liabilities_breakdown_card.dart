import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
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
        margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        padding: const EdgeInsets.all(TokenSpacing.xxl),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: TokenRadius.borderLg,
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
      margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest,
        borderRadius: TokenRadius.borderLg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with total
          Padding(
            padding: const EdgeInsets.all(TokenSpacing.xxl),
            child: Row(
              children: [
                const Icon(
                  Icons.trending_down,
                  size: 24,
                  color: TokenColors.error,
                ),
                const SizedBox(width: TokenSpacing.lg),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.liabilitiesByType,
                        style: TokenTypography.body(color: TokenColors.textTertiary),
                      ),
                      const SizedBox(height: TokenSpacing.xs),
                      Text(
                        _formatCurrency(totalLiabilities),
                        style: TokenTypography.h4(fontWeight: FontWeight.bold),
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
                padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg),
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

          const SizedBox(height: TokenSpacing.xl),
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

    return Tappable(
      onTap: onTap,
      semanticLabel: '${_getLocalizedTypeName(breakdown.type, l10n)}, ${_formatAmount(breakdown.amount)}',
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: isExpanded ? 160 : 120,
        margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xs),
        padding: const EdgeInsets.all(TokenSpacing.lg),
        decoration: BoxDecoration(
          color: isExpanded
              ? theme.colorScheme.surfaceContainerHigh
              : theme.colorScheme.surface,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(
            color: isExpanded
                ? TokenColors.textTertiary.withValues(alpha: 0.3)
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
            const SizedBox(height: TokenSpacing.sm),
            Text(
              _getLocalizedTypeName(breakdown.type, l10n),
              style: TokenTypography.caption(fontWeight: FontWeight.w500),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: TokenSpacing.xs),
            Text(
              _formatAmount(breakdown.amount),
              style: TokenTypography.caption(fontWeight: FontWeight.bold),
            ),
            if (isExpanded) ...[
              const SizedBox(height: TokenSpacing.xs),
              Text(
                '${breakdown.percentage.toStringAsFixed(1)}%',
                style: TokenTypography.caption(color: TokenColors.textTertiary),
              ),
              Text(
                '${breakdown.count} ${l10n.items}',
                style: TokenTypography.caption(color: TokenColors.textTertiary),
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
        return TokenColors.primary;
      case 'loan':
        return TokenColors.error;
      case 'mortgage':
        return TokenColors.error;
      default:
        return TokenColors.textTertiary;
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
