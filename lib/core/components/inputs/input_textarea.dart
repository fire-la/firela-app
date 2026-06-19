import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputTextarea extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final int maxLength;
  final int maxLines;

  const InputTextarea({
    super.key,
    this.label,
    this.placeholder,
    this.controller,
    this.onChanged,
    this.maxLength = 200,
    this.maxLines = 4,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final textarea = Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 96,
          child: TextField(
            controller: controller,
            onChanged: onChanged,
            maxLength: maxLength,
            maxLines: maxLines,
            style: TokenTypography.body(color: tokens.textPrimary),
            buildCounter: (_, {required currentLength, required isFocused, required maxLength}) => null,
            decoration: InputDecoration(
              hintText: placeholder,
              hintStyle: TokenTypography.body(color: tokens.textTertiary),
              filled: true,
              fillColor: tokens.bgCard,
              contentPadding: const EdgeInsets.symmetric(
                vertical: TokenSpacing.lg,
                horizontal: TokenSpacing.xl,
              ),
              border: OutlineInputBorder(
                borderRadius: TokenRadius.borderMd,
                borderSide: BorderSide(color: tokens.borderCard, width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: TokenRadius.borderMd,
                borderSide: BorderSide(color: tokens.borderCard, width: 0.5),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: TokenRadius.borderMd,
                borderSide: const BorderSide(color: TokenColors.textAccent, width: 0.5),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '${controller?.text.length ?? 0}/$maxLength',
            style: TokenTypography.micro(color: tokens.textTertiary),
          ),
        ),
      ],
    );

    if (label == null) return textarea;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: TokenTypography.caption(color: tokens.textSecondary),
        ),
        const SizedBox(height: TokenSpacing.sm),
        textarea,
      ],
    );
  }
}
