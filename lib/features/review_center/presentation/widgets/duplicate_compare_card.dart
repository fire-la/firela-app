import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/entities/transaction_summary.dart';
import 'review_helpers.dart';

/// DuplicateCompareCard business component (.pen umtLO).
///
/// Pure-display type card for DUPLICATE reviews: a header row (new import /
/// similarity / existing record) over a two-column compare row (new | divider |
/// existing). The new import is emphasized (primary), the existing record muted
/// (secondary). DUPLICATE decisions take no `data` payload, so this card has no
/// selection state.
class DuplicateCompareCard extends StatelessWidget {
  const DuplicateCompareCard({
    super.key,
    required this.source,
    required this.target,
    required this.similarityPct,
  });

  /// Newly imported transaction (left column).
  final TransactionSummary source;

  /// Existing record (right column).
  final TransactionSummary target;

  /// Overall similarity percentage (0-100) for the header score.
  final int similarityPct;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: BorderRadius.circular(TokenRadius.lg),
        border: Border.all(
          color: TokenColors.borderCard,
          width: TokenSize.strokeThin,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          // headerRow (.pen N6j52s) — space_between.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                l10n.reviewCenterNewImport,
                style: TokenTypography.caption(
                  fontWeight: FontWeight.w600,
                  color: TokenColors.textAccent,
                ),
              ),
              Text(
                l10n.reviewCenterSimilarity(similarityPct),
                style: TokenTypography.caption(color: TokenColors.textSecondary),
              ),
              Text(
                l10n.reviewCenterExistingRecord,
                style: TokenTypography.caption(
                  fontWeight: FontWeight.w600,
                  color: TokenColors.textTertiary,
                ),
              ),
            ],
          ),
          const SizedBox(height: TokenSpacing.md),
          // compareRow (.pen i6W6V) — new | divider | existing.
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: _column(source, emphasized: true)),
                const SizedBox(width: TokenSpacing.md),
                Container(
                  width: TokenSize.strokeNormal,
                  color: TokenColors.borderCard,
                ),
                const SizedBox(width: TokenSpacing.md),
                Expanded(child: _column(target, emphasized: false)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _column(TransactionSummary tx, {required bool emphasized}) {
    final nameColor =
        emphasized ? TokenColors.textPrimary : TokenColors.textSecondary;
    // Title = payee, falling back to narration. The footer repeats narration
    // only when a payee is present, so narration never appears twice in a column.
    final hasPayee = tx.payee != null && tx.payee!.isNotEmpty;
    final title = tx.payee ?? tx.narration;
    final footer = hasPayee
        ? '${formatReviewDate(tx.date)} · ${tx.narration}'
        : formatReviewDate(tx.date);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TokenTypography.body(
            fontWeight: FontWeight.w600,
            color: nameColor,
          ),
        ),
        const SizedBox(height: TokenSpacing.xs),
        Text(
          formatSignedAmount(tx.amount, tx.currency),
          style: TokenTypography.h4(
            fontWeight: FontWeight.w700,
            color: nameColor,
          ),
        ),
        const SizedBox(height: TokenSpacing.xs),
        Text(
          footer,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TokenTypography.micro(color: TokenColors.textTertiary),
        ),
      ],
    );
  }
}
