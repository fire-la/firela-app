import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';
import '../../core/components/surfaces/design_card.dart';

class ListTileCard extends StatelessWidget {
  const ListTileCard({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
  });

  final Widget? leading;
  final String title;
  final String? subtitle;
  final Widget? trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return DesignCard(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      onTap: onTap,
      child: Row(
        children: [
          if (leading != null) ...[
            leading!,
            SizedBox(width: TokenSpacing.lg),
          ],
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TokenTypography.body(color: TokenColors.textPrimary),
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
          ),
          if (trailing != null) ...[
            SizedBox(width: TokenSpacing.lg),
            trailing!,
          ] else ...[
            SizedBox(width: TokenSpacing.lg),
            Icon(
              Icons.chevron_right,
              color: TokenColors.textTertiary,
              size: 20,
            ),
          ],
        ],
      ),
    );
  }
}
