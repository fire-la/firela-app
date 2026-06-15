import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:firela_app/core/design_tokens/app_colors.dart';
import 'package:firela_app/core/design_tokens/app_typography.dart';

void main() {
  group('TokenTypography font-size scale', () {
    test('display through micro follow documented font sizes', () {
      // Arrange — the documented type scale contract.
      // Act / Assert — any drift here mis-sizes every screen.
      expect(TokenTypography.display().fontSize, 32);
      expect(TokenTypography.h1().fontSize, 28);
      expect(TokenTypography.h2().fontSize, 24);
      expect(TokenTypography.h3().fontSize, 18);
      expect(TokenTypography.h4().fontSize, 16);
      expect(TokenTypography.body().fontSize, 14);
      expect(TokenTypography.caption().fontSize, 12);
      expect(TokenTypography.micro().fontSize, 10);
    });

    test('each level applies its documented default font weight', () {
      // Arrange — display/h1/h2 are bold (w700), h3/h4 semibold (w600),
      // body/caption/micro regular (w400).
      // Act / Assert
      expect(TokenTypography.display().fontWeight, FontWeight.w700);
      expect(TokenTypography.h1().fontWeight, FontWeight.w700);
      expect(TokenTypography.h2().fontWeight, FontWeight.w700);
      expect(TokenTypography.h3().fontWeight, FontWeight.w600);
      expect(TokenTypography.h4().fontWeight, FontWeight.w600);
      expect(TokenTypography.body().fontWeight, FontWeight.w400);
      expect(TokenTypography.caption().fontWeight, FontWeight.w400);
      expect(TokenTypography.micro().fontWeight, FontWeight.w400);
    });
  });

  group('TokenTypography font family', () {
    test('all levels use the Inter font family', () {
      for (final style in [
        TokenTypography.display(),
        TokenTypography.h1(),
        TokenTypography.h2(),
        TokenTypography.h3(),
        TokenTypography.h4(),
        TokenTypography.body(),
        TokenTypography.caption(),
        TokenTypography.micro(),
      ]) {
        expect(style.fontFamily, 'Inter');
      }
    });
  });

  group('TokenTypography color', () {
    test('color parameter overrides the default null color', () {
      // Arrange
      const color = TokenColors.error;

      // Assert — defaults to null (inherits) and accepts an override.
      expect(TokenTypography.body().color, isNull);
      expect(TokenTypography.body(color: color).color, color);
    });
  });

  group('TokenTypography textTheme mapping', () {
    test('maps each level to the expected Material slot', () {
      // Arrange — the bridge from the design scale into Material widgets.
      final theme = TokenTypography.textTheme;

      // Act / Assert — size, weight, and the one overridden slot.
      expect(theme.displayLarge?.fontSize, 32);
      expect(theme.bodyMedium?.fontSize, 14);
      expect(theme.labelSmall?.fontSize, 10);
      expect(theme.labelSmall?.fontWeight, FontWeight.w500);
      expect(theme.headlineSmall?.fontSize, 18);
      expect(theme.headlineSmall?.fontWeight, FontWeight.w400);
    });
  });
}
