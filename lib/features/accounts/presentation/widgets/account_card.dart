import 'package:flutter/material.dart';
import '../../../../core/design_tokens/design_tokens.dart';
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: TokenSpacing.xl,
          horizontal: TokenSpacing.xxl,
        ),
        decoration: BoxDecoration(
          color: TokenColors.bgCard,
          borderRadius: TokenRadius.borderLg,
          border: Border.all(color: TokenColors.borderCard, width: 0.5),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0D000000),
              blurRadius: 18,
              offset: Offset(0, 2),
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          children: [
            // Icon: 24x24 circle
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: _getAccountTypeColor(account.type),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            // Account info: name + balance
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    account.name,
                    style: TokenTypography.caption(color: TokenColors.textTertiary),
                  ),
                  const SizedBox(height: TokenSpacing.xs),
                  Text(
                    Formatters.formatCurrency(
                      account.balance,
                      symbol: _getCurrencySymbol(account.currency),
                    ),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: TokenColors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            // Right: tag + rate
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: TokenSpacing.lg,
                    vertical: TokenSpacing.xs,
                  ),
                  decoration: BoxDecoration(
                    color: TokenColors.bgCard,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(color: TokenColors.borderTag, width: 0.5),
                  ),
                  child: Text(
                    _getAccountTypeName(account.type),
                    style: TokenTypography.caption(color: TokenColors.textPrimary),
                  ),
                ),
                const SizedBox(height: TokenSpacing.sm),
                Text(
                  _getRateText(account.type),
                  style: TokenTypography.caption(
                    fontWeight: FontWeight.w600,
                    color: TokenColors.textAccent,
                  ),
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
        return TokenColors.chartBlue;
      case AccountType.savings:
        return TokenColors.chartGreen;
      case AccountType.investment:
        return TokenColors.chartAmber;
      case AccountType.credit:
        return TokenColors.chartGrey;
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

  String _getRateText(AccountType type) {
    switch (type) {
      case AccountType.savings:
        return '年化1.5%';
      case AccountType.investment:
        return '年化5.2%';
      default:
        return '';
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
