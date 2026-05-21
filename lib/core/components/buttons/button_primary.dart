import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ButtonPrimary extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? icon;
  final bool isLoading;

  const ButtonPrimary({
    super.key,
    required this.label,
    this.onPressed,
    this.icon,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: TokenColors.textAccent,
          foregroundColor: TokenColors.white,
          disabledBackgroundColor: TokenColors.textAccent.withValues(alpha: 0.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TokenRadius.pill),
          ),
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
        child: isLoading
            ? SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: TokenColors.white,
                ),
              )
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    icon!,
                    SizedBox(width: TokenSpacing.sm),
                  ],
                  Text(
                    label,
                    style: TokenTypography.h4(color: TokenColors.white),
                  ),
                ],
              ),
      ),
    );
  }
}
