import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';
import '../../core/components/surfaces/design_card.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    super.key,
    required this.title,
    required this.value,
    this.subtitle,
    this.trailing,
    this.backgroundColor,
    this.onTap,
  });

  final String title;
  final String value;
  final String? subtitle;
  final Widget? trailing;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DesignCard(
      color: backgroundColor,
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TokenTypography.caption(color: TokenColors.textSecondary),
              ),
              if (trailing != null) trailing!,
            ],
          ),
          SizedBox(height: TokenSpacing.sm),
          Text(
            value,
            style: TokenTypography.display(
              fontWeight: FontWeight.w700,
              color: TokenColors.textPrimary,
            ),
          ),
          if (subtitle != null) ...[
            SizedBox(height: TokenSpacing.xs),
            Text(
              subtitle!,
              style: TokenTypography.caption(color: TokenColors.textTertiary),
            ),
          ],
        ],
      ),
    );
  }
}
