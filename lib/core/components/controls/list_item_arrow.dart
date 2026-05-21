import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ListItemArrow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String? trailingText;
  final VoidCallback? onTap;

  const ListItemArrow({
    super.key,
    required this.icon,
    required this.label,
    this.trailingText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        color: TokenColors.bgCard,
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        child: Row(
          children: [
            Icon(icon, size: 20, color: TokenColors.textAccent),
            SizedBox(width: TokenSpacing.lg),
            Expanded(
              child: Text(
                label,
                style: TokenTypography.body(color: TokenColors.textPrimary),
              ),
            ),
            if (trailingText != null) ...[
              Text(
                trailingText!,
                style: TokenTypography.body(color: TokenColors.textTertiary),
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
