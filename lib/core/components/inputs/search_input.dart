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
    final tokens = ThemeTokens.of(context);
    return SizedBox(
      height: 48,
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        onTap: onTap,
        style: TokenTypography.body(color: tokens.textPrimary),
        decoration: InputDecoration(
          hintText: placeholder ?? '搜索...',
          hintStyle: TokenTypography.body(color: tokens.textTertiary),
          prefixIcon: Icon(
            Icons.search,
            size: 18,
            color: tokens.textTertiary,
          ),
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
            borderSide: BorderSide(color: TokenColors.textAccent, width: 0.5),
          ),
        ),
      ),
    );
  }
}
