import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

/// About page with app version, build info, licenses, and links
class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  PackageInfo? _packageInfo;

  @override
  void initState() {
    super.initState();
    _loadPackageInfo();
  }

  Future<void> _loadPackageInfo() async {
    final info = await PackageInfo.fromPlatform();
    if (mounted) {
      setState(() {
        _packageInfo = info;
      });
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aboutApp),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),

            // App icon and name
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.local_fire_department_outlined,
                size: 64,
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'FIREla',
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            if (_packageInfo != null)
              Text(
                '${l10n.version} ${_packageInfo!.version} (${l10n.buildNumber} ${_packageInfo!.buildNumber})',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.outline,
                ),
              ),

            const SizedBox(height: 32),

            // App description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                l10n.appDescription,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),

            const SizedBox(height: 32),

            // Links section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _buildLinkItem(
                    context,
                    Icons.privacy_tip_outlined,
                    l10n.privacyPolicy,
                    () => _showPrivacyDialog(context, l10n),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildLinkItem(
                    context,
                    Icons.description_outlined,
                    l10n.termsOfService,
                    () => _launchUrl('https://firela.io/terms'),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildLinkItem(
                    context,
                    Icons.code_outlined,
                    l10n.licenses,
                    () => showLicensePage(
                      context: context,
                      applicationName: 'FIREla',
                      applicationIcon: const Icon(Icons.local_fire_department_outlined),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Feedback section
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  _buildLinkItem(
                    context,
                    Icons.feedback_outlined,
                    l10n.sendFeedback,
                    () => _launchUrl('mailto:feedback@firela.io?subject=FIREla Feedback'),
                  ),
                  Divider(height: 1, color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                  _buildLinkItem(
                    context,
                    Icons.help_outline,
                    l10n.helpCenter,
                    () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildLinkItem(
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
}
