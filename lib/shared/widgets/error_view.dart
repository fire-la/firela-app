import 'package:flutter/material.dart';
import '../../core/design_tokens/design_tokens.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.message,
    this.onRetry,
  });

  final String message;
  final VoidCallback? onRetry;

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
              size: 64,
              color: TokenColors.error,
            ),
            SizedBox(height: TokenSpacing.xl),
            Text(
              'Error',
              style: TokenTypography.h3(
                fontWeight: FontWeight.w600,
                color: TokenColors.textPrimary,
              ),
            ),
            SizedBox(height: TokenSpacing.sm),
            Text(
              message,
              style: TokenTypography.body(color: TokenColors.textSecondary),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              SizedBox(height: TokenSpacing.xxl + TokenSpacing.xs),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: onRetry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TokenColors.textAccent,
                    foregroundColor: TokenColors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(TokenRadius.pill),
                    ),
                    elevation: 0,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: Text(
                    'Retry',
                    style: TokenTypography.h4(color: TokenColors.white),
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
