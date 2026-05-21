import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/components/surfaces/design_card.dart';
import '../../../../core/utils/formatters.dart';
import '../../domain/entities/account.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({
    super.key,
    required this.account,
    this.onTap,
  });

  final Account account;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: TokenSpacing.lg),
      child: DesignCard(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: _getAccountTypeColor(account.type),
                borderRadius: TokenRadius.borderMd,
              ),
              child: Icon(
                _getAccountTypeIcon(account.type),
                color: TokenColors.white,
              ),
            ),
            SizedBox(width: TokenSpacing.xl),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.name,
                    style: TokenTypography.h4(color: TokenColors.textPrimary),
                  ),
                  SizedBox(height: TokenSpacing.xs),
                  Text(
                    _getAccountTypeName(account.type),
                    style: TokenTypography.caption(color: TokenColors.textTertiary),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  Formatters.formatCurrency(
                    account.balance,
                    symbol: _getCurrencySymbol(account.currency),
                  ),
                  style: TokenTypography.h4(
                    fontWeight: FontWeight.w700,
                    color: TokenColors.textPrimary,
                  ),
                ),
                SizedBox(height: TokenSpacing.xs),
                Text(
                  account.currency,
                  style: TokenTypography.caption(color: TokenColors.textTertiary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getAccountTypeColor(AccountType type) {
    switch (type) {
      case AccountType.checking:
        return TokenColors.info;
      case AccountType.savings:
        return TokenColors.success;
      case AccountType.investment:
        return TokenColors.textAccent;
      case AccountType.credit:
        return TokenColors.primary;
    }
  }

  IconData _getAccountTypeIcon(AccountType type) {
    switch (type) {
      case AccountType.checking:
        return Icons.account_balance;
      case AccountType.savings:
        return Icons.savings;
      case AccountType.investment:
        return Icons.trending_up;
      case AccountType.credit:
        return Icons.credit_card;
    }
  }

  String _getAccountTypeName(AccountType type) {
    switch (type) {
      case AccountType.checking:
        return 'Checking';
      case AccountType.savings:
        return 'Savings';
      case AccountType.investment:
        return 'Investment';
      case AccountType.credit:
        return 'Credit';
    }
  }

  String _getCurrencySymbol(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return '\$';
      case 'EUR':
        return '€';
      case 'GBP':
        return '£';
      case 'CNY':
        return '¥';
      default:
        return currency;
    }
  }
}
