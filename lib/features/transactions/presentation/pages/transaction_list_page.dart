import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../../../../shared/widgets/error_view.dart';
import '../providers/use_transaction_list.dart';
import '../widgets/transaction_date_group.dart';

class TransactionListPage extends HookWidget {
  final String? initialAccountId;
  final String? initialAccountName;

  const TransactionListPage({super.key, this.initialAccountId, this.initialAccountName});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final state = useTransactionList(
      initialAccountId: initialAccountId,
      initialAccountName: initialAccountName,
    );
    final scrollController = useScrollController();

    useEffect(() {
      void onScroll() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 200) {
          state.loadMore();
        }
      }
      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController, state]);

    return Scaffold(
      body: Column(
        children: [
          TopBar(title: initialAccountName ?? l10n.transactionRecordTitle),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => state.refresh(),
              child: state.isLoading && state.groupedTransactions.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : state.error != null && state.groupedTransactions.isEmpty
                      ? ErrorView(
                          message: l10n.loadFailed,
                          onRetry: state.refresh,
                          actionLabel: l10n.retry,
                        )
                      : _buildContent(context, state, scrollController),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, TransactionListState state, ScrollController controller) {
    final l10n = AppLocalizations.of(context)!;
    final hasFilters = state.filterDateFrom != null ||
        state.filterDateTo != null ||
        state.filterStatus != null ||
        state.filterSearch != null ||
        state.filterAccountId != null;

    return ListView(
      controller: controller,
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(bottom: TokenSpacing.xxl),
      children: [
        // Filter bar
        if (hasFilters)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            child: FilterBar(
              label: state.accountDisplayName ??
                  state.filterAccountId ??
                  state.filterSearch ??
                  l10n.filtered,
              onClear: state.clearFilters,
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            child: FilterBar(
              label: l10n.filterTransactions,
              onTap: () => _showFilterSheet(context, state),
            ),
          ),
        const SizedBox(height: TokenSpacing.xl),

        // Summary
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
          child: SummaryCard(
            label: l10n.transactionSummary(state.loadedCount, state.total),
            value: state.summaryValue,
          ),
        ),
        const SizedBox(height: TokenSpacing.xl),

        // Date groups
        for (final entry in state.groupedTransactions.entries)
          TransactionDateGroup(
            date: entry.key,
            transactions: entry.value,
            onTransactionTap: (id) => context.push('${RouteNames.transactions}/$id'),
          ),

        // Load more
        if (state.hasMore)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.xl),
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ButtonSecondary(
                    label: l10n.loadMore,
                    onPressed: state.loadMore,
                  ),
          ),
      ],
    );
  }

  void _showFilterSheet(BuildContext context, TransactionListState state) {
    final l10n = AppLocalizations.of(context)!;
    final statusOptions = <String, String>{
      'ACTIVE': l10n.transactionStatusActive,
      'VOIDED': l10n.transactionStatusVoided,
    };
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.filter, style: TokenTypography.h3(fontWeight: FontWeight.w600)),
            const SizedBox(height: TokenSpacing.xl),
            Wrap(
              spacing: TokenSpacing.sm,
              children: statusOptions.entries.map((e) {
                return ChoiceChip(
                  label: Text(e.value),
                  selected: state.filterStatus == e.key,
                  onSelected: (_) {
                    Navigator.pop(ctx);
                    state.applyFilters(
                      state.filterDateFrom,
                      state.filterDateTo,
                      e.key,
                      state.filterSearch,
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
