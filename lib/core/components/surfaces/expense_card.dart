import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// ExpenseCard: cream icon box + (name + meta) + (amount + currency).
/// .pen spec (ox3Ns): card r=18, padding [16,20], shadow; icon 18px in 36×36 cream r=10;
/// name body w500, meta caption tertiary; amount h3 w700 + currency caption w600.
/// Presentational base component — tokens only, no domain models or l10n.
class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.icon,
    required this.name,
    required this.amount,
    this.iconColor,
    this.meta,
    this.currency,
    this.onTap,
  });

  final IconData icon;
  final String name;
  final String amount;
  final Color? iconColor;
  final String? meta;
  final String? currency;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
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
          children: [
            // Icon frame (uniform cream tint, colored glyph)
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: tokens.accentCream,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Icon(icon, size: 18, color: iconColor ?? tokens.textAccent),
              ),
            ),
            const SizedBox(width: 10),
            // Name + meta (fills available; ellipsizes if too long)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: tokens.textPrimary,
                    ),
                  ),
                  if (meta != null)
                    Text(
                      meta!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TokenTypography.caption(color: tokens.textTertiary),
                    ),
                ],
              ),
            ),
            // Amount + currency (right-aligned; ellipsizes if too wide)
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
            ),
          ],
        ),
      ),
    );
  }
}
