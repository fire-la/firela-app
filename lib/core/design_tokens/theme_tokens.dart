import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Theme-aware color tokens.
///
/// Use `ThemeTokens.of(context)` instead of `TokenColors.*` for colors
/// that need to adapt between light and dark mode.
class ThemeTokens {
  final Color bgPage;
  final Color bgCard;
  final Color bgNav;
  final Color bgBar;
  final Color borderCard;
  final Color borderTag;
  final Color accentCream;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textTab;
  final Color textAccent;
  final Color neutral200;
  final Color neutral700;
  final Color shadow;

  const ThemeTokens._({
    required this.bgPage,
    required this.bgCard,
    required this.bgNav,
    required this.bgBar,
    required this.borderCard,
    required this.borderTag,
    required this.accentCream,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textTab,
    required this.textAccent,
    required this.neutral200,
    required this.neutral700,
    required this.shadow,
  });

  /// Light mode tokens
  static const light = ThemeTokens._(
    bgPage: TokenColors.bgPage,
    bgCard: TokenColors.bgCard,
    bgNav: TokenColors.bgNav,
    bgBar: TokenColors.bgBar,
    borderCard: TokenColors.borderCard,
    borderTag: TokenColors.borderTag,
    accentCream: TokenColors.accentCream,
    textPrimary: TokenColors.textPrimary,
    textSecondary: TokenColors.textSecondary,
    textTertiary: TokenColors.textTertiary,
    textTab: TokenColors.textTab,
    textAccent: TokenColors.textAccent,
    neutral200: TokenColors.neutral200,
    neutral700: TokenColors.neutral700,
    shadow: Color(0x0D000000),
  );

  /// Dark mode tokens
  static const dark = ThemeTokens._(
    bgPage: Color(0xFF202020),
    bgCard: Color(0xFF2A2A2A),
    bgNav: Color(0x40FFFFFF),
    bgBar: Color(0xFF2D2D1A),
    borderCard: Color(0xFF3A3A3A),
    borderTag: Color(0xFF4A4A4A),
    accentCream: Color(0xFF3D2E1E),
    textPrimary: Color(0xFFF5F5F5),
    textSecondary: Color(0x80FFFFFF),
    textTertiary: Color(0xFF979797),
    textTab: Color(0xFFB0B0B0),
    textAccent: Color(0xFFFF7525),
    neutral200: Color(0xFF333333),
    neutral700: Color(0xFF888888),
    shadow: Color(0x1A000000),
  );

  /// Resolve tokens based on the current theme brightness.
  static ThemeTokens of(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark ? dark : light;
  }
}
