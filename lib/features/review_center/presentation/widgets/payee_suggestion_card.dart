import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// PayeeSuggestionCard business component (.pen hTdDw).
///
/// Pure-display type card for PAYEE_MATCH reviews: the imported merchant mapped
/// to the suggested payee, plus an alias hint. PAYEE_MATCH decisions
/// (ACCEPT / REJECT / ACCEPT_AND_LEARN) take no `data` payload, so this card has
/// no selection state. When the backend has no confident suggestion
/// ([suggestedPayee] is null), the mapping row degrades to a placeholder.
class PayeeSuggestionCard extends StatelessWidget {
  const PayeeSuggestionCard({
    super.key,
    required this.originalPayee,
    this.suggestedPayee,
  });

  /// Merchant name as imported (backend `originalPayee`).
  final String originalPayee;

  /// Suggested payee's display name (backend `suggestedPayee.name`); null when
  /// the backend has no confident suggestion.
  final String? suggestedPayee;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasSuggestion = suggestedPayee != null && suggestedPayee!.isNotEmpty;
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
          _headerRow(l10n),
          const SizedBox(height: TokenSpacing.md),
          if (hasSuggestion)
            _mappingRow()
          else
            Text(
              l10n.reviewCenterPayeeNoSuggestion,
              style: TokenTypography.caption(color: TokenColors.textTertiary),
            ),
          const SizedBox(height: TokenSpacing.md),
          // payeeDivider (.pen c9L3B) — full-width hairline.
          Container(
            height: TokenSize.strokeNormal,
            color: TokenColors.borderCard,
          ),
          const SizedBox(height: TokenSpacing.md),
          _hintRow(l10n),
        ],
      ),
    );
  }

  Widget _headerRow(AppLocalizations l10n) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.storefront, size: 16, color: TokenColors.textAccent),
        const SizedBox(width: TokenSpacing.sm),
        Text(
          l10n.reviewCenterPayeeMatchTitle,
          style: TokenTypography.body(
            fontWeight: FontWeight.w600,
            color: TokenColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _mappingRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            originalPayee,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.caption(color: TokenColors.textSecondary),
          ),
        ),
        const SizedBox(width: TokenSpacing.sm),
        const Icon(Icons.arrow_forward,
            size: 14, color: TokenColors.textTertiary),
        const SizedBox(width: TokenSpacing.sm),
        Flexible(
          child: Text(
            suggestedPayee!,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.body(
              fontWeight: FontWeight.w600,
              color: TokenColors.textAccent,
            ),
          ),
        ),
      ],
    );
  }

  Widget _hintRow(AppLocalizations l10n) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.auto_awesome, size: 14, color: TokenColors.textAccent),
        const SizedBox(width: TokenSpacing.sm),
        Text(
          l10n.reviewCenterPayeeMatchHint,
          style: TokenTypography.caption(color: TokenColors.textTertiary),
        ),
      ],
    );
  }
}
