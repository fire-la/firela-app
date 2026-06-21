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
            const SizedBox(width: 10),
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
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TokenTypography.micro(color: tokens.textTertiary),
                    ),
                ],
              ),
            ),
            const SizedBox(width: TokenSpacing.lg),
            // Amount (+ optional converted). Flexible so a long amount can
            // ellipsize instead of overflowing the row (matches the card bases).
            Flexible(
              child: Column(
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
                    const SizedBox(height: 2),
                    Text(
                      convertedText!,
                      style: TokenTypography.micro(color: tokens.textTertiary),
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
