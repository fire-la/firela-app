import 'package:flutter/material.dart';

class TokenShadows {
  TokenShadows._();

  /// shadow.card — 0 2px 18px 2px rgba(0,0,0,0.05)
  static BoxShadow get card => const BoxShadow(
        color: Color(0x0D000000),
        blurRadius: 18,
        spreadRadius: 2,
        offset: Offset(0, 2),
      );

  static List<BoxShadow> get cardList => [card];
}
