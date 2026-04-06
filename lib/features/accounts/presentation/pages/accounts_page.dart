import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/error_view.dart';
import '../../../../shared/widgets/empty_view.dart';
import '../hooks/use_accounts.dart';
import '../widgets/account_card.dart';

/// Accounts list page
class AccountsPage extends HookWidget {
  const AccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final accountsSnapshot = useAccounts();
    final refreshKey = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.accountsTitle),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          refreshKey.value++;
        },
        child: Builder(
          builder: (context) {
            // Loading state
            if (accountsSnapshot.connectionState == ConnectionState.waiting) {
              return LoadingIndicator(message: l10n.loading);
            }

            // Error state
            if (accountsSnapshot.hasError) {
              return ErrorView(
                message: accountsSnapshot.error.toString(),
                onRetry: () {
                  refreshKey.value++;
                },
              );
            }

            final accounts = accountsSnapshot.data ?? [];

            // Empty state
            if (accounts.isEmpty) {
              return EmptyView(
                message: 'No accounts yet',
                icon: Icons.account_balance_wallet_outlined,
                actionLabel: l10n.createAccount,
                onAction: () {
                  // TODO: Navigate to create account page
                },
              );
            }

            // Success state with data
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: accounts.length,
              itemBuilder: (context, index) {
                final account = accounts[index];
                return AccountCard(
                  account: account,
                  onTap: () {
                    // TODO: Navigate to account detail
                  },
                );
              },
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to create account page
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
