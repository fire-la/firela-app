import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/services/sync_service.dart';
import '../../../../core/network/auth_manager.dart';

/// Sync status widget showing last sync time and sync button
class SyncStatusWidget extends StatefulWidget {
  const SyncStatusWidget({super.key});

  @override
  State<SyncStatusWidget> createState() => _SyncStatusWidgetState();
}

class _SyncStatusWidgetState extends State<SyncStatusWidget> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final syncService = SyncService.instance;

    return Watch((context) {
      final syncStatus = syncService.syncStatus.value;
      final isLoggedIn = AuthManager.instance.isLoggedIn;
      final lastSyncRelative = syncService.getLastSyncRelativeString();

      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            // Status icon
            _buildStatusIcon(theme, syncStatus),
            const SizedBox(width: 8),
            // Last sync time
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.lastSynced,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  Text(
                    lastSyncRelative == 'never' ? l10n.never : lastSyncRelative,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            // Sync button
            if (isLoggedIn) ...[
              const SizedBox(width: 8),
              _buildSyncButton(context, l10n, theme, syncStatus, syncService),
            ],
          ],
        ),
      );
    });
  }

  Widget _buildStatusIcon(ThemeData theme, SyncStatus status) {
    switch (status) {
      case SyncStatus.syncing:
        return SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: theme.colorScheme.primary,
          ),
        );
      case SyncStatus.success:
        return const Icon(
          Icons.check_circle,
          size: 20,
          color: Color(0xFF4CAF50),
        );
      case SyncStatus.error:
        return Icon(
          Icons.error_outline,
          size: 20,
          color: theme.colorScheme.error,
        );
      case SyncStatus.idle:
        return Icon(
          Icons.sync,
          size: 20,
          color: theme.colorScheme.outline,
        );
    }
  }

  Widget _buildSyncButton(
    BuildContext context,
    AppLocalizations l10n,
    ThemeData theme,
    SyncStatus status,
    SyncService syncService,
  ) {
    final isSyncing = status == SyncStatus.syncing;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: isSyncing
            ? null
            : () async {
                HapticFeedback.lightImpact();
                await syncService.syncAll();
              },
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: isSyncing
                ? theme.colorScheme.surfaceContainerHighest
                : theme.colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isSyncing)
                const SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                )
              else
                Icon(
                  Icons.sync,
                  size: 14,
                  color: theme.colorScheme.primary,
                ),
              const SizedBox(width: 4),
              Text(
                isSyncing ? l10n.syncing : l10n.syncNow,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
