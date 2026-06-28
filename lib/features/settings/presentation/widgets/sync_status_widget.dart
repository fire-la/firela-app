import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/services/sync_service.dart';
import '../../../../core/network/auth_manager.dart';

class SyncStatusWidget extends StatefulWidget {
  const SyncStatusWidget({super.key});

  @override
  State<SyncStatusWidget> createState() => _SyncStatusWidgetState();
}

class _SyncStatusWidgetState extends State<SyncStatusWidget> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final syncService = SyncService.instance;

    return Watch((context) {
      final syncStatus = syncService.syncStatus.value;
      final isLoggedIn = AuthManager.instance.isLoggedIn;
      final lastSyncRelative = syncService.getLastSyncRelativeString();

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
        padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg, vertical: TokenSpacing.sm),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderSm,
          border: Border.all(color: TokenColors.borderCard, width: 0.5),
        ),
        child: Row(
          children: [
            _buildStatusIcon(syncStatus),
            const SizedBox(width: TokenSpacing.sm),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.lastSynced,
                    style: TokenTypography.caption(color: TokenColors.textTertiary),
                  ),
                  Text(
                    lastSyncRelative == 'never' ? l10n.never : lastSyncRelative,
                    style: TokenTypography.body(color: TokenColors.textPrimary),
                  ),
                ],
              ),
            ),
            if (isLoggedIn) ...[
              const SizedBox(width: TokenSpacing.sm),
              _buildSyncButton(context, l10n, syncStatus, syncService),
            ],
          ],
        ),
      );
    });
  }

  Widget _buildStatusIcon(SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return const SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: TokenColors.textAccent,
          ),
        );
      case SyncStatus.success:
        return const Icon(Icons.check_circle, size: 20, color: TokenColors.success);
      case SyncStatus.error:
        return const Icon(Icons.error_outline, size: 20, color: TokenColors.error);
      case SyncStatus.idle:
        return const Icon(Icons.sync, size: 20, color: TokenColors.textTertiary);
    }
  }

  Widget _buildSyncButton(
    BuildContext context,
    AppLocalizations l10n,
    SyncStatus status,
    SyncService syncService,
  ) {
    final isSyncing = status == SyncStatus.syncing;

    return Material(
      color: Colors.transparent,
      child: Tappable(
        onTap: isSyncing
            ? null
            : () async {
                HapticFeedback.lightImpact();
                await syncService.syncAll();
              },
        semanticLabel: isSyncing ? l10n.syncing : l10n.syncNow,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg, vertical: TokenSpacing.sm),
          decoration: BoxDecoration(
            color: isSyncing ? TokenColors.neutral100 : TokenColors.textAccent.withValues(alpha: 0.1),
            borderRadius: TokenRadius.borderSm,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isSyncing)
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              else
                const Icon(Icons.sync, size: 14, color: TokenColors.textAccent),
              const SizedBox(width: TokenSpacing.xs),
              Text(
                isSyncing ? l10n.syncing : l10n.syncNow,
                style: TokenTypography.caption(
                  fontWeight: FontWeight.w500,
                  color: TokenColors.textAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
