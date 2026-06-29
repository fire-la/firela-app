import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../domain/models/posting_edit.dart';

/// Read-only posting row (.pen o5L0Q). Renders the live editable working copy
/// ([PostingEdit]) — it updates in place as the top-level amount/category/account
/// fields drive the postings.
class PostingEditorRow extends StatelessWidget {
  const PostingEditorRow({super.key, required this.posting, required this.l10n});

  final PostingEdit posting;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final account = posting.account;
    final leaf = account.isEmpty ? '—' : account.split(':').last;
    final units = posting.units;
    final currency = posting.currency ?? '';
    // ponytail: `units == null` is unreachable for persisted data — interpolation
    // fills MISSING before persist. The "Auto" badge branch stays for any future
    // manual entry form that produces real MISSING postings.
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
