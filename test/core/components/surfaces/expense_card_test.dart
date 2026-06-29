import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/surfaces/expense_card.dart';

void main() {
  group('ExpenseCard rendering', () {
    testWidgets('renders name, amount, meta and currency', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ExpenseCard(
            icon: Icons.restaurant,
            name: 'Food',
            amount: '3,280.00',
            meta: '38%',
            currency: 'CNY',
          ),
        ),
      ));
      expect(find.text('Food'), findsOneWidget);
      expect(find.text('3,280.00'), findsOneWidget);
      expect(find.text('38%'), findsOneWidget);
      expect(find.text('CNY'), findsOneWidget);
      expect(find.byIcon(Icons.restaurant), findsOneWidget);
    });

    testWidgets('omits meta and currency when null', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: ExpenseCard(
            icon: Icons.category,
            name: 'Other',
            amount: '100.00',
          ),
        ),
      ));
      expect(find.text('Other'), findsOneWidget);
      expect(find.text('CNY'), findsNothing);
    });

    testWidgets('calls onTap when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ExpenseCard(
            icon: Icons.restaurant,
            name: 'Food',
            amount: '3,280.00',
            onTap: () => tapped = true,
          ),
        ),
      ));
      await tester.tap(find.text('Food'));
      expect(tapped, isTrue);
    });

    testWidgets('does not overflow with a long amount', (tester) async {
      final errors = <String>[];
      FlutterError.onError =
          (FlutterErrorDetails details) => errors.add(details.toString());
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 343,
            child: ExpenseCard(
              icon: Icons.restaurant,
              name: 'Food',
              amount: '1,234,567.89',
              meta: '38%',
              currency: 'CNY',
            ),
          ),
        ),
      ));
      await tester.pump();
      expect(
        errors.any((e) => e.contains('overflowed')),
        isFalse,
        reason: errors.join('\n'),
      );
    });
  });
}
