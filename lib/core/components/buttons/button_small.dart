import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ButtonSmall extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const ButtonSmall({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 32,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: TokenColors.textAccent,
          foregroundColor: TokenColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: TokenRadius.borderMd,
          ),
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
        child: Text(
          label,
          style: TokenTypography.caption(
            fontWeight: FontWeight.w600,
            color: TokenColors.white,
          ),
        ),
      ),
    );
  }
}
