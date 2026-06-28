import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
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

    return Watch((context) {
      final counts = pendingCountByLevelSignal.value;
      final isLoading = isCountLoadingSignal.value;
      final total = counts['total'] ?? 0;
      final highCount = counts['high'] ?? 1;
      final mediumCount = counts['medium'] ?? 1;
      final lowCount = counts['low'] ?? 1;

      return Tappable(
        onTap: onTap,
        // H/M/L breakdown mirrors the visible chips; excludeSemantics masks
        // them, so splice into the single label for sighted/screen-reader parity.
        semanticLabel: total > 0
            ? '${l10n.homePendingReviews}, $total, H:$highCount, M:$mediumCount, L:$lowCount'
            : '${l10n.homePendingReviews}, $total',
        child: Container(
          padding: const EdgeInsets.all(TokenSpacing.xl),
          decoration: BoxDecoration(
            color: TokenColors.bgCard,
            borderRadius: TokenRadius.borderLg,
            boxShadow: TokenShadows.cardList,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.homePendingReviews,
                    style: TokenTypography.h4(fontWeight: FontWeight.w600),
                  ),
                  if (isLoading)
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: LoadingIndicator(size: 16),
                  )
                else
                  Container(
                        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.sm, vertical: TokenSpacing.xs),
                        decoration: BoxDecoration(
                          color: total > 1
                              ? TokenColors.error
                              : TokenColors.textTertiary,
                          borderRadius: TokenRadius.borderMd,
                        ),
                        child: Text(
                          '$total',
                          style: TokenTypography.caption(
                            color: TokenColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                ],
              ),
              const SizedBox(height: TokenSpacing.lg),
              if (total > 0) ...[
                Wrap(
                  children: [
                    _buildCountChip(context, 'H:$highCount', TokenColors.success),
                    const SizedBox(width: 6),
                    _buildCountChip(context, 'M:$mediumCount', TokenColors.primary),
                    const SizedBox(width: 6),
                    _buildCountChip(context, 'L:$lowCount', TokenColors.error),
                  ],
                ),
              ] else
                Text(
                  l10n.homeNoPending,
                  style: TokenTypography.caption(
                    color: TokenColors.textTertiary,
                  ),
                ),
              const SizedBox(height: TokenSpacing.sm),
              const Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: TokenColors.textTertiary,
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
        borderRadius: TokenRadius.borderSm,
      ),
      child: Text(
        label,
        style: TokenTypography.micro(
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
