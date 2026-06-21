import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/surfaces/account_card.dart';

void main() {
  group('AccountCard rendering', () {
    testWidgets('renders name, amount, currency, tag, rate and chevron',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AccountCard(
            iconColor: const Color(0xFFFFB899),
            name: 'Brokerage',
            amount: '3,050.00',
            currency: 'USD',
            tagLabel: 'Checking',
            rateText: '+11.3%',
          ),
        ),
      ));
      expect(find.text('Brokerage'), findsOneWidget);
      expect(find.text('3,050.00'), findsOneWidget);
      expect(find.text('USD'), findsOneWidget);
      expect(find.text('Checking'), findsOneWidget);
      expect(find.text('+11.3%'), findsOneWidget);
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('omits optional fields when null but keeps chevron',
        (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AccountCard(
            iconColor: const Color(0xFFFFB899),
            name: 'Cash',
            amount: '100.00',
          ),
        ),
      ));
      expect(find.text('Cash'), findsOneWidget);
      expect(find.text('100.00'), findsOneWidget);
      expect(find.text('USD'), findsNothing);
      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('calls onTap when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: AccountCard(
            iconColor: const Color(0xFFFFB899),
            name: 'Brokerage',
            amount: '3,050.00',
            onTap: () => tapped = true,
          ),
        ),
      ));
      await tester.tap(find.text('Brokerage'));
      expect(tapped, isTrue);
    });

    testWidgets('does not overflow with a long amount', (tester) async {
      final errors = <String>[];
      FlutterError.onError =
          (FlutterErrorDetails details) => errors.add(details.toString());
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: 343,
            child: AccountCard(
              iconColor: const Color(0xFFFFB899),
              name: 'Brokerage',
              amount: '1,234,567.89',
              currency: 'USD',
              tagLabel: 'Checking',
              rateText: '+11.3%',
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
