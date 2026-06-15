import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/components/indicators/confidence_indicator.dart';
import 'package:firela_app/core/design_tokens/design_tokens.dart';

/// Wraps the indicator so it has the Theme + layout constraints
/// (ThemeTokens.of(context) reads Theme.brightness) it needs to build.
Widget _harness(Widget child) {
  return MaterialApp(
    theme: ThemeData.light(),
    home: Scaffold(body: child),
  );
}

void main() {
  group('ConfidenceIndicator percent text', () {
    testWidgets('renders (confidence * 100) as a percentage', (tester) async {
      // Act / Assert — 0.73 must round down to "73%".
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.73)),
      );
      expect(find.text('73%'), findsOneWidget);
    });

    testWidgets('renders 0% and 100% at the range ends', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0)),
      );
      expect(find.text('0%'), findsOneWidget);

      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 1)),
      );
      expect(find.text('100%'), findsOneWidget);
    });
  });

  group('ConfidenceIndicator color thresholds', () {
    // The bar/percent color is the visible behavior of _barColor. We read it
    // off the percent Text's style, which is set directly to _barColor.
    Color? percentColor(WidgetTester tester, String text) =>
        tester.widget<Text>(find.text(text)).style?.color;

    testWidgets('high band uses success', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.9)),
      );
      expect(percentColor(tester, '90%'), TokenColors.success);
    });

    testWidgets('the 0.85 boundary is high (success)', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.85)),
      );
      expect(percentColor(tester, '85%'), TokenColors.success);
    });

    testWidgets('medium band uses textAccent', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.7)),
      );
      expect(percentColor(tester, '70%'), TokenColors.textAccent);
    });

    testWidgets('the 0.60 boundary is medium (textAccent)', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.60)),
      );
      expect(percentColor(tester, '60%'), TokenColors.textAccent);
    });

    testWidgets('low band uses error', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.3)),
      );
      expect(percentColor(tester, '30%'), TokenColors.error);
    });
  });

  group('ConfidenceIndicator progress bar', () {
    testWidgets('fills proportionally to confidence', (tester) async {
      await tester.pumpWidget(
        _harness(const ConfidenceIndicator(confidence: 0.7)),
      );

      // Assert — the bar fill width tracks the confidence ratio.
      final bar = tester.widget<FractionallySizedBox>(
        find.byType(FractionallySizedBox),
      );
      expect(bar.widthFactor, 0.7);
    });
  });

  group('ConfidenceIndicator range assertion', () {
    test('rejects confidence below 0', () {
      expect(
        () => ConfidenceIndicator(confidence: -0.1),
        throwsA(isA<AssertionError>()),
      );
    });

    test('rejects confidence above 1', () {
      expect(
        () => ConfidenceIndicator(confidence: 1.5),
        throwsA(isA<AssertionError>()),
      );
    });
  });
}
