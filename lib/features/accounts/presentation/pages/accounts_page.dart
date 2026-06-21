import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/utils/formatters.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/error_view.dart';
import '../../../../shared/widgets/empty_view.dart';
import '../../domain/entities/account.dart';
import '../hooks/use_accounts.dart';

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
                message: l10n.noAccountsYet,
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
                  iconColor: _accountTypeColor(account.type),
                  name: account.name,
                  amount: Formatters.formatCurrency(account.balance, symbol: ''),
                  currency: account.currency,
                  tagLabel: _accountTypeLabel(account.type, l10n),
                  onTap: () => context.push('/accounts/${account.id}'),
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

Color _accountTypeColor(AccountType type) {
  switch (type) {
    case AccountType.checking:
      return TokenColors.chartBlue;
    case AccountType.savings:
      return TokenColors.chartGreen;
    case AccountType.investment:
      return TokenColors.chartAmber;
    case AccountType.credit:
      return TokenColors.chartGrey;
  }
}

String _accountTypeLabel(AccountType type, AppLocalizations l10n) {
  switch (type) {
    case AccountType.checking:
      return l10n.accountTypeChecking;
    case AccountType.savings:
      return l10n.accountTypeSavings;
    case AccountType.investment:
      return l10n.accountTypeInvestment;
    case AccountType.credit:
      return l10n.accountTypeCredit;
  }
}
