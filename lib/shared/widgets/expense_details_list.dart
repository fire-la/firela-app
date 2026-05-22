import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../core/design_tokens/design_tokens.dart';

class ExpenseDayData {
  const ExpenseDayData({
    required this.date,
    required this.total,
    required this.items,
  });

  final String date;
  final int total;
  final List<ExpenseItemData> items;
}

class ExpenseItemData {
  const ExpenseItemData({
    required this.category,
    required this.description,
    required this.amount,
    this.icon,
  });

  final String category;
  final String description;
  final int amount;
  final IconData? icon;
}

class ExpenseDetailsList extends StatelessWidget {
  const ExpenseDetailsList({
    super.key,
    required this.expenses,
  });

  final List<ExpenseDayData> expenses;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(TokenSpacing.xl),
      decoration: BoxDecoration(
        color: TokenColors.bgCard,
        borderRadius: TokenRadius.borderMd,
      ),
      child: Column(
        children: expenses.map((day) {
          return Column(
            children: [
              _DayHeader(date: day.date, total: day.total, l10n: l10n),
              ...day.items.map((item) {
                return _ExpenseItem(
                  category: item.category,
                  description: item.description,
                  amount: item.amount,
                  icon: item.icon,
                );
              }),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _DayHeader extends StatelessWidget {
  const _DayHeader({
    required this.date,
    required this.total,
    required this.l10n,
  });

  final String date;
  final int total;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.xl,
        vertical: TokenSpacing.sm,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: TokenTypography.body(
              fontWeight: FontWeight.w500,
              color: TokenColors.textPrimary,
            ),
          ),
          Text(
            '${l10n.total}: $total',
            style: TokenTypography.body(color: TokenColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class _ExpenseItem extends StatelessWidget {
  const _ExpenseItem({
    required this.category,
    required this.description,
    required this.amount,
    this.icon,
  });

  final String category;
  final String description;
  final int amount;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: TokenSpacing.xl,
        vertical: TokenSpacing.sm,
      ),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: TokenColors.neutral200,
              borderRadius: BorderRadius.circular(TokenSpacing.sm),
            ),
            child: Icon(
              icon ?? Icons.receipt_outlined,
              size: 18,
              color: TokenColors.textTertiary,
            ),
          ),
          SizedBox(width: TokenSpacing.lg),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TokenTypography.body(
                    fontWeight: FontWeight.w500,
                    color: TokenColors.textPrimary,
                  ),
                ),
                Text(
                  description,
                  style: TokenTypography.caption(color: TokenColors.textTertiary),
                ),
              ],
            ),
          ),
          Text(
            amount.toString(),
            style: TokenTypography.body(
              fontWeight: FontWeight.w500,
              color: TokenColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
