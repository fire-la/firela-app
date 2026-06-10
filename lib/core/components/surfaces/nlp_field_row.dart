import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class NlpFieldRow extends StatelessWidget {
  final String label;
  final Widget valueChild;
  final bool showChevron;
  final bool isMissing;
  final VoidCallback? onTap;

  const NlpFieldRow({
    super.key,
    required this.label,
    required this.valueChild,
    this.showChevron = true,
    this.isMissing = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);

    final content = Container(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.xl),
      decoration: isMissing
          ? BoxDecoration(
              borderRadius: TokenRadius.borderMd,
              border: Border.all(color: TokenColors.textAccent, width: TokenSize.strokeNormal),
            )
          : null,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            isMissing ? '$label *' : label,
            style: TokenTypography.caption(color: tokens.textSecondary),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (showChevron)
                  Flexible(child: valueChild)
                else
                  Expanded(child: valueChild),
                if (showChevron) ...[
                  const SizedBox(width: TokenSpacing.md),
                  Icon(
                    Icons.chevron_right,
                    size: TokenSize.iconSmall,
                    color: tokens.textTertiary,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );

    // Only wrap with GestureDetector when onTap is provided
    // to avoid interfering with child TextField focus/editing
    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: content,
      );
    }

    return content;
  }
}
