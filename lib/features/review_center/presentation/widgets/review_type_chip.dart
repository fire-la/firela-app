import 'package:flutter/material.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// ReviewTypeChip business component (.pen RKf1Z).
///
/// A filter pill: type icon in a tinted frame + type name + a primary count
/// badge. Selected state tints the whole chip primary (used for the focus-mode
/// type filter on the review list).
class ReviewTypeChip extends StatelessWidget {
  const ReviewTypeChip({
    super.key,
    required this.icon,
    required this.label,
    required this.count,
    required this.selected,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final int count;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final chipBg = selected ? TokenColors.primary : tokens.bgCard;
    final chipBorder = selected ? TokenColors.primary : tokens.borderTag;
    final iconFrameBg = selected ? TokenColors.primary : tokens.neutral100;
    final iconColor = selected ? TokenColors.white : tokens.textSecondary;
    final nameColor = selected ? TokenColors.white : tokens.textPrimary;

    return Tappable(
      onTap: onTap,
      semanticLabel: '$label, $count',
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: TokenSpacing.md,
          vertical: TokenSpacing.sm,
        ),
        decoration: BoxDecoration(
          color: chipBg,
          borderRadius: TokenRadius.borderPill,
          border: Border.all(color: chipBorder, width: 0.5),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: iconFrameBg,
                borderRadius: BorderRadius.circular(TokenRadius.md),
              ),
              child: Icon(icon, size: 14, color: iconColor),
            ),
            const SizedBox(width: TokenSpacing.sm),
            Text(
              label,
              style: TokenTypography.caption(
                fontWeight: FontWeight.w600,
                color: nameColor,
              ),
            ),
            const SizedBox(width: TokenSpacing.sm),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: TokenSpacing.sm,
                vertical: TokenSpacing.xs,
              ),
              decoration: BoxDecoration(
                color: selected ? TokenColors.white : TokenColors.primary,
                borderRadius: TokenRadius.borderPill,
              ),
              child: Text(
                '$count',
                style: TokenTypography.micro(
                  fontWeight: FontWeight.w700,
                  color: selected ? TokenColors.primary : TokenColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
