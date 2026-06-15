import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ButtonSecondary extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;

  const ButtonSecondary({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return SizedBox(
      height: TokenSize.buttonHeight,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: tokens.bgCard,
          foregroundColor: tokens.textAccent,
          side: BorderSide(
            color: tokens.textAccent,
            width: TokenSize.strokeThin,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TokenRadius.pill),
          ),
          padding: EdgeInsets.zero,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              SizedBox(width: TokenSpacing.sm),
            ],
            Text(
              label,
              style: TokenTypography.h4(color: tokens.textAccent),
            ),
          ],
        ),
      ),
    );
  }
}
