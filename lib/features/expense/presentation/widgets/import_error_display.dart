import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Enum representing different import error types
enum ImportErrorType {
  fileTooLarge,
  unsupportedFormat,
  networkError,
  parsingFailed,
  duplicateDetected,
  generic,
}

/// Extension to map error codes to error types
extension ImportErrorTypeExtension on ImportErrorType {
  /// Map from HTTP error codes or error messages to error type
  static ImportErrorType fromError(String errorMessage) {
    final lowerError = errorMessage.toLowerCase();

    if (lowerError.contains('413') || lowerError.contains('file too large') || lowerError.contains('过大')) {
      return ImportErrorType.fileTooLarge;
    } else if (lowerError.contains('400') || lowerError.contains('format') || lowerError.contains('格式')) {
      return ImportErrorType.unsupportedFormat;
    } else if (lowerError.contains('network') || lowerError.contains('timeout') || lowerError.contains('网络') || lowerError.contains('连接')) {
      return ImportErrorType.networkError;
    } else if (lowerError.contains('parse') || lowerError.contains('解析')) {
      return ImportErrorType.parsingFailed;
    } else if (lowerError.contains('duplicate') || lowerError.contains('重复')) {
      return ImportErrorType.duplicateDetected;
    }

    return ImportErrorType.generic;
  }

  /// Whether this error type is transient and can be retried
  bool get isRetryable {
    switch (this) {
      case ImportErrorType.networkError:
      case ImportErrorType.parsingFailed:
      case ImportErrorType.generic:
        return true;
      case ImportErrorType.fileTooLarge:
      case ImportErrorType.unsupportedFormat:
      case ImportErrorType.duplicateDetected:
        return false;
    }
  }

  /// Icon for the error type
  IconData get icon {
    switch (this) {
      case ImportErrorType.fileTooLarge:
        return Icons.file_present;
      case ImportErrorType.unsupportedFormat:
        return Icons.insert_drive_file;
      case ImportErrorType.networkError:
        return Icons.wifi_off;
      case ImportErrorType.parsingFailed:
        return Icons.error_outline;
      case ImportErrorType.duplicateDetected:
        return Icons.content_copy;
      case ImportErrorType.generic:
        return Icons.warning_amber;
    }
  }
}

/// Widget for displaying user-friendly import error messages
/// Includes error icon, actionable message, retry button, and details expansion
class ImportErrorDisplay extends StatefulWidget {
  const ImportErrorDisplay({
    super.key,
    required this.errorMessage,
    this.technicalDetails,
    this.onRetry,
    this.onDismiss,
  });

  final String errorMessage;
  final String? technicalDetails;
  final VoidCallback? onRetry;
  final VoidCallback? onDismiss;

  @override
  State<ImportErrorDisplay> createState() => _ImportErrorDisplayState();
}

class _ImportErrorDisplayState extends State<ImportErrorDisplay> {
  bool _showDetails = false;
  late ImportErrorType _errorType;

  @override
  void initState() {
    super.initState();
    _errorType = ImportErrorTypeExtension.fromError(widget.errorMessage);
  }

  @override
  void didUpdateWidget(ImportErrorDisplay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.errorMessage != widget.errorMessage) {
      _errorType = ImportErrorTypeExtension.fromError(widget.errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.red.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.red.withValues(alpha: 0.3),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Error header
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red.withValues(alpha: 0.1),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  _errorType.icon,
                  color: Colors.red,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  _getUserFriendlyMessage(l10n),
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Suggested next steps
          Text(
            _getSuggestedAction(l10n),
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),

          // View details expansion
          if (widget.technicalDetails != null) ...[
            const SizedBox(height: 8),
            InkWell(
              onTap: () {
                setState(() {
                  _showDetails = !_showDetails;
                });
              },
              child: Row(
                children: [
                  Icon(
                    _showDetails
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 18,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    l10n.importErrorViewDetails,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            if (_showDetails) ...[
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: SelectableText(
                  widget.technicalDetails!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontFamily: 'monospace',
                    color: theme.colorScheme.outline,
                  ),
                ),
              ),
            ],
          ],

          // Action buttons
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.onDismiss != null)
                TextButton(
                  onPressed: widget.onDismiss,
                  child: Text(l10n.cancel),
                ),
              if (_errorType.isRetryable && widget.onRetry != null) ...[
                const SizedBox(width: 8),
                FilledButton.icon(
                  onPressed: widget.onRetry,
                  icon: const Icon(Icons.refresh, size: 18),
                  label: Text(l10n.importErrorRetryButton),
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                  ),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  /// Get user-friendly error message based on error type
  String _getUserFriendlyMessage(AppLocalizations l10n) {
    switch (_errorType) {
      case ImportErrorType.fileTooLarge:
        return l10n.importErrorFileTooLarge('10MB');
      case ImportErrorType.unsupportedFormat:
        return l10n.importErrorUnsupportedFormat;
      case ImportErrorType.networkError:
        return l10n.importErrorNetwork;
      case ImportErrorType.parsingFailed:
        return l10n.importErrorParsingFailed;
      case ImportErrorType.duplicateDetected:
        return l10n.importErrorDuplicateDetected;
      case ImportErrorType.generic:
        return l10n.importErrorGeneric;
    }
  }

  /// Get suggested action for the user
  String _getSuggestedAction(AppLocalizations l10n) {
    switch (_errorType) {
      case ImportErrorType.fileTooLarge:
        return 'Try splitting the file or compressing it before uploading.';
      case ImportErrorType.unsupportedFormat:
        return 'Export your bill in CSV or Excel format (.xlsx, .xls) and try again.';
      case ImportErrorType.networkError:
        return 'Check your internet connection and tap Retry.';
      case ImportErrorType.parsingFailed:
        return 'Make sure the file contains valid date and amount columns.';
      case ImportErrorType.duplicateDetected:
        return 'These transactions were already imported. No action needed.';
      case ImportErrorType.generic:
        return 'Please try again. If the problem persists, contact support.';
    }
  }
}
