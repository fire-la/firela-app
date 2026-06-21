import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import '../../../../core/components/components.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/router/route_names.dart';
import '../../../../shared/widgets/error_view.dart';
import '../providers/use_transaction_list.dart';
import '../widgets/transaction_list_by.dart';

/// Transaction list page (Pencil `TransactionListByPage`, UsIJi):
/// TopBar + [loading | error | TransactionListBy content].
class TransactionListByPage extends HookWidget {
  final String? initialAccountId;
  final String? initialAccountName;

  const TransactionListByPage({
    super.key,
    this.initialAccountId,
    this.initialAccountName,
  });

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
                      : ListView(
                          controller: scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: const EdgeInsets.only(bottom: TokenSpacing.xxl),
                          children: [
                            TransactionListBy(
                              state: state,
                              onTransactionTap: (id) =>
                                  context.push('${RouteNames.transactions}/$id'),
                              onOpenFilter: () => _showFilterSheet(context, state),
                            ),
                          ],
                        ),
            ),
          ),
        ],
      ),
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
