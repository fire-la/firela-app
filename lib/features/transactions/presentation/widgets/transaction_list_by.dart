import 'package:flutter/material.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../providers/use_transaction_list.dart';
import 'transaction_date_group.dart';

/// Transaction list content: filter bar + summary + date groups + load more.
/// Mirrors the Pencil reusable component `TransactionListBy` (vUJxv):
/// horizontal page padding 16, vertical gap 16 between sections.
class TransactionListBy extends StatelessWidget {
  const TransactionListBy({
    super.key,
    required this.state,
    required this.onTransactionTap,
    required this.onOpenFilter,
  });

  final TransactionListState state;
  final ValueChanged<String> onTransactionTap;
  final VoidCallback onOpenFilter;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasFilters = state.filterDateFrom != null ||
        state.filterDateTo != null ||
        state.filterStatus != null ||
        state.filterSearch != null ||
        state.filterAccountId != null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: TokenSpacing.xl,
        children: [
          FilterBar(
            label: state.accountDisplayName ??
                state.filterAccountId ??
                state.filterSearch ??
                (hasFilters ? l10n.filtered : l10n.filterTransactions),
            onTap: onOpenFilter,
            onClear: hasFilters ? state.clearFilters : null,
          ),
          SummaryCard(
            label: l10n.transactionSummary(state.loadedCount, state.total),
            value: state.summaryValue,
          ),
          for (final entry in state.groupedTransactions.entries)
            TransactionDateGroup(
              date: entry.key,
              transactions: entry.value,
              onTransactionTap: onTransactionTap,
            ),
          if (state.hasMore)
            SizedBox(
              width: double.infinity,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ButtonText(label: l10n.loadMore, onPressed: state.loadMore),
            ),
        ],
      ),
    );
  }
}
