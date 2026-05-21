import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignBadge extends StatelessWidget {
  final String text;
  final Color? color;

  const DesignBadge({
    super.key,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        color: color ?? TokenColors.textAccent,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          text,
          style: TokenTypography.micro(
            fontWeight: FontWeight.w600,
            color: TokenColors.white,
          ),
        ),
      ),
    );
  }
}
