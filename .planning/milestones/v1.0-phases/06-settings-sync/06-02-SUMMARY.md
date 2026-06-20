---
phase: 06-settings-sync
plan: 2 of 2 plans
type: execute
---

<objective>
Add data synchronization with server, backup/restore functionality, and account deletion.

Purpose: Enable users to sync their data across devices and backup/restore their financial data.
Output: Sync functionality, backup/restore, account deletion features.
</objective>

<execution_context>
./.claude/get-shit-done/workflows/execute-phase.md
./summary.md
</execution_context>

<context>
@.planning/PROJECT.md
@.planning/ROADMAP.md
@.planning/STATE.md
@.planning/codebase/ARCHITECTURE.md
@.planning/codebase/CONVENTIONS.md

[Relevant source files:]
@lib/features/settings/presentation/pages/settings_page.dart
@lib/core/network/auth_manager.dart
@lib/core/services/auth_service.dart
@lib/l10n/app_en.arb
@lib/l10n/app_zh_CN.arb
@lib/l10n/app_zh_TW.arb

**Established patterns:**
- Settings items with navigation callbacks
- AlertDialog for confirmations
- Signal pattern for state management (themeSignal, localeSignal, regionSignal)
- ScaffoldMessenger for toast feedback
- Hive for persistent storage
</context>

<tasks>

<task type="auto">
  <name>Task 1: Add sync functionality with last sync time</name>
  <files>lib/features/settings/presentation/widgets/sync_status_widget.dart, lib/core/services/sync_service.dart, lib/core/constants/api_constants.dart, lib/core/constants/storage_keys.dart, lib/l10n/app_en.arb, lib/l10n/app_zh_CN.arb
@lib/l10n/app_zh_TW.arb</files>
  <action>Create sync functionality:
1. Create SyncService singleton with:
   - `syncAll()` - Trigger full sync (transactions, accounts, goals, milestones)
   - `getLastSyncTime()` - Return DateTime of last successful sync
   - `setLastSyncTime(DateTime)` - Store sync timestamp in Hive
   - `clearSyncData()` - Clear sync-related data
2. Create SyncStatusWidget showing:
   - Last sync time (relative format: "2 hours ago")
   - Sync now button with progress indicator
   - Sync status icon (checkmark for synced, spinner for syncing, warning for error)
3. Add SyncStatusWidget to settings page header (below user profile).
4. Add pull-to-sync on main pages (review center, assets, fire journey) that calls SyncService.syncAll().
5. Store lastSyncTime in Hive under StorageKeys.lastSyncTime.
Add i18n keys: lastSynced, syncNow, syncing, syncSuccess, syncFailed, never.</action>
  <verify>flutter analyze passes, sync status displays and updates correctly</verify>
  <done>Sync functionality with status widget and last sync time working</done>
</task>

<task type="auto">
  <name>Task 2: Add data backup and restore</name>
  <files>lib/core/services/backup_service.dart, lib/features/settings/presentation/pages/settings_page.dart, lib/features/settings/presentation/dialogs/backup_dialog.dart, lib/core/constants/storage_keys.dart, lib/l10n/app_en.arb, lib/l10n/app_zh_CN.arb
@lib/l10n/app_zh_TW.arb</files>
  <action>Create backup and restore functionality:
1. Create BackupService singleton with:
   - `createBackup()` - Export all local data to JSON file (Hive boxes, preferences, goals)
   - `restoreBackup(String filePath)` - Import data from JSON backup file
   - `validateBackup(String filePath)` - Check backup file integrity
2. Create BackupDialog showing:
   - Backup button (creates file, saves to downloads/shares via share_plus)
   - Restore button (file picker, validation, confirmation)
   - Warning about data overwrite on restore
3. Update Data Export section in settings to include backup/restore.
4. Add automatic backup reminder (optional, check last backup time on app start).
Add i18n keys: backup, restoreData, backupCreated, backupFailed, restoreSuccess, restoreFailed, backupWarning, lastBackup, noBackupFound.</action>
  <verify>flutter analyze passes, backup creates file and restore imports data correctly</verify>
  <done>Backup and restore functionality working with file operations</done>
</task>

<task type="auto">
  <name>Task 3: Add account deletion</name>
  <files>lib/core/services/ign_api_service.dart, lib/core/constants/api_constants.dart, lib/features/settings/presentation/pages/account_settings_page.dart, lib/features/settings/presentation/dialogs/delete_account_dialog.dart, lib/l10n/app_en.arb, lib/l10n/app_zh_CN.arb
@lib/l10n/app_zh_TW.arb</files>
  <action>Add account deletion functionality:
1. Add `deleteAccount()` to IgnApiService:
   - Call DELETE /api/v1/users/me endpoint (add to api_constants.dart)
   - Return success/failure status
2. Create DeleteAccountDialog with:
   - Warning message about permanent deletion
   - Input field for user to type "DELETE" to confirm
   - Checkbox for "I understand this action cannot be undone"
   - Delete button (destructive red style)
3. On successful deletion:
   - Clear all local data (Hive.clear())
   - Reset AuthManager
   - Navigate to login screen
   - Show toast confirming deletion
Add i18n keys: deleteAccountTitle, deleteAccountWarning, typeDelete, understandWarning, accountDeleted.</action>
  <verify>flutter analyze passes, account deletion flow works end-to-end</verify>
  <done>Account deletion with confirmation and data cleanup working</done>
</task>

</tasks>

<verification>
Before declaring phase complete:
- [ ] `flutter analyze` passes with no errors
- [ ] `flutter build apk --debug` succeeds
- [ ] Sync status widget displays and updates
- [ ] Backup creates valid JSON file
- [ ] Restore imports data correctly
- [ ] Account deletion clears all data
</verification>

<success_criteria>

- All tasks completed
- All verification checks pass
- No errors or warnings introduced
- Sync functionality working
- Backup/restore functional
- Account deletion complete
</success_criteria>

<output>
After completion, create `.planning/phases/06-settings-sync/06-02-SUMMARY.md`:

# Phase 06 Plan 02: Account Management and Sync Summary

**[Substantive one-liner - what shipped, not "phase complete"]**

## Accomplishments

- [Key outcome 1]
- [Key outcome 2]

## Files Created/Modified

- `path/to/file.dart` - Description

## Decisions Made

[Key decisions and rationale, or "None"]

## Issues Encountered
[Problems and resolutions, or "None"]

## Next Step
Phase 6 complete, ready for Phase 7: Home Dashboard
</output>
