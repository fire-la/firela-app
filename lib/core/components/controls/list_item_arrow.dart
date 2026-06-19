import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ListItemArrow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? trailingText;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final BoxBorder? border;

  const ListItemArrow({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.onTap,
    this.borderRadius,
    this.border,
  });

  ListItemArrow.card({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.onTap,
  })  : borderRadius = TokenRadius.borderLg,
        border = null;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final effectiveBorder = border ?? Border.all(color: tokens.borderCard, width: 0.5);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: borderRadius,
          border: effectiveBorder,
        ),
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        child: Row(
          children: [
            Icon(icon, size: 20, color: tokens.textAccent),
            const SizedBox(width: TokenSpacing.lg),
            Text(
              label,
              style: TokenTypography.body(color: tokens.textPrimary),
            ),
            Expanded(
              child: trailingText != null
                  ? Text(
                      trailingText!,
                      style: TokenTypography.body(color: tokens.textTertiary),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      textAlign: TextAlign.right,
                    )
                  : const SizedBox.shrink(),
            ),
            const SizedBox(width: TokenSpacing.sm),
            Icon(
              Icons.chevron_right,
              size: 16,
              color: tokens.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}
