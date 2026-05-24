import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// CategoryCard per .pen spec (M5xPt):
/// Vertical, gap=10, padding=16, w=fill_container
/// catIcon(40×40 r=10 fill=$accent.cream, icon 22px $text.secondary)
///   + catLabelRow(catName h4 w600 $text.primary + chevron-right 16px $text.tertiary, gap=4)
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.name,
    this.icon,
    this.onTap,
  });

  final String name;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Category icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: TokenColors.accentCream,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon ?? Icons.category_outlined,
                size: 22,
                color: TokenColors.textSecondary,
              ),
            ),
            const SizedBox(height: 10),
            // Category label + chevron
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  name,
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.w600,
                    color: TokenColors.textPrimary,
                  ),
                ),
                const SizedBox(width: TokenSpacing.xs),
                Icon(
                  Icons.chevron_right,
                  size: 16,
                  color: TokenColors.textTertiary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
