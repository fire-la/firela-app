import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/buttons/button_primary.dart';

void main() {
  group('ButtonPrimary', () {
    testWidgets('fires onPressed when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ButtonPrimary(
            label: 'Save',
            onPressed: () => tapped = true,
          ),
        ),
      ));

      await tester.tap(find.text('Save'));
      expect(tapped, isTrue);
    });

    testWidgets('is disabled and shows a spinner while loading',
        (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ButtonPrimary(
            label: 'Save',
            isLoading: true,
            onPressed: () => tapped = true,
          ),
        ),
      ));

      // The label is replaced by a progress indicator.
      expect(find.text('Save'), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);

      // Tapping a disabled button must not fire the callback.
      // Use pump (not pumpAndSettle) — the spinner animates forever.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();
      expect(tapped, isFalse);
    });
  });
}
