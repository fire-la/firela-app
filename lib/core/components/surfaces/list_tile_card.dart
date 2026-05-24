import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// ListTileCard per .pen spec (iigvG):
/// cornerRadius=$radius.md, fill=$bg.card, h=60, padding=12, gap=12
/// Horizontal: leading(32×32 r=16 $neutral.100) + content(gap=4, title 14px + subtitle 12px)
///   + chevron-right(20px $text.tertiary)
class ListTileCard extends StatelessWidget {
  const ListTileCard({
    super.key,
    this.leadingIcon,
    this.leadingColor,
    this.title,
    this.subtitle,
    this.onTap,
  });

  final IconData? leadingIcon;
  final Color? leadingColor;
  final String? title;
  final String? subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderMd,
        ),
        child: Row(
          children: [
            // Leading icon
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: TokenColors.neutral100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                leadingIcon ?? Icons.receipt_outlined,
                size: 16,
                color: leadingColor ?? TokenColors.textTertiary,
              ),
            ),
            const SizedBox(width: TokenSpacing.lg),
            // Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: TokenTypography.body(
                        color: TokenColors.textPrimary,
                      ),
                    ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: TokenTypography.caption(
                        color: TokenColors.textTertiary,
                      ),
                    ),
                ],
              ),
            ),
            // Chevron
            Icon(
              Icons.chevron_right,
              size: 20,
              color: TokenColors.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}
