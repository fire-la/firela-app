import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../providers/use_transaction_list.dart';
import '../widgets/transaction_date_group.dart';

class TransactionListPage extends HookWidget {
  const TransactionListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final state = useTransactionList();
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
          const TopBar(title: '交易记录'),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async => state.refresh(),
              child: state.isLoading && state.groupedTransactions.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : state.error != null && state.groupedTransactions.isEmpty
                      ? _buildError(state)
                      : _buildContent(context, state, scrollController),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildError(TransactionListState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, size: 48, color: TokenColors.error),
          const SizedBox(height: TokenSpacing.xl),
          Text(state.error ?? '加载失败', style: TokenTypography.body(color: TokenColors.textTertiary)),
          const SizedBox(height: TokenSpacing.xl),
          SizedBox(
            width: 120,
            child: ButtonPrimary(label: '重试', onPressed: state.refresh),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context, TransactionListState state, ScrollController controller) {
    final hasFilters = state.filterDateFrom != null ||
        state.filterDateTo != null ||
        state.filterStatus != null ||
        state.filterSearch != null;

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
              label: state.filterSearch ?? '已筛选',
              onClear: state.clearFilters,
            ),
          )
        else
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
            child: FilterBar(
              label: '筛选交易',
              onTap: () => _showFilterSheet(context, state),
            ),
          ),
        const SizedBox(height: TokenSpacing.xl),

        // Summary
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl),
          child: SummaryCard(
            label: state.summaryLabel,
            value: state.summaryValue,
          ),
        ),
        const SizedBox(height: TokenSpacing.xl),

        // Date groups
        for (final entry in state.groupedTransactions.entries)
          TransactionDateGroup(
            date: entry.key,
            transactions: entry.value,
            onTransactionTap: (id) => context.push('/transactions/$id'),
          ),

        // Load more
        if (state.hasMore)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: TokenSpacing.xl, vertical: TokenSpacing.xl),
            child: state.isLoading
                ? const Center(child: CircularProgressIndicator())
                : ButtonSecondary(
                    label: '加载更多',
                    onPressed: state.loadMore,
                  ),
          ),
      ],
    );
  }

  void _showFilterSheet(BuildContext context, TransactionListState state) {
    // Simple filter — can be expanded later
    showModalBottomSheet(
      context: context,
      builder: (ctx) => Container(
        padding: const EdgeInsets.all(TokenSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('筛选', style: TokenTypography.h3(fontWeight: FontWeight.w600)),
            const SizedBox(height: TokenSpacing.xl),
            Wrap(
              spacing: TokenSpacing.sm,
              children: ['ACTIVE', 'VOIDED'].map((status) {
                return ChoiceChip(
                  label: Text(status),
                  selected: state.filterStatus == status,
                  onSelected: (_) {
                    Navigator.pop(ctx);
                    state.applyFilters(
                      state.filterDateFrom,
                      state.filterDateTo,
                      status,
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
