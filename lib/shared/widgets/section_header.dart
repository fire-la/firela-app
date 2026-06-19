import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.title,
    this.trailing,
    this.onTrailingTap,
  });

  final String title;
  final String? trailing;
  final VoidCallback? onTrailingTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TokenTypography.h3(
              fontWeight: FontWeight.w600,
              color: TokenColors.textPrimary,
            ),
          ),
          if (trailing != null)
            InkWell(
              onTap: onTrailingTap,
              child: Row(
                children: [
                  Text(
                    trailing!,
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: TokenColors.textAccent,
                    ),
                  ),
                  const SizedBox(width: TokenSpacing.xs),
                  const Icon(
                    Icons.chevron_right,
                    size: 20,
                    color: TokenColors.textTertiary,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
