import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  final Color? color;

  const DesignCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final container = Container(
      width: double.infinity,
      padding: padding ?? const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: color ?? TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: TokenShadows.cardList,
      ),
      child: child,
    );

    if (onTap == null) return container;

    return GestureDetector(
      onTap: onTap,
      child: container,
    );
  }
}
