import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ButtonText extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const ButtonText({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg),
          minimumSize: Size.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        child: Text(
          label,
          style: TokenTypography.body(
            fontWeight: FontWeight.w600,
            color: TokenColors.textAccent,
          ),
        ),
      ),
    );
  }
}
