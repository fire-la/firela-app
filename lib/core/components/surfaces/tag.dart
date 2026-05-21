import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class Tag extends StatelessWidget {
  final String label;
  final Color? textColor;
  final Color? backgroundColor;

  const Tag({
    super.key,
    required this.label,
    this.textColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: TokenSpacing.xs,
        horizontal: TokenSpacing.lg,
      ),
      decoration: BoxDecoration(
        color: backgroundColor ?? TokenColors.bgCard,
        borderRadius: BorderRadius.circular(11),
        border: Border.all(color: TokenColors.borderTag, width: 0.5),
      ),
      child: Text(
        label,
        style: TokenTypography.caption(color: textColor ?? TokenColors.textPrimary),
      ),
    );
  }
}
