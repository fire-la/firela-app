import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/entities/pending_transaction.dart';
import 'confidence_badge.dart';
import 'review_helpers.dart';

/// ReviewSummaryRow business component (.pen F6mdb).
///
/// The single unified list-row contract for all 5 review types: type icon in a
/// tinted frame, a one-line summary + (confidence badge + source tag), and a
/// right-aligned amount + date. Heavy decisions go via [onTap] to the detail
/// page; only high-confidence light items may show a single inline action
/// (ADR-0002: inline = one fixed action, no checkbox/subset selection).
class ReviewSummaryRow extends StatelessWidget {
  const ReviewSummaryRow({
    super.key,
    required this.transaction,
    required this.badgeKind,
    required this.onTap,
    this.showInline = false,
    this.inlineLabel,
    this.onInline,
  }) : assert(!showInline || (inlineLabel != null && onInline != null),
            'inlineLabel and onInline are required when showInline is true');

  final PendingTransaction transaction;
  final ReviewBadgeKind badgeKind;
  final VoidCallback onTap;

  /// Show the single inline action button (confidence >= 0.85 and a light
  /// type: DUPLICATE / RULE_MATCH / PAYEE_MATCH).
  final bool showInline;
  final String? inlineLabel;
  final VoidCallback? onInline;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    final tx = transaction;
    // The inline one-tap action (ButtonSmall ≈ 80px) plus the amount, icon and
    // gaps can't all fit on a narrow screen — it squeezes midCol below the
    // confidence badge's minimum width and overflows. Drop the inline action on
    // narrow screens (users tap the row → detail). 360 ≈ the threshold below
    // which the row overflows; standard phones (≥375) keep the inline action.
    final showInlineAction = showInline &&
        inlineLabel != null &&
        onInline != null &&
        MediaQuery.of(context).size.width >= 360;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.all(TokenSpacing.lg),
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(color: tokens.borderCard, width: 0.5),
        ),
        child: Row(
          children: [
            // typeIconFrame (.pen o3nvSZ)
            Container(
              width: 36,
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: TokenColors.accentBg,
                borderRadius: BorderRadius.circular(TokenRadius.md),
              ),
              child: Icon(
                reviewTypeIcon(tx.reviewType),
                size: 18,
                color: TokenColors.textAccent,
              ),
            ),
            const SizedBox(width: TokenSpacing.md),
            // midCol (.pen G7lIox)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    formatReviewSummary(l10n, tx),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: tokens.textPrimary,
                    ),
                  ),
                  const SizedBox(height: TokenSpacing.xs),
                  // metaRow (.pen lQ9AP): confidence + source tag
                  Row(
                    children: [
                      ConfidenceBadge(kind: badgeKind),
                      const SizedBox(width: TokenSpacing.sm),
                      Flexible(
                        child: Text(
                          reviewSourceTag(l10n, tx),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TokenTypography.micro(color: tokens.textTertiary),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: TokenSpacing.md),
            // rightCol (.pen QLKUL): amount + date
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  formatReviewAmount(tx),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.w700,
                    color: tokens.textPrimary,
                  ),
                ),
                const SizedBox(height: TokenSpacing.xs),
                Text(
                  formatReviewTime(tx),
                  style: TokenTypography.micro(color: tokens.textTertiary),
                ),
              ],
            ),
            // inlineRight (.pen m8HVIh): single fixed action only (narrow screens
            // drop it — see showInlineAction above).
            if (showInlineAction) ...[
              const SizedBox(width: TokenSpacing.sm),
              ButtonSmall(label: inlineLabel!, onPressed: onInline),
            ],
          ],
        ),
      ),
    );
  }
}
