import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// PipelineErrorCard business component (.pen lXQEi).
///
/// Pure-display type card for PIPELINE_ERROR reviews: an error-themed header
/// (alert icon + error-type badge) over the error message body. The error
/// theme (error-tinted stroke/icon/badge) distinguishes it from the accent-
/// themed cards. PIPELINE_ERROR decisions (FIX / IGNORE / CANCEL) take no
/// `data` payload, so this card has no selection state.
class PipelineErrorCard extends StatelessWidget {
  const PipelineErrorCard({
    super.key,
    required this.errorType,
    required this.errorMessage,
  });

  /// Error category wire value: 'BOOKING' | 'BALANCE' | 'VALIDATION'.
  final String errorType;

  /// Human-readable error detail (the card body).
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(TokenSpacing.lg),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: BorderRadius.circular(TokenRadius.lg),
        border: Border.all(
          color: TokenColors.error,
          width: TokenSize.strokeThin,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          _headerRow(l10n),
          const SizedBox(height: TokenSpacing.md),
          // pipeErrorMessage (.pen O0sVP) — fixed-width, wraps.
          Text(
            errorMessage,
            style: TokenTypography.body(color: TokenColors.textPrimary),
          ),
        ],
      ),
    );
  }

  Widget _headerRow(AppLocalizations l10n) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // pipeHeaderIcon (.pen WJiVH) — triangle-alert, error.
        const Icon(Icons.warning, size: 16, color: TokenColors.error),
        const SizedBox(width: TokenSpacing.sm),
        // pipeErrorBadge (.pen aYmRo) — error.bg, error text.
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: TokenSpacing.sm,
            vertical: TokenSpacing.xs,
          ),
          decoration: BoxDecoration(
            color: TokenColors.errorBg,
            borderRadius: BorderRadius.circular(TokenRadius.sm),
          ),
          child: Text(
            _errorTypeLabel(l10n),
            style: TokenTypography.caption(
              fontWeight: FontWeight.w600,
              color: TokenColors.error,
            ),
          ),
        ),
      ],
    );
  }

  String _errorTypeLabel(AppLocalizations l10n) {
    switch (errorType) {
      case 'BOOKING':
        return l10n.reviewCenterErrorTypeBooking;
      case 'BALANCE':
        return l10n.reviewCenterErrorTypeBalance;
      case 'VALIDATION':
        return l10n.reviewCenterErrorTypeValidation;
      default:
        // Unknown errorType → generic pipeline-error label.
        return l10n.reviewTypePipelineError;
    }
  }
}
