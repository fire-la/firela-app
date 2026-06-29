import 'package:flutter/material.dart';
import '../design_tokens/design_tokens.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: TokenColors.bgPage,
      focusColor: TokenColors.focus,
      colorScheme: const ColorScheme.light(
        primary: TokenColors.textAccent,
        onPrimary: TokenColors.white,
        secondary: TokenColors.textSecondary,
        surface: TokenColors.bgPage,
        onSurface: TokenColors.textPrimary,
        surfaceContainerHighest: TokenColors.bgCard,
        outline: TokenColors.textTertiary,
        error: TokenColors.error,
        onError: TokenColors.white,
      ),
      textTheme: TokenTypography.textTheme,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor: TokenColors.bgPage,
        foregroundColor: TokenColors.textPrimary,
      ),
      cardTheme: const CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: TokenColors.bgCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(TokenRadius.lg)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: TokenColors.textAccent,
          foregroundColor: TokenColors.white,
          minimumSize: const Size(double.infinity, 50),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TokenRadius.pill),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: TokenColors.bgCard,
        selectedItemColor: TokenColors.textPrimary,
        unselectedItemColor: TokenColors.textTertiary,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: TokenColors.neutral900,
      focusColor: TokenColors.focus,
      colorScheme: const ColorScheme.dark(
        primary: TokenColors.textAccent,
        onPrimary: TokenColors.white,
        secondary: TokenColors.neutral700,
        surface: TokenColors.neutral900,
        onSurface: TokenColors.white,
        surfaceContainerHighest: Color(0xFF2A2A2A),
        outline: TokenColors.neutral700,
        error: TokenColors.error,
        onError: TokenColors.white,
      ),
      textTheme: TokenTypography.textTheme,
      appBarTheme: const AppBarTheme(
        centerTitle: false,
        elevation: 0,
        backgroundColor: TokenColors.neutral900,
        foregroundColor: TokenColors.white,
      ),
      cardTheme: const CardThemeData(
        elevation: 0,
        margin: EdgeInsets.zero,
        color: Color(0xFF2A2A2A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(TokenRadius.lg)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: TokenColors.textAccent,
          foregroundColor: TokenColors.white,
          minimumSize: const Size(double.infinity, 50),
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(TokenRadius.pill),
          ),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF2A2A2A),
        selectedItemColor: TokenColors.white,
        unselectedItemColor: TokenColors.neutral700,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
