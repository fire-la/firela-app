import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/services/backup_service.dart';

/// Show backup/restore dialog
void showBackupDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (ctx) => const BackupDialog(),
  );
}

/// Backup dialog widget with backup and restore options
class BackupDialog extends StatefulWidget {
  const BackupDialog({super.key});

  @override
  State<BackupDialog> createState() => _BackupDialogState();
}

class _BackupDialogState extends State<BackupDialog> {
  bool _isLoading = false;
  String? _statusMessage;
  bool _isSuccess = false;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final backupService = BackupService.instance;
    final lastBackup = backupService.getLastBackupRelativeString();

    return AlertDialog(
      title: Text(l10n.backupData),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Last backup info
            Row(
              children: [
                Icon(
                  Icons.schedule,
                  size: 16,
                  color: theme.colorScheme.outline,
                ),
                const SizedBox(width: 8),
                Text(
                  '${l10n.lastBackup}: ${lastBackup == 'never' ? l10n.never : lastBackup}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Status message
            if (_statusMessage != null) ...[
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: _isSuccess
                      ? const Color(0xFF4CAF50).withValues(alpha: 0.1)
                      : theme.colorScheme.error.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      _isSuccess ? Icons.check_circle : Icons.error_outline,
                      size: 20,
                      color: _isSuccess
                          ? const Color(0xFF4CAF50)
                          : theme.colorScheme.error,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        _statusMessage!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: _isSuccess
                              ? const Color(0xFF4CAF50)
                              : theme.colorScheme.error,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
            ],

            // Warning message
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.tertiaryContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.outline.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.warning_amber_outlined,
                    size: 20,
                    color: theme.colorScheme.tertiary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      l10n.backupWarning,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isLoading ? null : () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),

        // Restore button
        TextButton.icon(
          onPressed: _isLoading ? null : () => _handleRestore(l10n),
          icon: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.restore, size: 18),
          label: Text(l10n.restore),
        ),

        // Backup button
        FilledButton.icon(
          onPressed: _isLoading ? null : () => _handleBackup(l10n),
          icon: _isLoading
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.backup_outlined, size: 18),
          label: Text(l10n.backup),
        ),
      ],
    );
  }

  Future<void> _handleBackup(AppLocalizations l10n) async {
    setState(() {
      _isLoading = true;
      _statusMessage = null;
    });

    HapticFeedback.lightImpact();

    try {
      final success = await BackupService.instance.shareBackup();

      if (mounted) {
        setState(() {
          _isLoading = false;
          _isSuccess = success;
          _statusMessage = success ? l10n.backupCreated : l10n.backupFailed;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _isSuccess = false;
          _statusMessage = l10n.backupFailed;
        });
      }
    }
  }

  Future<void> _handleRestore(AppLocalizations l10n) async {
    // First, pick the file
    final filePath = await BackupService.instance.pickBackupFile();
    if (filePath == null) {
      return; // User cancelled
    }

    // Validate the backup
    final isValid = await BackupService.instance.validateBackup(filePath);
    if (!isValid) {
      if (mounted) {
        setState(() {
          _statusMessage = l10n.noBackupFound;
          _isSuccess = false;
        });
      }
      return;
    }

    // Show confirmation dialog
    if (!mounted) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.restoreData),
        content: Text(l10n.backupWarning),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(ctx).colorScheme.error,
            ),
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() {
      _isLoading = true;
      _statusMessage = null;
    });

    HapticFeedback.lightImpact();

    try {
      final success = await BackupService.instance.restoreBackup(filePath);

      if (mounted) {
        setState(() {
          _isLoading = false;
          _isSuccess = success;
          _statusMessage = success ? l10n.restoreSuccess : l10n.restoreFailed;
        });

        // If successful, show a snackbar
        if (success && mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.restoreSuccess)),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _isSuccess = false;
          _statusMessage = l10n.restoreFailed;
        });
      }
    }
  }
}
