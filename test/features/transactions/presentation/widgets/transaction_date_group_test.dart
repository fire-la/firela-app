import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:firela_app/core/components/components.dart';
import 'package:firela_app/features/transactions/domain/entities/transaction.dart';
import 'package:firela_app/features/transactions/presentation/widgets/transaction_date_group.dart';

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

Widget _wrap(Widget child) => MaterialApp(
      locale: const Locale('en'),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: Scaffold(body: child),
    );

void main() {
  setUpAll(initializeDateFormatting);

  testWidgets('renders date label + card; N rows have N-1 dividers', (tester) async {
    await tester.pumpWidget(_wrap(TransactionDateGroup(
      date: '2026-01-15',
      transactions: [_tx('1'), _tx('2'), _tx('3')],
      onTransactionTap: (_) {},
    )));

    expect(find.text('Jan 15, 2026'), findsOneWidget);
    expect(find.byType(TransactionRow), findsNWidgets(3));

    // The card is the only Container with clip antiAlias; its inner Column
    // holds rows interleaved with dividers → 2N-1 children for N rows.
    final card = tester.widget<Container>(
      find.byWidgetPredicate((w) => w is Container && w.clipBehavior == Clip.antiAlias),
    );
    expect((card.child as Column).children.length, 5); // 3 rows + 2 dividers
  });

  testWidgets('single row has no divider', (tester) async {
    await tester.pumpWidget(_wrap(TransactionDateGroup(
      date: '2026-01-15',
      transactions: [_tx('1')],
      onTransactionTap: (_) {}),
    ));
    expect(find.byType(TransactionRow), findsOneWidget);
    final card = tester.widget<Container>(
      find.byWidgetPredicate((w) => w is Container && w.clipBehavior == Clip.antiAlias),
    );
    expect((card.child as Column).children.length, 1);
  });

  testWidgets('onTransactionTap fires with the row id', (tester) async {
    String? tapped;
    await tester.pumpWidget(_wrap(TransactionDateGroup(
      date: '2026-01-15',
      transactions: [_tx('7')],
      onTransactionTap: (id) => tapped = id,
    )));
    await tester.tap(find.byType(TransactionRow));
    expect(tapped, '7');
  });
}
