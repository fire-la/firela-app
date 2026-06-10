import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class ConfidenceIndicator extends StatelessWidget {
  final double confidence;

  const ConfidenceIndicator({super.key, required this.confidence})
      : assert(confidence >= 0 && confidence <= 1);

  Color get _barColor {
    if (confidence >= 0.85) return TokenColors.success;
    if (confidence >= 0.60) return TokenColors.textAccent;
    return TokenColors.error;
  }

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);
    final percent = (confidence * 100).toInt();

    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: tokens.bgCard,
        borderRadius: TokenRadius.borderLg,
        border: Border.all(color: tokens.borderCard, width: TokenSize.strokeThin),
        boxShadow: [
          BoxShadow(
            color: tokens.shadow,
            blurRadius: 18,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
        children: [
          Text(
            '$percent%',
            style: TokenTypography.micro(
              fontWeight: FontWeight.w600,
              color: _barColor,
            ),
          ),
          const SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: ClipRRect(
              borderRadius: TokenRadius.borderPill,
              child: SizedBox(
                height: TokenSize.progressHeight,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: TokenColors.trackBackground,
                        borderRadius: TokenRadius.borderPill,
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: confidence.clamp(0.0, 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: _barColor,
                          borderRadius: TokenRadius.borderPill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
