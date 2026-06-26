import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/entities/similar_account.dart';

/// AccountCorrectionCard business component (.pen LW39J).
///
/// Inline type card for ACCOUNT_VALIDATION reviews: shows the invalid account
/// path, the top suggestion, and a single-select list of candidate accounts
/// drawn from `reviewData.similarAccounts`. The selected candidate becomes the
/// `chosenAccount` payload for CHOOSE_OTHER. Per ADR-0027 the user may only pick
/// from this list — there is no free-text input row.
///
/// Selection state is owned by the parent (pre-set to `suggestedAccount`); this
/// widget is presentational and reports taps via [onSelect].
///
/// Surface/text colors use `ThemeTokens.of(context)` so the card adapts to dark
/// mode (static `TokenColors.*` would stay light).
class AccountCorrectionCard extends StatelessWidget {
  const AccountCorrectionCard({
    super.key,
    required this.invalidAccount,
    this.suggestedAccount,
    required this.candidates,
    required this.selectedAccount,
    required this.onSelect,
  });

  /// The invalid account path that failed validation.
  final String invalidAccount;

  /// Top suggested account (pre-selected + "Recommended" tag if it appears in
  /// [candidates]).
  final String? suggestedAccount;

  /// Candidate accounts ranked by similarity — the picker data source.
  final List<SimilarAccount> candidates;

  /// Currently selected account path (null = none).
  final String? selectedAccount;

  /// Called with the picked account path.
  final ValueChanged<String> onSelect;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    final hasSuggested =
        suggestedAccount != null && suggestedAccount!.isNotEmpty;

    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: BorderRadius.circular(TokenRadius.lg),
        border: Border.all(
          color: tokens.borderCard,
          width: TokenSize.strokeThin,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _titleRow(l10n, tokens),
          const SizedBox(height: TokenSpacing.md),
          _correctionRow(l10n, tokens, hasSuggested),
          if (hasSuggested) ...[
            const SizedBox(height: TokenSpacing.md),
            _reasonLine(l10n, tokens),
          ],
          const SizedBox(height: TokenSpacing.md),
          // divider
          Container(
              height: TokenSize.strokeNormal, color: tokens.borderCard),
          const SizedBox(height: TokenSpacing.md),
          Text(
            l10n.reviewCenterOtherSimilarAccounts,
            style: TokenTypography.caption(color: tokens.textSecondary),
          ),
          const SizedBox(height: TokenSpacing.md),
          _candidatesList(l10n, tokens),
        ],
      ),
    );
  }

  Widget _titleRow(AppLocalizations l10n, ThemeTokens tokens) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.shield_outlined, size: 16, color: TokenColors.error),
        const SizedBox(width: TokenSpacing.sm),
        Text(
          l10n.reviewCenterAccountIssue,
          style: TokenTypography.body(
            fontWeight: FontWeight.w600,
            color: tokens.textPrimary,
          ),
        ),
      ],
    );
  }

  Widget _correctionRow(AppLocalizations l10n, ThemeTokens tokens, bool hasSuggested) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            invalidAccount,
            overflow: TextOverflow.ellipsis,
            style: TokenTypography.caption(color: TokenColors.error),
          ),
        ),
        if (hasSuggested) ...[
          const SizedBox(width: TokenSpacing.sm),
          Icon(Icons.arrow_forward, size: 14, color: tokens.textTertiary),
          const SizedBox(width: TokenSpacing.sm),
          Flexible(
            child: Text(
              suggestedAccount!,
              overflow: TextOverflow.ellipsis,
              style: TokenTypography.caption(
                fontWeight: FontWeight.w600,
                color: TokenColors.textAccent,
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _reasonLine(AppLocalizations l10n, ThemeTokens tokens) {
    // Similarity reflects the suggested account's match score. The spec sends
    // account names without a score, so hide the line when there's none.
    final match = _findCandidate(suggestedAccount);
    if (match == null || match.similarity <= 0) return const SizedBox.shrink();
    final pct = (match.similarity * 100).round();
    return Text(
      l10n.reviewCenterSimilarity(pct),
      style: TokenTypography.micro(color: tokens.textTertiary),
    );
  }

  Widget _candidatesList(AppLocalizations l10n, ThemeTokens tokens) {
    if (candidates.isEmpty) {
      return Text(
        l10n.reviewCenterNoCandidates,
        style: TokenTypography.body(color: tokens.textTertiary),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < candidates.length; i++) ...[
          if (i > 0) const SizedBox(height: TokenSpacing.md),
          _candidateRow(l10n, tokens, candidates[i]),
        ],
      ],
    );
  }

  Widget _candidateRow(
      AppLocalizations l10n, ThemeTokens tokens, SimilarAccount candidate) {
    final isSelected = selectedAccount == candidate.name;
    final isSuggested = candidate.name == suggestedAccount;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => onSelect(candidate.name),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DesignRadio(
            value: isSelected,
            onChanged: (_) => onSelect(candidate.name),
          ),
          const SizedBox(width: TokenSpacing.sm),
          Expanded(
            child: Text(
              candidate.name,
              style: TokenTypography.body(
                fontWeight:
                    isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected
                    ? tokens.textPrimary
                    : tokens.textSecondary,
              ),
            ),
          ),
          if (isSuggested) ...[
            const SizedBox(width: TokenSpacing.sm),
            Text(
              l10n.reviewCenterRecommended,
              style: TokenTypography.micro(
                fontWeight: FontWeight.w600,
                color: TokenColors.textAccent,
              ),
            ),
          ] else if (candidate.isFallback) ...[
            const SizedBox(width: TokenSpacing.sm),
            Text(
              l10n.reviewCenterFallbackAccount,
              style: TokenTypography.micro(color: tokens.textTertiary),
            ),
          ],
        ],
      ),
    );
  }

  SimilarAccount? _findCandidate(String? name) {
    if (name == null) return null;
    for (final c in candidates) {
      if (c.name == name) return c;
    }
    return null;
  }
}
