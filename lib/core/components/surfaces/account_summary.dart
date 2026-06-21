import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import 'tag.dart';

/// AccountSummary per .pen spec (CsW0J):
/// vertical gap sm padding xl radius md bgCard;
/// topRow(emoji 28 + nameWrap[name h4 w600 + path micro tertiary] fill +
/// statusPill Tag successBg/success) + balance display w700 + currencyTag caption secondary.
/// Presentational base component — tokens only.
class AccountSummary extends StatelessWidget {
  const AccountSummary({
    super.key,
    required this.emoji,
    required this.name,
    required this.accountPath,
    required this.balance,
    required this.currencyTag,
    this.statusLabel,
  });

  final String emoji;
  final String name;
  final String accountPath;
  final String balance;
  final String currencyTag;
  final String? statusLabel;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                emoji,
                style: TextStyle(fontSize: 28, color: tokens.textPrimary),
              ),
              const SizedBox(width: TokenSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      name,
                      style: TokenTypography.h4(
                        fontWeight: FontWeight.w600,
                        color: tokens.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      accountPath,
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                  ],
                ),
              ),
              if (statusLabel != null)
                Tag(
                  label: statusLabel!,
                  backgroundColor: TokenColors.successBg,
                  textColor: TokenColors.success,
                ),
            ],
          ),
          const SizedBox(height: TokenSpacing.sm),
          Text(
            balance,
            style: TokenTypography.display(
              fontWeight: FontWeight.w700,
              color: tokens.textPrimary,
            ),
          ),
          const SizedBox(height: TokenSpacing.sm),
          Text(
            currencyTag,
            style: TokenTypography.caption(color: tokens.textSecondary),
          ),
        ],
      ),
    );
  }
}
