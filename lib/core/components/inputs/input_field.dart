import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputField extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;
  final bool obscureText;
  final int maxLines;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;

  const InputField({
    super.key,
    this.label,
    this.placeholder,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.keyboardType,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final inputBox = SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        onChanged: onChanged,
        onTap: onTap,
        readOnly: readOnly,
        obscureText: obscureText,
        maxLines: 1,
        keyboardType: keyboardType,
        style: TokenTypography.body(color: tokens.textPrimary),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: TokenTypography.body(color: tokens.textTertiary),
          filled: true,
          fillColor: tokens.bgCard,
          contentPadding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
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
    );

    if (label == null) return inputBox;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label!,
          style: TokenTypography.caption(color: tokens.textSecondary),
        ),
        const SizedBox(height: TokenSpacing.sm),
        inputBox,
      ],
    );
  }
}
