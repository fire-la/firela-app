import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/models/confidence_level.dart';

/// Visual kinds for [ConfidenceBadge] (.pen PMjgX).
///
/// `error` is the distinct "needs fixing" state used for PIPELINE_ERROR; the
/// other three map to confidence tiers. ACCOUNT_VALIDATION carries no
/// confidence (null) and renders as `low` (amber) per the design.
enum ReviewBadgeKind { high, medium, low, error }

/// ConfidenceBadge business component (.pen PMjgX).
///
/// A level-colored pill: 14px icon + caption label, both tinted, on a tinted
/// background. Shared by the summary row and the detail header (single source
/// of truth — do not re-inline).
class ConfidenceBadge extends StatelessWidget {
  const ConfidenceBadge({super.key, required this.kind});

  final ReviewBadgeKind kind;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final (color, bg, icon, label) = switch (kind) {
      ReviewBadgeKind.high => (
          TokenColors.success,
          TokenColors.successBg,
          Icons.check_circle,
          l10n.reviewConfidenceHigh,
        ),
      ReviewBadgeKind.medium => (
          TokenColors.info,
          TokenColors.infoBg,
          Icons.info,
          l10n.reviewConfidenceMedium,
        ),
      ReviewBadgeKind.low => (
          TokenColors.chartAmber,
          // Translucent amber tint (matches the *Bg pattern of the other kinds)
          // so the badge adapts to dark mode via translucency — the opaque
          // accentPeach stayed light in dark mode.
          TokenColors.chartAmber.withValues(alpha: 0.1),
          Icons.warning,
          l10n.reviewConfidenceLow,
        ),
      ReviewBadgeKind.error => (
          TokenColors.error,
          TokenColors.errorBg,
          Icons.warning,
          l10n.reviewConfidencePendingFix,
        ),
    };
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.md,
        vertical: TokenSpacing.xs,
      ),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: TokenRadius.borderPill,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: TokenSpacing.sm),
          Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.caption(
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}

/// Resolve the badge kind for a review item.
///
/// PIPELINE_ERROR is always the "needs fixing" error state. Every other type
/// follows its [ConfidenceLevel]; a null level (ACCOUNT_VALIDATION, which has
/// no confidence) reads as `low`. This only drives the *badge display* — the
/// inline-vs-detail gate is the separate `confidence >= 0.85` rule (ADR-0002).
ReviewBadgeKind resolveReviewBadgeKind(
  String? reviewType,
  ConfidenceLevel? level,
) {
  if (reviewType == 'PIPELINE_ERROR') return ReviewBadgeKind.error;
  return switch (level) {
    ConfidenceLevel.high => ReviewBadgeKind.high,
    ConfidenceLevel.medium => ReviewBadgeKind.medium,
    _ => ReviewBadgeKind.low,
  };
}
