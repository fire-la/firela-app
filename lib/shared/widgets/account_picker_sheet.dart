import 'package:firela_api/firela_api.dart' as gen;
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../api/api.dart';
import '../../core/components/components.dart';
import '../../core/design_tokens/design_tokens.dart';
import '../../core/utils/logger.dart';
import '../../generated/l10n/app_localizations.dart';
import '../signals/region_signal.dart';

/// Bottom-sheet account picker (.pen AccountPickerSheet). Lists OPEN bean
/// accounts filtered client-side by [allowedTypes] (the API takes a single type,
/// but a category picker needs e.g. expenses + income together) and an optional
/// search query over display name / path. Returns the selected account's full
/// beancount path, or null if dismissed.
class AccountPickerSheet extends HookWidget {
  const AccountPickerSheet({
    super.key,
    required this.allowedTypes,
    this.title,
  });

  final Set<gen.AccountResponseDtoTypeEnum> allowedTypes;
  final String? title;

  static Future<String?> show(
    BuildContext context, {
    required Set<gen.AccountResponseDtoTypeEnum> allowedTypes,
    String? title,
  }) {
    final tokens = ThemeTokens.of(context);
    return showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      backgroundColor: tokens.bgCard,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (_) => AccountPickerSheet(
        allowedTypes: allowedTypes,
        title: title,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    final accounts = useState<List<gen.AccountResponseDto>>(const []);
    final isLoading = useState<bool>(true);
    final failed = useState<bool>(false);
    final query = useState<String>('');

    useEffect(() {
      Future<void> load() async {
        try {
          final resp = await FirelaApi().listAccounts(regionSignal.value);
          accounts.value = resp.items
              .where((a) => allowedTypes.contains(a.type))
              .toList();
        } catch (e) {
          logger.e('[AccountPickerSheet] load failed: $e');
          failed.value = true;
        } finally {
          isLoading.value = false;
        }
      }

      load();
      return null;
    }, const []);

    final q = query.value.toLowerCase();
    final filtered = q.isEmpty
        ? accounts.value
        : accounts.value
            .where((a) =>
                a.displayName.toLowerCase().contains(q) ||
                a.path.toLowerCase().contains(q))
            .toList();

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  TokenSpacing.lg, TokenSpacing.md, TokenSpacing.sm, 0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title ?? l10n.txAccountPickerTitle,
                      style: TokenTypography.h3(color: tokens.textPrimary),
                    ),
                  ),
                  IconButton(
                    icon:
                        Icon(Icons.close, color: tokens.textTertiary, size: 20),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg),
              child: InputField(
                placeholder: l10n.txAccountPickerSearchHint,
                onChanged: (v) => query.value = v,
              ),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Expanded(
              child: _body(context, isLoading.value, failed.value, filtered),
            ),
            const SizedBox(height: TokenSpacing.md),
          ],
        ),
      ),
    );
  }

  Widget _body(
    BuildContext context,
    bool isLoading,
    bool failed,
    List<gen.AccountResponseDto> filtered,
  ) {
    final l10n = AppLocalizations.of(context)!;
    final tokens = ThemeTokens.of(context);
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (failed || filtered.isEmpty) {
      return Center(
        child: Text(
          l10n.txAccountPickerEmpty,
          style: TokenTypography.body(color: tokens.textTertiary),
        ),
      );
    }
    return ListView.builder(
      itemCount: filtered.length,
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.lg),
      itemBuilder: (context, i) {
        final a = filtered[i];
        return ListItemArrow(
          icon: Icons.account_balance_wallet,
          label: a.displayName,
          trailingText: a.path,
          onTap: () => Navigator.pop(context, a.path),
        );
      },
    );
  }
}
