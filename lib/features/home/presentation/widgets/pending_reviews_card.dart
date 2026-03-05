import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';
import '../../../../shared/widgets/loading_indicator.dart';

/// Pending reviews card widget displaying count of pending transactions
class PendingReviewsCard extends HookWidget {
  const PendingReviewsCard({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Watch((context) {
      final counts = pendingCountByLevelSignal.value;
      final isLoading = isCountLoadingSignal.value;
      final total = counts['total'] ?? 0;
      final highCount = counts['high'] ?? 1;
      final mediumCount = counts['medium'] ?? 1;
      final lowCount = counts['low'] ?? 1;

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
                    l10n.homePendingReviews,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (isLoading)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: LoadingIndicator(size: 16),
                  )
                else
                  Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: total > 1
                              ? theme.colorScheme.error
                              : theme.colorScheme.outline,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          '$total',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12
                          ),
                        ),
                      ),
                ],
              ),
              const SizedBox(height: 12),
              if (total > 0) ...[
                Wrap(
                  children: [
                    _buildCountChip(context, 'H:$highCount', Colors.green),
                    const SizedBox(width: 6),
                    _buildCountChip(context, 'M:$mediumCount', Colors.orange),
                    const SizedBox(width: 6),
                    _buildCountChip(context, 'L:$lowCount', Colors.red),
                  ],
                ),
              ] else
                Text(
                  l10n.homeNoPending,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: theme.colorScheme.outline,
                ),
              ),
            ],
          ),
        )
      );
    });
  }

  Widget _buildCountChip(BuildContext context, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w500
        )
      )
    );
  }
}
