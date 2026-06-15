import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/buttons/button_secondary.dart';

void main() {
  group('ButtonSecondary', () {
    testWidgets('fires onPressed when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: ButtonSecondary(
            label: 'Cancel',
            onPressed: () => tapped = true,
          ),
        ),
      ));

      await tester.tap(find.text('Cancel'));
      expect(tapped, isTrue);
    });
  });
}
