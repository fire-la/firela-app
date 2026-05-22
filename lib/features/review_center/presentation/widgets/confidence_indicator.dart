import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/models/confidence_level.dart';

/// ConfidenceIndicator per .pen spec:
/// Progress bar + percentage text.
/// Uses Card wrapper: radius.lg, shadow, border, padding=16, gap=12
class ConfidenceIndicator extends StatelessWidget {
  const ConfidenceIndicator({
    super.key,
    required this.level,
    this.percentage,
    this.showLabel = false,
    this.size = 10.0,
  });

  final ConfidenceLevel level;
  final double? percentage;
  final bool showLabel;
  final double size;

  Color get _color {
    switch (level) {
      case ConfidenceLevel.high:
        return TokenColors.success;
      case ConfidenceLevel.medium:
        return TokenColors.primary;
      case ConfidenceLevel.low:
        return TokenColors.error;
    }
  }

  @override
  Widget build(BuildContext context) {
    final pct = percentage ?? level.defaultPercentage;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: TokenColors.borderCard, width: 0.5),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 18,
            offset: Offset(0, 2),
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Progress bar
          ClipRRect(
            borderRadius: BorderRadius.circular(TokenRadius.pill),
            child: LinearProgressIndicator(
              value: pct / 100,
              backgroundColor: TokenColors.trackBackground,
              valueColor: AlwaysStoppedAnimation<Color>(_color),
              minHeight: 8,
            ),
          ),
          const SizedBox(height: TokenSpacing.lg),
          // Percentage text
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${pct.round()}%',
                style: TokenTypography.caption(
                  fontWeight: FontWeight.w600,
                  color: _color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
