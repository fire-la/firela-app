import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputSelect extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final String? value;
  final VoidCallback? onTap;

  const InputSelect({
    super.key,
    this.label,
    this.placeholder,
    this.value,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final selectBox = GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        decoration: BoxDecoration(
          color: tokens.bgCard,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(color: tokens.borderCard, width: 0.5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              value ?? placeholder ?? '',
              style: TokenTypography.body(
                color: value != null
                    ? tokens.textPrimary
                    : tokens.textTertiary,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 18,
              color: tokens.textTertiary,
            ),
          ],
        ),
      ),
    );

    if (label == null) return selectBox;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: TokenTypography.caption(color: tokens.textSecondary),
        ),
        SizedBox(height: TokenSpacing.sm),
        selectBox,
      ],
    );
  }
}
