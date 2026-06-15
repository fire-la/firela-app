import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/buttons/button_row.dart';
import 'package:firela_app/core/design_tokens/design_tokens.dart';

Widget _harness(Widget child) => MaterialApp(home: Scaffold(body: child));

void main() {
  group('ButtonRow twoButton variant', () {
    testWidgets('renders primary and secondary labels with the default gap',
        (tester) async {
      await tester.pumpWidget(_harness(const ButtonRow(
        primaryLabel: 'Save',
        secondaryLabel: 'Cancel',
      )));

      expect(find.text('Save'), findsOneWidget);
      expect(find.text('Cancel'), findsOneWidget);

      // The single SizedBox between the two buttons is the gap spacer.
      final gap = tester.widget<SizedBox>(
        find.descendant(
          of: find.byType(ButtonRow),
          matching: find.byType(SizedBox),
        ),
      );
      expect(gap.width, TokenSpacing.xl);
    });

    testWidgets('honors a custom gap', (tester) async {
      await tester.pumpWidget(_harness(const ButtonRow(
        primaryLabel: 'Save',
        secondaryLabel: 'Cancel',
        gap: 24,
      )));

      final gap = tester.widget<SizedBox>(
        find.descendant(
          of: find.byType(ButtonRow),
          matching: find.byType(SizedBox),
        ),
      );
      expect(gap.width, 24.0);
    });

    testWidgets('fires primary and secondary taps', (tester) async {
      var primaryTapped = false;
      var secondaryTapped = false;
      await tester.pumpWidget(_harness(ButtonRow(
        primaryLabel: 'Save',
        secondaryLabel: 'Cancel',
        primaryOnTap: () => primaryTapped = true,
        secondaryOnTap: () => secondaryTapped = true,
      )));

      await tester.tap(find.text('Cancel'));
      expect(secondaryTapped, isTrue);

      await tester.tap(find.text('Save'));
      expect(primaryTapped, isTrue);
    });
  });

  group('ButtonRow iconButton variant', () {
    // Each rendered item wraps in a GestureDetector, so counting them is a
    // proxy for counting buttons without reaching the private item class.
    Finder buttons(WidgetTester tester) => find.descendant(
          of: find.byType(ButtonRow),
          matching: find.byType(GestureDetector),
        );

    testWidgets('renders only the primary button when no extra labels',
        (tester) async {
      await tester.pumpWidget(_harness(const ButtonRow(
        variant: ButtonRowVariant.iconButton,
        primaryLabel: 'Add',
        primaryIcon: Icons.add,
      )));

      expect(find.text('Add'), findsOneWidget);
      expect(buttons(tester), findsNWidgets(1));
    });

    testWidgets('renders secondary and tertiary only when their labels are set',
        (tester) async {
      await tester.pumpWidget(_harness(const ButtonRow(
        variant: ButtonRowVariant.iconButton,
        primaryLabel: 'Add',
        primaryIcon: Icons.add,
        secondaryLabel: 'Edit',
        tertiaryLabel: 'Delete',
      )));

      expect(find.text('Add'), findsOneWidget);
      expect(find.text('Edit'), findsOneWidget);
      expect(find.text('Delete'), findsOneWidget);
      expect(buttons(tester), findsNWidgets(3));
    });
  });
}
