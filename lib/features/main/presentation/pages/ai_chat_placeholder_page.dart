import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';

/// Placeholder for the future AI chat tab (replaces the old Settings tab).
/// Real AI chat implementation is a separate follow-up task.
class AiChatPlaceholderPage extends StatelessWidget {
  const AiChatPlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    return Scaffold(
      backgroundColor: tokens.bgPage,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            child: PageHeader(),
          ),
          Expanded(
            child: Center(
              child: Text(
                l10n.aiChatComingSoon,
                style: TokenTypography.body(color: tokens.textTertiary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
