import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import 'confidence_meter.dart';

class ConfidenceIndicator extends StatelessWidget {
  final double confidence;

  const ConfidenceIndicator({super.key, required this.confidence})
      : assert(confidence >= 0 && confidence <= 1);

  @override
  Widget build(BuildContext context) {
    final tokens = ThemeTokens.of(context);

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
      child: ConfidenceMeter(confidence: confidence),
    );
  }
}
