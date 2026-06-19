import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../core/design_tokens/design_tokens.dart';
import '../signals/connectivity_signal.dart';

class OfflineIndicator extends StatelessWidget {
  const OfflineIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Watch((context) {
      final connectivityState = connectivitySignal.value;

      if (connectivityState.isOnline) {
        return const SizedBox.shrink();
      }

      return Material(
        color: Colors.transparent,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            horizontal: TokenSpacing.xl,
            vertical: TokenSpacing.sm,
          ),
          decoration: BoxDecoration(
            color: TokenColors.accentPeach,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(TokenRadius.sm),
            ),
            boxShadow: [
              BoxShadow(
                color: TokenColors.textPrimary.withValues(alpha: 0.1),
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
                const Icon(
                  Icons.cloud_off_rounded,
                  size: 16,
                  color: TokenColors.textAccent,
                ),
                const SizedBox(width: TokenSpacing.sm),
                Flexible(
                  child: Text(
                    l10n.youAreOffline,
                    style: TokenTypography.caption(
                      fontWeight: FontWeight.w500,
                      color: TokenColors.textAccent,
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
}

class OfflineToast {
  static void showActionFailedOffline(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            const Icon(Icons.cloud_off_rounded, color: TokenColors.white, size: 20),
            const SizedBox(width: TokenSpacing.lg),
            Expanded(child: Text(l10n.actionFailedOffline)),
          ],
        ),
        backgroundColor: TokenColors.textAccent,
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
            const Icon(Icons.cloud_done_rounded, color: TokenColors.white, size: 20),
            const SizedBox(width: TokenSpacing.lg),
            Expanded(child: Text(l10n.connectionRestored)),
          ],
        ),
        backgroundColor: TokenColors.success,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }
}
