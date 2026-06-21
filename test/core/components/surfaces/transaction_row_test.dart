import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/components.dart';

void main() {
  testWidgets('renders icon, title, subtitle and amount', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 343,
            child: TransactionRow(
              icon: Icons.receipt_outlined,
              title: 'Coffee',
              subtitle: 'Cafe',
              amount: '-12.50 CNY',
              amountColor: Colors.red,
            ),
          ),
        ),
      ),
    );
    expect(find.text('Coffee'), findsOneWidget);
    expect(find.text('Cafe'), findsOneWidget);
    expect(find.text('-12.50 CNY'), findsOneWidget);
    expect(find.byIcon(Icons.receipt_outlined), findsOneWidget);
  });

  testWidgets('omits convertedText when null', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TransactionRow(
            icon: Icons.receipt_outlined,
            title: 'Coffee',
            amount: '0',
          ),
        ),
      ),
    );
    expect(find.text(r'≈ $3.50'), findsNothing);
  });

  testWidgets('renders convertedText when provided', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: TransactionRow(
            icon: Icons.receipt_outlined,
            title: 'Coffee',
            amount: '-12.50 CNY',
            convertedText: r'≈ $3.50',
          ),
        ),
      ),
    );
    expect(find.text(r'≈ $3.50'), findsOneWidget);
  });

  testWidgets('onTap fires', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: TransactionRow(
            icon: Icons.receipt_outlined,
            title: 'Coffee',
            amount: '0',
            onTap: () => tapped = true,
          ),
        ),
      ),
    );
    await tester.tap(find.byType(TransactionRow));
    expect(tapped, isTrue);
  });

  testWidgets('long narration does not overflow on a narrow width', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 320,
            child: TransactionRow(
              icon: Icons.receipt_outlined,
              title: 'A very long transaction narration that should ellipsize gracefully',
              subtitle: 'A very long payee name that should also ellipsize gracefully',
              amount: '-50.00 CNY',
            ),
          ),
        ),
      ),
    );
    expect(tester.takeException(), isNull);
  });

  testWidgets('amount sits flush at the row right edge (right-aligned)', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 343,
            child: TransactionRow(
              icon: Icons.receipt_outlined,
              title: 'Coffee',
              amount: '-12.50 CNY',
            ),
          ),
        ),
      ),
    );
    final rowRight = tester.getTopRight(find.byType(TransactionRow)).dx;
    final amountRight = tester.getTopRight(find.text('-12.50 CNY')).dx;
    // Row padding is 12 (TokenSpacing.lg); amount flush to right edge minus it.
    expect(rowRight - amountRight, closeTo(12, 2));
  });
}
