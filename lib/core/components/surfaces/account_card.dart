import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import 'tag.dart';

/// AccountCard: colored dot + (name / amount+currency / converted / cost) +
/// (tag + rate) + chevron.
/// .pen spec (G77nER): card r=18, padding [16,20], shadow; dot 24×24;
/// name caption tertiary; amount h3 w700 + currency caption w600 tertiary;
/// converted/cost caption textSecondary; tag via base Tag; rate caption w600
/// accent; chevron 20px tertiary, always shown.
/// Presentational base component — tokens only, no domain models or l10n.
class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.iconColor,
    required this.name,
    required this.amount,
    this.currency,
    this.convertedText,
    this.costText,
    this.tagLabel,
    this.rateText,
    this.onTap,
  });

  final Color iconColor;
  final String name;
  final String amount;
  final String? currency;
  final String? convertedText;
  final String? costText;
  final String? tagLabel;
  final String? rateText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final showRight = tagLabel != null || rateText != null;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: TokenSpacing.xl, horizontal: TokenSpacing.xxl),
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: tokens.borderCard, width: 0.5),
          boxShadow: [
            BoxShadow(
              color: tokens.shadow,
              blurRadius: 18,
              offset: const Offset(0, 2),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Account-type dot
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            // name / amount+currency / converted / cost
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TokenTypography.caption(color: tokens.textTertiary),
                  ),
                  const SizedBox(height: TokenSpacing.xs),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Text(
                          amount,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TokenTypography.h3(
                            fontWeight: FontWeight.w700,
                            color: tokens.textPrimary,
                          ),
                        ),
                      ),
                      if (currency != null) ...[
                        const SizedBox(width: TokenSpacing.xs),
                        Text(
                          currency!,
                          style: TokenTypography.caption(
                            fontWeight: FontWeight.w600,
                            color: tokens.textTertiary,
                          ),
                        ),
                      ],
                    ],
                  ),
                  if (convertedText != null) ...[
                    const SizedBox(height: TokenSpacing.xs),
                    Text(
                      convertedText!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TokenTypography.caption(color: tokens.textSecondary),
                    ),
                  ],
                  if (costText != null) ...[
                    const SizedBox(height: TokenSpacing.xs),
                    Text(
                      costText!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style:
                          TokenTypography.caption(color: tokens.textSecondary),
                    ),
                  ],
                ],
              ),
            ),
            // tag + rate
            if (showRight) ...[
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (tagLabel != null) Tag(label: tagLabel!),
                  if (tagLabel != null && rateText != null)
                    const SizedBox(height: TokenSpacing.sm),
                  if (rateText != null)
                    Text(
                      rateText!,
                      style: TokenTypography.caption(
                        fontWeight: FontWeight.w600,
                        color: tokens.textAccent,
                      ),
                    ),
                ],
              ),
            ],
            const SizedBox(width: 10),
            Icon(
              Icons.chevron_right,
              size: 20,
              color: tokens.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}
