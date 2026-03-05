import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';

/// Show delete account confirmation dialog
void showDeleteAccountDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (ctx) => const DeleteAccountDialog(),
  );
}

/// Delete account dialog with confirmation
class DeleteAccountDialog extends StatefulWidget {
  const DeleteAccountDialog({super.key});

  @override
  State<DeleteAccountDialog> createState() => _DeleteAccountDialogState();
}

class _DeleteAccountDialogState extends State<DeleteAccountDialog> {
  final _confirmController = TextEditingController();
  bool _understandChecked = false;
  bool _isDeleting = false;
  String? _errorMessage;

  @override
  void dispose() {
    _confirmController.dispose();
    super.dispose();
  }

  bool get _canDelete =>
      _confirmController.text.toUpperCase() == 'DELETE' &&
      _understandChecked &&
      !_isDeleting;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return AlertDialog(
      title: Row(
        children: [
          Icon(
            Icons.warning_amber_rounded,
            color: theme.colorScheme.error,
          ),
          const SizedBox(width: 8),
          Text(l10n.deleteAccountTitle),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Warning message
            Text(
              l10n.deleteAccountConfirm,
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),

            // Strong warning
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.error.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.dangerous_outlined,
                    color: theme.colorScheme.error,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      l10n.deleteAccountWarning,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Type DELETE confirmation
            Text(
              l10n.typeDelete,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _confirmController,
              enabled: !_isDeleting,
              onChanged: (_) => setState(() {}),
              decoration: InputDecoration(
                hintText: 'DELETE',
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: theme.colorScheme.error, width: 2),
                ),
              ),
              textCapitalization: TextCapitalization.characters,
            ),
            const SizedBox(height: 16),

            // Understanding checkbox
            InkWell(
              onTap: _isDeleting
                  ? null
                  : () {
                      HapticFeedback.lightImpact();
                      setState(() {
                        _understandChecked = !_understandChecked;
                      });
                    },
              child: Row(
                children: [
                  Checkbox(
                    value: _understandChecked,
                    onChanged: _isDeleting
                        ? null
                        : (value) {
                            setState(() {
                              _understandChecked = value ?? false;
                            });
                          },
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return theme.colorScheme.error;
                      }
                      return null;
                    }),
                  ),
                  Expanded(
                    child: Text(
                      l10n.understandWarning,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ],
              ),
            ),

            // Error message
            if (_errorMessage != null) ...[
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  _errorMessage!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _isDeleting ? null : () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),

        // Delete button
        FilledButton(
          onPressed: _canDelete ? () => _handleDelete(l10n) : null,
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            disabledBackgroundColor: theme.colorScheme.error.withValues(alpha: 0.3),
          ),
          child: _isDeleting
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: Colors.white,
                  ),
                )
              : Text(l10n.deleteAccount),
        ),
      ],
    );
  }

  Future<void> _handleDelete(AppLocalizations l10n) async {
    setState(() {
      _isDeleting = true;
      _errorMessage = null;
    });

    HapticFeedback.heavyImpact();

    try {
      // Call delete account API
      final success = await IgnApiService.instance.deleteAccount();

      if (!mounted) return;

      if (success) {
        // Clear all local data
        await Hive.deleteFromDisk();

        // Clear auth data
        AuthManager.instance.clearAllData();

        // Store l10n message before context becomes invalid
        final successMessage = l10n.accountDeleted;

        // Pop the dialog
        Navigator.pop(context);

        // Show success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(successMessage)),
        );

        // Navigate to login - pop all routes and let auth state handle navigation
        // The app should detect logged out state and show login
        logger.i('[DeleteAccount] Account deleted successfully');
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isDeleting = false;
          _errorMessage = e.toString().replaceAll('Exception: ', '');
        });
      }
      logger.e('[DeleteAccount] Failed: $e');
    }
  }
}
