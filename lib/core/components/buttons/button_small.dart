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
    // Fit-content width (aligns with .pen ButtonSmall QzJN6: width fit_content,
    // horizontal padding $space.lg). Lets longer labels fit without clipping;
    // short labels size to their content instead of a fixed 80px.
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: TokenColors.textAccent,
        foregroundColor: TokenColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: TokenRadius.borderMd,
        ),
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg),
        minimumSize: const Size(0, 32),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        label,
        style: TokenTypography.caption(
          fontWeight: FontWeight.w600,
          color: TokenColors.white,
        ),
      ),
    );
  }
}
