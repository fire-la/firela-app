import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class InputAmount extends StatelessWidget {
  final String? label;
  final String currencySymbol;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final String? placeholder;

  static const _amountFont = 'DIN Alternate';

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
            const SizedBox(height: TokenSpacing.xs),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                currencySymbol,
                style: TextStyle(
                  fontFamily: _amountFont,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: TokenColors.textPrimary,
                ),
              ),
              const SizedBox(width: TokenSpacing.xs),
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: onChanged,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  style: TextStyle(
                    fontFamily: _amountFont,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.64,
                    color: TokenColors.textPrimary,
                  ),
                  decoration: InputDecoration(
                    hintText: placeholder ?? '0.00',
                    hintStyle: TextStyle(
                      fontFamily: _amountFont,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.64,
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
          // Divider
          Container(
            height: 0.5,
            color: TokenColors.borderCard,
            margin: const EdgeInsets.only(top: TokenSpacing.xs),
          ),
        ],
      ),
    );
  }
}
