import 'package:flutter/material.dart';

class TokenColors {
  TokenColors._();

  // Background
  /// bg.bar
  static const Color bgBar = Color(0xB2B9C429);

  /// bg.card
  static const Color bgCard = Color(0xFFFFFFFF);

  /// bg.nav
  static const Color bgNav = Color(0xFFFFFF64);

  /// bg.page
  static const Color bgPage = Color(0xFFF8F6F2);

  /// bg.toast
  static const Color bgToast = Color(0xCC000000);

  /// bg.scrim
  static const Color bgScrim = Color(0x66000000);

  // Border
  /// border.card
  static const Color borderCard = Color(0xFFEEEEEE);

  /// border.tag
  static const Color borderTag = Color(0xFFD1D1D1);

  // Chart
  /// chart.amber
  static const Color chartAmber = Color(0xFFFFB347);

  /// chart.blue
  static const Color chartBlue = Color(0xFFFFB899);

  /// chart.green
  static const Color chartGreen = Color(0xFFD4782F);

  /// chart.grey
  static const Color chartGrey = Color(0xFFC9956A);

  // Accent
  /// color.accent.cream
  static const Color accentCream = Color(0xFFFFF0E3);

  /// color.accent.light
  static const Color accentLight = Color(0xFFFFB27A);

  /// color.accent.peach
  static const Color accentPeach = Color(0xFFFFF3C7);

  /// color.accent.bg
  static const Color accentBg = Color(0x1AE6662A);

  // Semantic
  /// color.error
  static const Color error = Color(0xFFEF4444);

  /// color.error.bg
  static const Color errorBg = Color(0x1AEF4444);

  /// color.info
  static const Color info = Color(0xFF3B82F6);

  /// color.info.bg
  static const Color infoBg = Color(0x1A3B82F6);

  /// color.focus — keyboard/AT focus ring. Same blue as info; it is the only
  /// existing token meeting WCAG 2.4.11 (≥3:1) in BOTH themes (light 3.4:1,
  /// dark 4.4:1). Brand orange fails in light mode. See IGN-303.
  static const Color focus = Color(0xFF3B82F6);

  /// color.success
  static const Color success = Color(0xFF22C55E);

  /// color.success.bg
  static const Color successBg = Color(0x1A22C55E);

  // Neutral
  /// color.neutral.50
  static const Color neutral50 = Color(0xFFF5F5F5);

  /// color.neutral.100
  static const Color neutral100 = Color(0xFFF7F7F7);

  /// color.neutral.200
  static const Color neutral200 = Color(0xFFF0F0F0);

  /// color.neutral.400
  static const Color neutral400 = Color(0xFFE5E5E5);

  /// color.neutral.700
  static const Color neutral700 = Color(0xFF666666);

  /// color.neutral.900
  static const Color neutral900 = Color(0xFF202020);

  // Brand
  /// color.primary
  static const Color primary = Color(0xFFFF8C42);

  /// color.white
  static const Color white = Color(0xFFFFFFFF);

  // Text
  /// text.accent
  static const Color textAccent = Color(0xFFFF7525);

  /// text.primary
  static const Color textPrimary = Color(0xFF000000);

  /// text.secondary
  static const Color textSecondary = Color(0x80000000);

  /// text.tab
  static const Color textTab = Color(0xFF5E5E5E);

  /// text.tertiary
  static const Color textTertiary = Color(0xFF979797);

  // Derived (commonly used combinations)
  static const Color trackBackground = Color(0x29B2B9C4);
}
