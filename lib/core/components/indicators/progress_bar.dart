import 'package:flutter/material.dart';
import '../../design_tokens/design_tokens.dart';

class DesignProgressBar extends StatelessWidget {
  final double progress;
  final double height;

  const DesignProgressBar({
    super.key,
    required this.progress,
    this.height = 8,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(TokenRadius.pill),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: TokenColors.trackBackground,
                borderRadius: BorderRadius.circular(TokenRadius.pill),
              ),
            ),
            FractionallySizedBox(
              widthFactor: progress.clamp(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: TokenColors.textAccent,
                  borderRadius: BorderRadius.circular(TokenRadius.pill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DesignProgressBarWarning extends StatelessWidget {
  final double progress;
  final double height;

  const DesignProgressBarWarning({
    super.key,
    required this.progress,
    this.height = 8,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(TokenRadius.pill),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: TokenColors.trackBackground,
                borderRadius: BorderRadius.circular(TokenRadius.pill),
              ),
            ),
            FractionallySizedBox(
              widthFactor: progress.clamp(0.0, 1.0),
              child: Container(
                decoration: BoxDecoration(
                  color: TokenColors.error,
                  borderRadius: BorderRadius.circular(TokenRadius.pill),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
