import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:firela_app/core/components/components.dart';
import 'package:firela_app/features/transactions/domain/entities/transaction.dart';
import 'package:firela_app/features/transactions/presentation/providers/use_transaction_list.dart';
import 'package:firela_app/features/transactions/presentation/widgets/transaction_list_by.dart';

Transaction _tx(String id) => Transaction(
      id: id,
      date: '2026-01-15',
      narration: 'n$id',
      payee: 'p$id',
      sourceType: 'NLP',
      status: 'ACTIVE',
      displayAmount: -10,
      currency: 'CNY',
    );

TransactionListState _state({required bool hasMore}) => TransactionListState(
      isLoading: false,
      groupedTransactions: {'2026-01-15': [_tx('1'), _tx('2')]},
      loadedCount: 2,
      total: 5,
      hasMore: hasMore,
      summaryValue: '-20.00',
      loadMore: () {},
      refresh: () {},
      applyFilters: (_, __, ___, ____) {},
      clearFilters: () {},
    );

Widget _wrap(TransactionListState state) => MaterialApp(
      locale: const Locale('en'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Scaffold(
        body: ListView(children: [
          TransactionListBy(
            state: state,
            onTransactionTap: (_) {},
            onOpenFilter: () {},
          ),
        ]),
      ),
    );

void main() {
  setUpAll(initializeDateFormatting);

  testWidgets('renders filter bar, summary, date group rows and load more', (tester) async {
    await tester.pumpWidget(_wrap(_state(hasMore: true)));

    expect(find.byType(FilterBar), findsOneWidget);
    expect(find.byType(SummaryCard), findsOneWidget);
    expect(find.byType(TransactionRow), findsNWidgets(2));
    expect(find.text('Load more'), findsOneWidget); // ButtonText loadMore
  });

  testWidgets('hides load more when hasMore is false', (tester) async {
    await tester.pumpWidget(_wrap(_state(hasMore: false)));
    expect(find.text('Load more'), findsNothing);
  });
}
