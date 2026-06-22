import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';

/// Read-only posting row (.pen o5L0Q).
///
/// Two states:
///  - has units  → renders the numeric amount + currency.
///  - units null → interpolated by the backend; renders an "Auto" badge
///                 (accent capsule, not tappable). No editor affordance.
///
/// Read-only by design: postings are immutable after entry (ADR-0001),
/// and the declarative MISSING edit UX only happens at creation time
/// (no manual entry form exists yet).
class PostingEditorRow extends StatelessWidget {
  const PostingEditorRow({super.key, required this.posting, required this.l10n});

  final Map<String, dynamic> posting;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final account =
        (posting['accountName'] as String?) ?? (posting['account'] as String?) ?? '';
    final leaf = account.isEmpty ? '—' : account.split(':').last;
    final units = posting['units']?.toString();
    final currency = (posting['currency'] as String?) ?? '';
    final interpolated = units == null;

    return Padding(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: tokens.neutral100,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(_accountIcon(account), size: 18, color: tokens.textPrimary),
          ),
          const SizedBox(width: TokenSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  leaf,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w500,
                    color: tokens.textPrimary,
                  ),
                ),
                if (account.isNotEmpty) ...[
                  const SizedBox(height: TokenSpacing.xs),
                  Text(
                    account,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TokenTypography.micro(color: tokens.textTertiary),
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          if (interpolated)
            Container(
              padding: const EdgeInsets.symmetric(
                vertical: TokenSpacing.xs,
                horizontal: TokenSpacing.lg,
              ),
              decoration: BoxDecoration(
                color: TokenColors.accentCream,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Text(
                l10n.txPostingInterpolated,
                style: TokenTypography.caption(color: TokenColors.textAccent),
              ),
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  units,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w700,
                    color: tokens.textPrimary,
                  ),
                ),
                if (currency.isNotEmpty) ...[
                  const SizedBox(height: TokenSpacing.xs),
                  Text(
                    currency,
                    style: TokenTypography.micro(color: tokens.textTertiary),
                  ),
                ],
              ],
            ),
        ],
      ),
    );
  }
}

IconData _accountIcon(String account) {
  if (account.startsWith('Liabilities')) return Icons.credit_card;
  if (account.startsWith('Income')) return Icons.south_west;
  if (account.startsWith('Expenses')) return Icons.shopping_cart_outlined;
  return Icons.account_balance_wallet_outlined;
}
