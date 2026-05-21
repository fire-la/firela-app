import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({
    super.key,
    required this.child,
    this.gradient,
    this.onTap,
  });

  final Widget child;
  final Gradient? gradient;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final defaultGradient = LinearGradient(
      colors: [
        TokenColors.neutral700,
        TokenColors.neutral900,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        gradient: gradient ?? defaultGradient,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: TokenShadows.cardList,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
