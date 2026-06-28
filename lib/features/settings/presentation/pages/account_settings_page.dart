import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/constants/storage_keys.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import '../dialogs/delete_account_dialog.dart';

/// Account settings page with user info, name editing, and account management
class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  State<AccountSettingsPage> createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  String? _customDisplayName;
  DateTime? _accountCreated;
  Box? _settingsBox;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    _settingsBox = await Hive.openBox('settings');
    setState(() {
      _customDisplayName = _settingsBox?.get(StorageKeys.displayName);
      final createdTs = _settingsBox?.get(StorageKeys.accountCreated);
      if (createdTs != null) {
        _accountCreated = DateTime.fromMillisecondsSinceEpoch(createdTs as int);
      } else {
        // If not set, use current login time as fallback
        _accountCreated = DateTime.now();
      }
    });
  }

  Future<void> _saveDisplayName(String name) async {
    await _settingsBox?.put(StorageKeys.displayName, name);
    setState(() {
      _customDisplayName = name;
    });
  }

  void _copyUserId() {
    final userId = AuthManager.instance.userId;
    if (userId != null) {
      Clipboard.setData(ClipboardData(text: userId));
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.copiedToClipboard)),
      );
    }
  }

  void _showEditNameDialog(AppLocalizations l10n) {
    final controller = TextEditingController(text: _customDisplayName ?? '');

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.editName),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: l10n.enterDisplayName,
            border: const OutlineInputBorder(),
          ),
          maxLength: 20,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              _saveDisplayName(controller.text.trim());
              Navigator.pop(ctx);
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
  }

  void _showDeleteAccountDialog(AppLocalizations l10n) {
    showDeleteAccountDialog(context);
  }

  Future<void> _handleReLogin(AppLocalizations l10n) async {
    final loggedIn = await AuthService.instance.showLoginOptions(context);
    if (loggedIn && mounted) {
      setState(() {});
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.confirm)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final auth = AuthManager.instance;
    final isLoggedIn = auth.isLoggedIn;
    final userId = auth.userId;
    final displayName = _customDisplayName?.isNotEmpty == true
        ? _customDisplayName
        : auth.displayName;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.accountSettings),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),

            // User info section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // User ID
                  Tappable(
                    onTap: _copyUserId,
                    semanticLabel: l10n.userId,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.badge_outlined, color: theme.colorScheme.outline),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.userId,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.outline,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  userId ?? 'Not logged in',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontFamily: 'monospace',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.copy,
                            size: 20,
                            color: theme.colorScheme.outline,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

                  // Display Name
                  Tappable(
                    onTap: isLoggedIn ? () => _showEditNameDialog(l10n) : null,
                    semanticLabel: l10n.displayName,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.person_outline, color: theme.colorScheme.outline),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  l10n.displayName,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.outline,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  displayName ?? 'Not set',
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          if (isLoggedIn)
                            Icon(
                              Icons.edit,
                              size: 20,
                              color: theme.colorScheme.outline,
                            ),
                        ],
                      ),
                    ),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

                  // Account Created
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(Icons.calendar_today_outlined, color: theme.colorScheme.outline),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.accountCreated,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.outline,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                _accountCreated != null
                                    ? '${_accountCreated!.year}-${_accountCreated!.month.toString().padLeft(2, '0')}-${_accountCreated!.day.toString().padLeft(2, '0')}'
                                    : 'Unknown',
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Security section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                l10n.securityToken,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.outline,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  // Token Status
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(
                          auth.hasUserAccessToken
                              ? Icons.key
                              : Icons.key_off_outlined,
                          color: auth.hasUserAccessToken
                              ? TokenColors.success
                              : theme.colorScheme.error,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                l10n.securityToken,
                                style: theme.textTheme.bodyMedium,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                auth.hasUserAccessToken
                                    ? l10n.savedToken
                                    : 'No token saved',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: auth.hasUserAccessToken
                                      ? TokenColors.success
                                      : theme.colorScheme.error,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

                  // Re-login button
                  Tappable(
                    onTap: () => _handleReLogin(l10n),
                    semanticLabel: l10n.reLogin,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Icon(Icons.login, color: theme.colorScheme.outline),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              l10n.reLogin,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            size: 20,
                            color: theme.colorScheme.outline,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Danger zone
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Danger Zone',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.error,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Tappable(
                onTap: () => _showDeleteAccountDialog(l10n),
                semanticLabel: l10n.deleteAccount,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_forever,
                        color: theme.colorScheme.error,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          l10n.deleteAccount,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.error,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 20,
                        color: theme.colorScheme.error,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
