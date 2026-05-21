import 'package:flutter/material.dart';

class TokenRadius {
  TokenRadius._();

  /// radius.sm — 8
  static const double sm = 8.0;

  /// radius.md — 12
  static const double md = 12.0;

  /// radius.lg — 18
  static const double lg = 18.0;

  /// radius.pill — 999
  static const double pill = 999.0;

  // BorderRadius helpers
  static BorderRadius get borderSm => BorderRadius.circular(sm);
  static BorderRadius get borderMd => BorderRadius.circular(md);
  static BorderRadius get borderLg => BorderRadius.circular(lg);
  static BorderRadius get borderPill => BorderRadius.circular(pill);
}
