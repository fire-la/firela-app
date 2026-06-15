import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/design_tokens/theme_tokens.dart';

void main() {
  group('ThemeTokens.of(context) resolution', () {
    testWidgets('returns the light instance in a light theme', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              // Act / Assert — light brightness must resolve to the light
              // token set, by identity.
              expect(ThemeTokens.of(context), same(ThemeTokens.light));
              return const SizedBox.shrink();
            },
          ),
        ),
      );
    });

    testWidgets('returns the dark instance in a dark theme', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Builder(
            builder: (context) {
              // Act / Assert — dark brightness must resolve to the dark
              // token set, by identity.
              expect(ThemeTokens.of(context), same(ThemeTokens.dark));
              return const SizedBox.shrink();
            },
          ),
        ),
      );
    });
  });

  group('ThemeTokens light/dark sets', () {
    test('expose distinct bgPage values between modes', () {
      // Arrange / Act / Assert — theming must actually change the value,
      // not just swap an opaque instance.
      expect(
        ThemeTokens.light.bgPage,
        isNot(equals(ThemeTokens.dark.bgPage)),
      );
    });
  });
}
