import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../domain/models/confidence_level.dart';

/// Visual indicator for confidence level
/// Displays a colored dot with optional label
class ConfidenceIndicator extends StatelessWidget {
  const ConfidenceIndicator({
    super.key,
    required this.level,
    this.showLabel = false,
    this.size = 10.0,
  });

  final ConfidenceLevel level;
  final bool showLabel;
  final double size;

  /// Get color for confidence level
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

  /// Get background color (lighter version)
  Color get _backgroundColor {
    switch (level) {
      case ConfidenceLevel.high:
        return TokenColors.success.withValues(alpha: 0.1);
      case ConfidenceLevel.medium:
        return TokenColors.primary.withValues(alpha: 0.1);
      case ConfidenceLevel.low:
        return TokenColors.error.withValues(alpha: 0.1);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (showLabel) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: _backgroundColor,
          borderRadius: TokenRadius.borderMd,
          border: Border.all(color: _color.withValues(alpha: 0.3)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: _color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: TokenSpacing.sm),
            Text(
              level.displayName,
              style: TokenTypography.caption(
                color: _color,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    }

    // Just the dot
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: _color,
        shape: BoxShape.circle,
      ),
    );
  }
}
