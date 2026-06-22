import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TokenTypography {
  TokenTypography._();

  // ponytail: GoogleFonts.inter() does a Map lookup + TextStyle alloc on every
  // call; these methods sit in 200+ build() sites. Cache one base per size at
  // class-init, return cheap .copyWith() for the per-call fontWeight/color.
  static final TextStyle _displayBase = GoogleFonts.inter(
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.2,
  );
  static final TextStyle _h1Base = GoogleFonts.inter(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );
  static final TextStyle _h2Base = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.3,
  );
  static final TextStyle _h3Base = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );
  static final TextStyle _h4Base = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    height: 1.4,
  );
  static final TextStyle _bodyBase = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
  );
  static final TextStyle _captionBase = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
  );
  static final TextStyle _microBase = GoogleFonts.inter(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    height: 1.3,
  );

  // font.display — 32px
  /// font.display
  static TextStyle display({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      _displayBase.copyWith(fontWeight: fontWeight, color: color);

  // font.h1 — 28px
  /// font.h1
  static TextStyle h1({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      _h1Base.copyWith(fontWeight: fontWeight, color: color);

  // font.h2 — 24px
  /// font.h2
  static TextStyle h2({
    FontWeight fontWeight = FontWeight.w700,
    Color? color,
  }) =>
      _h2Base.copyWith(fontWeight: fontWeight, color: color);

  // font.h3 — 18px
  /// font.h3
  static TextStyle h3({
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      _h3Base.copyWith(fontWeight: fontWeight, color: color);

  // font.h4 — 16px
  /// font.h4
  static TextStyle h4({
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
  }) =>
      _h4Base.copyWith(fontWeight: fontWeight, color: color);

  // font.body — 14px
  /// font.body
  static TextStyle body({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      _bodyBase.copyWith(fontWeight: fontWeight, color: color);

  // font.caption — 12px
  /// font.caption
  static TextStyle caption({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      _captionBase.copyWith(fontWeight: fontWeight, color: color);

  // font.micro — 10px
  /// font.micro
  static TextStyle micro({
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
  }) =>
      _microBase.copyWith(fontWeight: fontWeight, color: color);

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
