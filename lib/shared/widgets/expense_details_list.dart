import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';

/// Expense details data model
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

/// Expense item data model
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

/// Reusable expense details list widget
class ExpenseDetailsList extends StatelessWidget {
  const ExpenseDetailsList({
    super.key,
    required this.expenses,
  });

  final List<ExpenseDayData> expenses;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: expenses.map((day) {
        return Column(
          children: [
            _DayHeader(
              date: day.date,
              total: day.total,
              l10n: l10n,
            ),
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
    );
  }
}

/// Day header widget
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
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            date,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            '${l10n.total}: $total',
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}

/// Expense item widget
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
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F0F0),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              icon ?? Icons.receipt_outlined,
              size: 18,
              color: theme.colorScheme.outline,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
          Text(
            amount.toString(),
            style: theme.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
