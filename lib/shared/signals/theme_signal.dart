import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';

/// Global theme mode signal
final themeModeSignal = signal<ThemeMode>(ThemeMode.system);

/// Toggle between light and dark theme
void toggleTheme() {
  themeModeSignal.value = themeModeSignal.value == ThemeMode.light
      ? ThemeMode.dark
      : ThemeMode.light;
}

/// Set theme mode
void setThemeMode(ThemeMode mode) {
  themeModeSignal.value = mode;
}
