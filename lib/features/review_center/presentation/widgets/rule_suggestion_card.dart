import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// RuleSuggestionCard business component (.pen yiJrC).
///
/// Pure-display type card for RULE_MATCH reviews: the matched rule name, the
/// destination account the rule would classify to, and the rule match score.
/// RULE_MATCH decisions (ACCEPT / REJECT / ACCEPT_AND_LEARN) take no `data`
/// payload, so this card has no selection state.
class RuleSuggestionCard extends StatelessWidget {
  const RuleSuggestionCard({
    super.key,
    required this.ruleName,
    this.destination,
    required this.matchPct,
  });

  /// Display name of the matched rule (backend `matchedRule.name`).
  final String ruleName;

  /// Destination account the rule would classify to (backend
  /// `suggestedAccounts.destination`); null/empty when unset.
  final String? destination;

  /// Rule match percentage (0-100) for the score row.
  final int matchPct;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasDestination = destination != null && destination!.isNotEmpty;
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
          Text(
            ruleName,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.h4(
              fontWeight: FontWeight.w700,
              color: TokenColors.textPrimary,
            ),
          ),
          const SizedBox(height: TokenSpacing.md),
          // ruleDivider (.pen Wcegm) — full-width hairline.
          Container(
              height: TokenSize.strokeNormal, color: TokenColors.borderCard),
          const SizedBox(height: TokenSpacing.md),
          _targetRow(l10n, hasDestination),
          const SizedBox(height: TokenSpacing.md),
          _confRow(l10n),
        ],
      ),
    );
  }

  Widget _headerRow(AppLocalizations l10n) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.checklist, size: 16, color: TokenColors.textAccent),
        const SizedBox(width: TokenSpacing.sm),
        Text(
          l10n.reviewCenterRuleMatchTitle,
          style: TokenTypography.body(
            fontWeight: FontWeight.w600,
            color: TokenColors.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _targetRow(AppLocalizations l10n, bool hasDestination) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          l10n.reviewCenterRuleTargetLabel,
          style: TokenTypography.caption(color: TokenColors.textTertiary),
        ),
        const SizedBox(width: TokenSpacing.sm),
        Flexible(
          child: Text(
            hasDestination ? destination! : l10n.reviewCenterRuleNoTarget,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.body(
              fontWeight: FontWeight.w600,
              color: hasDestination
                  ? TokenColors.textAccent
                  : TokenColors.textTertiary,
            ),
          ),
        ),
      ],
    );
  }

  Widget _confRow(AppLocalizations l10n) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.speed_outlined,
            size: 14, color: TokenColors.textTertiary),
        const SizedBox(width: TokenSpacing.sm),
        Text(
          l10n.reviewCenterRuleConfidence(matchPct),
          style: TokenTypography.caption(color: TokenColors.textTertiary),
        ),
      ],
    );
  }
}
