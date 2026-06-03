import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

/// AssetBar: two-column asset/liability display with vertical divider.
/// .pen spec: cornerRadius=$radius.md, fill=$bg.bar, padding=[12,20],
/// gap=8 per side, divider 1px×20 $border.card
class AssetBar extends StatelessWidget {
  const AssetBar({
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
    return Container(
      padding: const EdgeInsets.symmetric(vertical: TokenSpacing.lg, horizontal: TokenSpacing.xxl),
      decoration: BoxDecoration(
        color: TokenColors.trackBackground,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Row(
        children: [
          // Left column
          _buildColumn(leftLabel, leftValue, tokens),
          // Divider
          Container(
            width: 1,
            height: 20,
            color: tokens.borderCard,
          ),
          // Right column
          _buildColumn(rightLabel, rightValue, tokens),
        ],
      ),
    );
  }

  Widget _buildColumn(String label, String value, ThemeTokens tokens) {
    return Expanded(
      child: Row(
        children: [
          Text(
            label,
            style: TokenTypography.caption(color: tokens.textSecondary),
          ),
          const SizedBox(width: TokenSpacing.lg),
          Text(
            value,
            style: TokenTypography.body(
              fontWeight: FontWeight.w700,
              color: tokens.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
