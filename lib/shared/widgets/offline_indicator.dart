import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../signals/connectivity_signal.dart';

/// Offline indicator widget
/// Shows a banner at the top of the screen when offline
/// Auto-hides when online
class OfflineIndicator extends StatelessWidget {
  const OfflineIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Watch((context) {
      final connectivityState = connectivitySignal.value;

      // Don't show anything when online
      if (connectivityState.isOnline) {
        return const SizedBox.shrink();
      }

      return Material(
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: _getBackgroundColor(context),
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: SafeArea(
            bottom: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_off_rounded,
                  size: 16,
                  color: _getTextColor(context),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Text(
                    l10n.youAreOffline,
                    style: TextStyle(
                      color: _getTextColor(context),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Color _getBackgroundColor(BuildContext context) {
    // Use amber/orange warning color
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.orange.shade900.withValues(alpha: 0.9)
        : Colors.orange.shade100;
  }

  Color _getTextColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? Colors.orange.shade100
        : Colors.orange.shade900;
  }
}

/// Offline aware toast helper
/// Shows a toast when an action fails due to being offline
class OfflineToast {
  static void showActionFailedOffline(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.cloud_off_rounded, color: Colors.white, size: 20),
            const SizedBox(width: 12),
            Expanded(child: Text(l10n.actionFailedOffline)),
          ],
        ),
        backgroundColor: Colors.orange.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  static void showConnectionRestored(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.cloud_done_rounded, color: Colors.white, size: 20),
            const SizedBox(width: 12),
            Expanded(child: Text(l10n.connectionRestored)),
          ],
        ),
        backgroundColor: Colors.green.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
