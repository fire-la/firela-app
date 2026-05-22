import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

/// .pen spec: error icon 48px $color.error, h3 title w600, body subtitle, button
class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    this.title,
    required this.message,
    this.onRetry,
    this.actionLabel,
  });

  final String? title;
  final String message;
  final VoidCallback? onRetry;
  final String? actionLabel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(TokenSpacing.xxl + TokenSpacing.xs),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 48,
              color: TokenColors.error,
            ),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              title ?? 'Error',
              style: TokenTypography.h3(
                fontWeight: FontWeight.w600,
                color: TokenColors.textPrimary,
              ),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              message,
              style: TokenTypography.body(color: TokenColors.textSecondary),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: TokenSpacing.xxl + TokenSpacing.xs),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onRetry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TokenColors.textAccent,
                    foregroundColor: TokenColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(TokenRadius.pill),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    actionLabel ?? 'Retry',
                    style: TokenTypography.body(
                      fontWeight: FontWeight.w500,
                      color: TokenColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
