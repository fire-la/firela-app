import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputWithIcon extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final IconData icon;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;

  const InputWithIcon({
    super.key,
    this.label,
    this.placeholder,
    required this.icon,
    this.controller,
    this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final inputBox = SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        keyboardType: keyboardType,
        style: TokenTypography.body(color: TokenColors.textPrimary),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: TokenTypography.body(color: TokenColors.textTertiary),
          prefixIcon: Icon(icon, size: 18, color: TokenColors.textAccent),
          filled: true,
          fillColor: TokenColors.bgCard,
          contentPadding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
          border: OutlineInputBorder(
            borderRadius: TokenRadius.borderMd,
            borderSide: BorderSide(color: TokenColors.borderCard, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: TokenRadius.borderMd,
            borderSide: BorderSide(color: TokenColors.borderCard, width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: TokenRadius.borderMd,
            borderSide: BorderSide(color: TokenColors.textAccent, width: 0.5),
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
          style: TokenTypography.caption(color: TokenColors.textSecondary),
        ),
        SizedBox(height: TokenSpacing.sm),
        inputBox,
      ],
    );
  }
}
