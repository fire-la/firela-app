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
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: TokenColors.white,
          foregroundColor: TokenColors.textAccent,
          side: BorderSide(
            color: TokenColors.textAccent,
            width: 0.5,
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
              style: TokenTypography.h4(color: TokenColors.textAccent),
            ),
          ],
        ),
      ),
    );
  }
}
