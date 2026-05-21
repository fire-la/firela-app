import 'package:flutter/material.dart';

class TokenTypography {
  TokenTypography._();

  static const String _fontFamily = 'Inter';

  // font.display — 32px
  /// font.display
  static TextStyle display({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 32,
        fontWeight: fontWeight,
        height: 1.2,
        color: color,
      );

  // font.h1 — 28px
  /// font.h1
  static TextStyle h1({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 28,
        fontWeight: fontWeight,
        height: 1.3,
        color: color,
      );

  // font.h2 — 24px
  /// font.h2
  static TextStyle h2({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 24,
        fontWeight: fontWeight,
        height: 1.3,
        color: color,
      );

  // font.h3 — 18px
  /// font.h3
  static TextStyle h3({
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 18,
        fontWeight: fontWeight,
        height: 1.4,
        color: color,
      );

  // font.h4 — 16px
  /// font.h4
  static TextStyle h4({
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        fontWeight: fontWeight,
        height: 1.4,
        color: color,
      );

  // font.body — 14px
  /// font.body
  static TextStyle body({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        fontWeight: fontWeight,
        height: 1.5,
        color: color,
      );

  // font.caption — 12px
  /// font.caption
  static TextStyle caption({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        fontWeight: fontWeight,
        height: 1.4,
        color: color,
      );

  // font.micro — 10px
  /// font.micro
  static TextStyle micro({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontSize: 10,
        fontWeight: fontWeight,
        height: 1.3,
        color: color,
      );

  // Material TextTheme mapping
  static TextTheme get textTheme => TextTheme(
        displayLarge: display(),
        displayMedium: h1(),
        displaySmall: h2(),
        headlineLarge: h2(),
        headlineMedium: h3(),
        headlineSmall: h3(fontWeight: FontWeight.w400),
        titleLarge: h4(),
        titleMedium: body(fontWeight: FontWeight.w500),
        titleSmall: body(fontWeight: FontWeight.w500),
        bodyLarge: body(),
        bodyMedium: body(),
        bodySmall: caption(),
        labelLarge: body(fontWeight: FontWeight.w500),
        labelMedium: caption(fontWeight: FontWeight.w500),
        labelSmall: micro(fontWeight: FontWeight.w500),
      );
}
