import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ListItemArrow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? trailingText;
  final Color? trailingColor;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final Color? backgroundColor;

  const ListItemArrow({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.trailingColor,
    this.onTap,
    this.borderRadius,
    this.border,
    this.backgroundColor,
  });

  ListItemArrow.card({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.trailingColor,
    this.onTap,
  })  : borderRadius = TokenRadius.borderLg,
        border = null,
        backgroundColor = null;

  /// Plain row: transparent background, no visible border, square corners.
  /// For rows nested inside an outer card container (.pen eC35n infoCard).
  ListItemArrow.plain({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.trailingColor,
    this.onTap,
  })  : borderRadius = null,
        border = Border.all(color: Colors.transparent, width: 0.5),
        backgroundColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final effectiveBorder = border ?? Border.all(color: tokens.borderCard, width: 0.5);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: backgroundColor ?? tokens.bgCard,
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
                      style: TokenTypography.body(
                          color: trailingColor ?? tokens.textTertiary),
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
