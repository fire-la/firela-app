import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// TransactionRow: icon in a neutral rounded frame + title/subtitle + amount.
/// .pen spec (NcNfF): padding 12, icon 18px in 32×32 r=16 frame (neutral100),
/// title body w500 textPrimary, subtitle micro textTertiary,
/// amount body w700 (sign-colored), optional converted micro textTertiary.
class TransactionRow extends StatelessWidget {
  const TransactionRow({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    required this.amount,
    this.amountColor,
    this.convertedText,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final String amount;
  final Color? amountColor;
  final String? convertedText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.all(TokenSpacing.lg),
        child: Row(
          children: [
            // Icon frame
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: tokens.neutral100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Icon(icon, size: 18, color: tokens.textPrimary),
              ),
            ),
            const SizedBox(width: TokenSpacing.md),
            // Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: tokens.textPrimary,
                    ),
                  ),
                  if (subtitle != null) ...[
                    const SizedBox(height: TokenSpacing.xs),
                    Text(
                      subtitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(width: TokenSpacing.lg),
            // Amount (+ optional converted). Intrinsic width so it sits flush
            // at the row's right edge (mirrors NcNfF space_between right frame);
            // Expanded(info) above absorbs the middle and ellipsizes long titles.
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  amount,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w700,
                    color: amountColor ?? tokens.textPrimary,
                  ),
                ),
                if (convertedText != null) ...[
                  const SizedBox(height: TokenSpacing.xs),
                  Text(
                    convertedText!,
                    style: TokenTypography.micro(color: tokens.textTertiary),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
