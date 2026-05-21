import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputAmount extends StatelessWidget {
  final String? label;
  final String currencySymbol;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? placeholder;

  const InputAmount({
    super.key,
    this.label,
    this.currencySymbol = '¥',
    this.controller,
    this.onChanged,
    this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: TokenSpacing.xl,
        horizontal: TokenSpacing.xxl,
      ),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: TokenShadows.cardList,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (label != null)
            Text(
              label!,
              style: TokenTypography.caption(color: TokenColors.textSecondary),
            ),
          if (label != null)
            SizedBox(height: TokenSpacing.xs),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                currencySymbol,
                style: TokenTypography.h2(
                  fontWeight: FontWeight.w700,
                  color: TokenColors.textPrimary,
                ),
              ),
              SizedBox(width: TokenSpacing.xs),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TokenTypography.display(
                    fontWeight: FontWeight.w700,
                    color: TokenColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    hintText: placeholder ?? '0.00',
                    hintStyle: TokenTypography.display(
                      fontWeight: FontWeight.w700,
                      color: TokenColors.textTertiary,
                    ),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
