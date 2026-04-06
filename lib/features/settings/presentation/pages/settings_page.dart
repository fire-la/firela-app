import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../shared/signals/theme_signal.dart';
import '../../../../shared/signals/locale_signal.dart';
import '../../../../shared/signals/region_signal.dart';
import '../../../../shared/signals/preferences_signal.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/auth_service.dart';
import 'about_page.dart';
import 'help_center_page.dart';
import 'account_settings_page.dart';
import '../widgets/sync_status_widget.dart';
import '../dialogs/backup_dialog.dart';

/// Settings page (Mine)
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => SettingsPageState();
}

class SettingsPageState extends State<SettingsPage> {
  void refresh() => setState(() {});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        title: const Text(
          'IGN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            
            // User profile
            _buildUserProfile(context, l10n),

            const SizedBox(height: 16),

            // Sync status widget (only show when logged in)
            if (AuthManager.instance.isLoggedIn)
              const SyncStatusWidget(),

            if (AuthManager.instance.isLoggedIn)
              const SizedBox(height: 16),
            
            // Membership card
            _buildMembershipCard(context, l10n),
            
            const SizedBox(height: 24),
            
            // Settings items
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _buildSettingItem(
                    context,
                    Icons.file_download_outlined,
                    l10n.dataExport,
                    () => _showDataExportSheet(context, l10n),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildSettingItem(
                    context,
                    Icons.privacy_tip_outlined,
                    l10n.privacyStatement,
                    () => _showPrivacyDialog(context, l10n),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildSettingItem(
                    context,
                    Icons.info_outline,
                    l10n.aboutUs,
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const AboutPage()),
                    ),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildSettingItem(
                    context,
                    Icons.help_outline,
                    l10n.helpCenter,
                    () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const HelpCenterPage()),
                    ),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildSettingItem(
                    context,
                    Icons.feedback_outlined,
                    l10n.suggestions,
                    () => _openFeedbackEmail(context),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Preferences section
            _buildPreferencesSection(context, l10n),

            const SizedBox(height: 24),

            // Theme and language settings
            _buildQuickSettings(context, l10n),
            
            const SizedBox(height: 24),
            
            // Login / Logout button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: AuthManager.instance.isLoggedIn
                    ? OutlinedButton(
                        onPressed: () => _handleLogout(context, l10n),
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          side: BorderSide(
                            color: theme.colorScheme.outline.withValues(alpha: 0.2),
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          l10n.logout,
                          style: theme.textTheme.bodyMedium,
                        ),
                      )
                    : FilledButton.icon(
                        onPressed: () => _handleLogin(context),
                        icon: const Icon(Icons.login, size: 18),
                        style: FilledButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        label: Text(l10n.loginNow),
                      ),
              ),
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfile(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);
    final auth = AuthManager.instance;
    final isLoggedIn = auth.isLoggedIn;
    final displayName = isLoggedIn ? auth.displayName : '未登录';
    final userId = auth.userId;

    final profileRow = Row(
      children: [
        CircleAvatar(
          radius: 36,
          backgroundColor: isLoggedIn
              ? const Color(0xFF1A1A1A)
              : const Color(0xFFE0E0E0),
          child: Icon(
            isLoggedIn ? Icons.person : Icons.person_outline,
            size: 40,
            color: isLoggedIn ? Colors.white : const Color(0xFF757575),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                displayName,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              if (isLoggedIn && userId != null)
                Text(
                  'ID: ${userId.length > 12 ? '${userId.substring(0, 8)}...' : userId}',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                    fontFamily: 'monospace',
                  ),
                )
              else
                Text(
                  '点击登录以使用全部功能',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
            ],
          ),
        ),
        if (isLoggedIn)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xFF4CAF50).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle, size: 14, color: Color(0xFF4CAF50)),
                SizedBox(width: 4),
                Text(
                  '已登录',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF4CAF50),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          )
        else
          Icon(
            Icons.chevron_right,
            color: theme.colorScheme.outline,
          ),
      ],
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: isLoggedIn
          ? InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AccountSettingsPage()),
              ),
              borderRadius: BorderRadius.circular(8),
              child: profileRow,
            )
          : InkWell(
              onTap: () => _handleLogin(context),
              borderRadius: BorderRadius.circular(8),
              child: profileRow,
            ),
    );
  }

  Widget _buildMembershipCard(BuildContext context, AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFF4A4A4A),
            Color(0xFF2A2A2A),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 255, 255, 0.15),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.diamond_outlined,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.becomeMember,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.memberBenefit,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFFFFF),
                foregroundColor: const Color(0xFF000000),
                elevation: 0,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                l10n.activateNow,
                style: const TextStyle(fontSize: 13),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildQuickSettings(BuildContext context, AppLocalizations l10n) {
    return Watch((context) {
      final themeMode = themeModeSignal.value;
      final currentRegion = regionSignal.value;
      final theme = Theme.of(context);

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // First row: Theme and Language
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: toggleTheme,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Icon(
                              themeMode == ThemeMode.light
                                  ? Icons.dark_mode_outlined
                                  : Icons.light_mode_outlined,
                              size: 28,
                              color: theme.colorScheme.onSurface,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              l10n.toggleTheme,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: InkWell(
                      onTap: () => _showLanguageDialog(context, l10n),
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Icon(
                              Icons.language,
                              size: 28,
                              color: theme.colorScheme.onSurface,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              l10n.changeLanguage,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            // Second row: Region selector (full width)
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: InkWell(
                onTap: () => _showRegionDialog(context, l10n),
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  child: Row(
                    children: [
                      Text(
                        regionInfoMap[currentRegion]?.flag ?? '🌐',
                        style: const TextStyle(fontSize: 24),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.region,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '${regionInfoMap[currentRegion]?.name ?? currentRegion} · ${regionInfoMap[currentRegion]?.currency ?? ''}',
                              style: theme.textTheme.bodySmall?.copyWith(
                                color: theme.colorScheme.outline,
                              ),
                            ),
                          ],
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
            ),
          ],
        ),
      );
    });
  }

  Widget _buildSettingItem(
    BuildContext context,
    IconData icon,
    String title,
    VoidCallback onTap,
  ) {
    final theme = Theme.of(context);
    
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, size: 22, color: theme.colorScheme.outline),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
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
    );
  }

  Future<void> _handleLogin(BuildContext context) async {
    final loggedIn = await AuthService.instance.showLoginOptions(context);
    if (loggedIn && mounted) {
      setState(() {});
    }
  }

  void _handleLogout(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.logout),
        content: const Text('确定要退出登录吗？退出后需要重新使用安全令牌登录。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('取消'),
          ),
          FilledButton(
            onPressed: () {
              AuthManager.instance.clearAllData();
              Navigator.pop(ctx);
              // 刷新页面以更新个人信息显示
              setState(() {});
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('已退出登录')),
              );
            },
            child: Text(l10n.logout),
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.changeLanguage),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('English'),
              onTap: () {
                setLocale(const Locale('en'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('简体中文'),
              onTap: () {
                setLocale(const Locale('zh', 'CN'));
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('繁體中文'),
              onTap: () {
                setLocale(const Locale('zh', 'TW'));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showRegionDialog(BuildContext context, AppLocalizations l10n) {
    final currentRegion = regionSignal.value;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.selectRegion),
        content: SizedBox(
          width: 300,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: regionInfoMap.length,
            itemBuilder: (context, index) {
              final entry = regionInfoMap.entries.elementAt(index);
              final regionCode = entry.key;
              final info = entry.value;
              final isSelected = regionCode == currentRegion;

              return ListTile(
                leading: Text(
                  info.flag,
                  style: const TextStyle(fontSize: 24),
                ),
                title: Text(info.name),
                subtitle: Text('${info.currency} · ${info.locale}'),
                trailing: isSelected
                    ? Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.primary,
                      )
                    : null,
                selected: isSelected,
                onTap: () async {
                  if (!isSelected) {
                    // Show confirmation dialog
                    Navigator.pop(context);
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: Text(l10n.switchRegion),
                        content: Text(l10n.switchRegionConfirm),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(ctx, false),
                            child: Text(l10n.cancel),
                          ),
                          FilledButton(
                            onPressed: () => Navigator.pop(ctx, true),
                            child: Text(l10n.confirm),
                          ),
                        ],
                      ),
                    );

                    if (confirmed == true) {
                      await setRegion(regionCode);
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.regionSwitched(info.name))),
                        );
                      }
                    }
                  } else {
                    Navigator.pop(context);
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }

  /// Show data export bottom sheet
  void _showDataExportSheet(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    showModalBottomSheet(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                l10n.exportData,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Backup/Restore option
            ListTile(
              leading: const Icon(Icons.backup_outlined),
              title: Text(l10n.backupData),
              subtitle: Text(l10n.backupWarning.split('.').first),
              onTap: () {
                Navigator.pop(ctx);
                showBackupDialog(context);
              },
            ),
            Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
            ListTile(
              leading: const Icon(Icons.data_object),
              title: Text(l10n.exportAsJson),
              subtitle: const Text('.json'),
              onTap: () {
                Navigator.pop(ctx);
                _performExport(context, l10n, 'json');
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_chart),
              title: Text(l10n.exportAsCsv),
              subtitle: const Text('.csv'),
              onTap: () {
                Navigator.pop(ctx);
                _performExport(context, l10n, 'csv');
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  /// Perform data export
  Future<void> _performExport(
    BuildContext context,
    AppLocalizations l10n,
    String format,
  ) async {
    // Show loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 16),
                Text(l10n.exporting),
              ],
            ),
          ),
        ),
      ),
    );

    try {
      // Simulate export (in production, this would fetch actual data)
      await Future.delayed(const Duration(seconds: 1));

      // Create sample export data
      final exportData = _generateExportData(format);

      if (!context.mounted) return;
      Navigator.pop(context); // Close loading

      // Share the data
      await Share.share(
        exportData,
        subject: 'FIREla Data Export ($format)',
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.exportSuccess)),
        );
      }
    } catch (e) {
      if (!context.mounted) return;
      Navigator.pop(context); // Close loading
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.exportFailed)),
      );
    }
  }

  /// Generate export data
  String _generateExportData(String format) {
    // In production, this would fetch real data from storage/API
    final now = DateTime.now().toIso8601String();

    if (format == 'json') {
      return '''{
  "exportedAt": "$now",
  "app": "FIREla",
  "version": "1.0.0",
  "data": {
    "accounts": [],
    "transactions": [],
    "notes": "This is a sample export. Connect to your account to export actual data."
  }
}''';
    } else {
      return '''FIREla Data Export
Exported: $now
Format: CSV

Type,Date,Amount,Currency,Category,Notes
Sample,2026-03-05,0.00,CNY,Export,"This is a sample export. Connect to your account to export actual data."
''';
    }
  }

  /// Show privacy policy dialog
  void _showPrivacyDialog(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.privacyPolicy),
        content: SingleChildScrollView(
          child: Text(l10n.privacyContent),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  /// Open feedback email
  Future<void> _openFeedbackEmail(BuildContext context) async {
    final uri = Uri.parse('mailto:feedback@firela.io?subject=FIREla Feedback');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Could not open email client')),
        );
      }
    }
  }

  /// Build preferences section with toggles
  Widget _buildPreferencesSection(BuildContext context, AppLocalizations l10n) {
    final theme = Theme.of(context);

    return Watch((context) {
      final preferences = preferencesSignal.value;

      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              l10n.preferences,
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
                // Auto sync toggle
                SwitchListTile(
                  secondary: Icon(
                    Icons.sync,
                    color: theme.colorScheme.outline,
                  ),
                  title: Text(l10n.autoSync),
                  subtitle: Text(
                    l10n.autoSyncDesc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  value: preferences.autoSync,
                  onChanged: (value) => setAutoSync(value),
                ),
                Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

                // Notifications toggle
                SwitchListTile(
                  secondary: Icon(
                    Icons.notifications_outlined,
                    color: theme.colorScheme.outline,
                  ),
                  title: Text(l10n.notifications),
                  subtitle: Text(
                    l10n.notificationsDesc,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  value: preferences.showNotifications,
                  onChanged: (value) => setShowNotifications(value),
                ),
                Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),

                // Decimal precision selector
                InkWell(
                  onTap: () => _showDecimalPrecisionDialog(context, l10n, preferences.decimalPrecision),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calculate_outlined,
                          color: theme.colorScheme.outline,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(l10n.decimalPrecision),
                              const SizedBox(height: 2),
                              Text(
                                '${preferences.decimalPrecision} decimal places',
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.outline,
                                ),
                              ),
                            ],
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
        ],
      );
    });
  }

  /// Show decimal precision selection dialog
  void _showDecimalPrecisionDialog(BuildContext context, AppLocalizations l10n, int currentValue) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.decimalPrecision),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            return RadioListTile<int>(
              title: Text('$index decimal places'),
              value: index,
              groupValue: currentValue,
              onChanged: (value) {
                if (value != null) {
                  setDecimalPrecision(value);
                  Navigator.pop(ctx);
                }
              },
            );
          }),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }
}
