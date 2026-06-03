import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// NetWorthDisplay: two-column layout per .pen spec.
/// Left: label(12px $text.secondary) + value(32px w700 $text.primary), gap=4
/// Right: label(12px $text.secondary) + value(24px w700 $text.primary), gap=4, h=66
/// justifyContent: space_between
class NetWorthDisplay extends StatelessWidget {
  const NetWorthDisplay({
    super.key,
    required this.leftLabel,
    required this.leftValue,
    required this.rightLabel,
    required this.rightValue,
  });

  final String leftLabel;
  final String leftValue;
  final String rightLabel;
  final String rightValue;

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Left column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              leftLabel,
              style: TokenTypography.caption(color: tokens.textSecondary),
            ),
            const SizedBox(height: TokenSpacing.xs),
            Text(
              leftValue,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: tokens.textPrimary,
              ),
            ),
          ],
        ),
        // Right column
        SizedBox(
          height: 66,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                rightLabel,
                style: TokenTypography.caption(color: tokens.textSecondary),
              ),
              const SizedBox(height: TokenSpacing.xs),
              Text(
                rightValue,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: tokens.textPrimary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
