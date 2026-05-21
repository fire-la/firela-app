import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class SearchInput extends StatelessWidget {
  final String? placeholder;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;

  const SearchInput({
    super.key,
    this.placeholder,
    this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onTap: onTap,
        style: TokenTypography.body(color: TokenColors.textPrimary),
        decoration: InputDecoration(
          hintText: placeholder ?? '搜索...',
          hintStyle: TokenTypography.body(color: TokenColors.textTertiary),
          prefixIcon: Icon(
            Icons.search,
            size: 18,
            color: TokenColors.textTertiary,
          ),
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
  }
}
