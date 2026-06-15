import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/indicators/confidence_meter.dart';
import 'package:firela_app/core/design_tokens/design_tokens.dart';

Widget _harness(Widget child) => MaterialApp(home: Scaffold(body: child));

void main() {
  group('ConfidenceMeter percent text', () {
    testWidgets('renders (confidence * 100) as a percentage', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceMeter(confidence: 0.73)),
      );
      expect(find.text('73%'), findsOneWidget);
    });

    testWidgets('renders 0% and 100% at the range ends', (tester) async {
      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 0)));
      expect(find.text('0%'), findsOneWidget);

      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 1)));
      expect(find.text('100%'), findsOneWidget);
    });
  });

  group('ConfidenceMeter color thresholds', () {
    // The percent Text's color is set directly to the threshold color, which
    // is also applied to the bar fill.
    Color? percentColor(WidgetTester tester, String text) =>
        tester.widget<Text>(find.text(text)).style?.color;

    testWidgets('high band uses success', (tester) async {
      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 0.9)));
      expect(percentColor(tester, '90%'), TokenColors.success);
    });

    testWidgets('the 0.85 boundary is high (success)', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceMeter(confidence: 0.85)),
      );
      expect(percentColor(tester, '85%'), TokenColors.success);
    });

    testWidgets('medium band uses textAccent', (tester) async {
      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 0.7)));
      expect(percentColor(tester, '70%'), TokenColors.textAccent);
    });

    testWidgets('the 0.60 boundary is medium (textAccent)', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceMeter(confidence: 0.60)),
      );
      expect(percentColor(tester, '60%'), TokenColors.textAccent);
    });

    testWidgets('low band uses error', (tester) async {
      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 0.3)));
      expect(percentColor(tester, '30%'), TokenColors.error);
    });
  });

  group('ConfidenceMeter progress bar', () {
    testWidgets('fills proportionally to confidence', (tester) async {
      await tester.pumpWidget(_harness(const ConfidenceMeter(confidence: 0.7)));

      final bar = tester.widget<FractionallySizedBox>(
        find.byType(FractionallySizedBox),
      );
      expect(bar.widthFactor, 0.7);
    });
  });

  group('ConfidenceMeter range assertion', () {
    test('rejects confidence below 0', () {
      expect(
        () => ConfidenceMeter(confidence: -0.1),
        throwsA(isA<AssertionError>()),
      );
    });

    test('rejects confidence above 1', () {
      expect(
        () => ConfidenceMeter(confidence: 1.5),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
