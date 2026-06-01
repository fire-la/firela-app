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
        border = Border.all(color: TokenColors.borderCard, width: 0.5);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: borderRadius,
          border: border,
        ),
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        child: Row(
          children: [
            Icon(icon, size: 20, color: TokenColors.textAccent),
            SizedBox(width: TokenSpacing.lg),
            Text(
              label,
              style: TokenTypography.body(color: TokenColors.textPrimary),
            ),
            Spacer(),
            if (trailingText != null) ...[
              Flexible(
                child: Text(
                  trailingText!,
                  style: TokenTypography.body(color: TokenColors.textTertiary),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.right,
                ),
              ),
              SizedBox(width: TokenSpacing.sm),
            ],
            Icon(
              Icons.chevron_right,
              size: 16,
              color: TokenColors.textTertiary,
            ),
          ],
        ),
      ),
    );
  }
}
