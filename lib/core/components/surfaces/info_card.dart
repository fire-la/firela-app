import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// InfoCard per .pen spec (mlhCt):
/// vertical gap 12 padding 16 radius lg bgCard border 0.5
/// shadow(blur 18, y 2, spread 2); label(caption secondary) + child content slot.
/// Named InfoCard — `Card` clashes with the Material widget of the same name.
/// Presentational base component — tokens only.
class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: tokens.borderCard, width: 0.5),
        boxShadow: TokenShadows.cardList,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: TokenTypography.caption(color: tokens.textSecondary)),
          const SizedBox(height: TokenSpacing.lg),
          child,
        ],
      ),
    );
  }
}
