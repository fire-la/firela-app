import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';
import 'progress_bar.dart';

/// ConfidenceMeter — bare confidence display (percentage + bar), no card.
///
/// Threshold-colored (>=0.85 success, >=0.60 textAccent, else error). Use this
/// inside cards or sections to avoid a card-in-card; use [ConfidenceIndicator]
/// for the standalone card treatment.
class ConfidenceMeter extends StatelessWidget {
  const ConfidenceMeter({super.key, required this.confidence})
      : assert(confidence >= 0 && confidence <= 1);

  final double confidence;

  Color get _color {
    if (confidence >= 0.85) return TokenColors.success;
    if (confidence >= 0.60) return TokenColors.textAccent;
    return TokenColors.error;
  }

  @override
  Widget build(BuildContext context) {
    final percent = (confidence * 100).toInt();
    return Row(
      children: [
        Text(
          '$percent%',
          style: TokenTypography.micro(
            fontWeight: FontWeight.w600,
            color: _color,
          ),
        ),
        const SizedBox(width: TokenSpacing.lg),
        Expanded(
          child: DesignProgressBar(
            progress: confidence.clamp(0.0, 1.0),
            color: _color,
          ),
        ),
      ],
    );
  }
}
