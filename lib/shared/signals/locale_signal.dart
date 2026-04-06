import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';

/// Global locale signal
final localeSignal = signal<Locale>(const Locale('zh', 'CN'));

/// Set locale
void setLocale(Locale locale) {
  localeSignal.value = locale;
}

/// Supported locales
const supportedLocales = [
  Locale('en'),       // English
  Locale('zh', 'CN'), // Simplified Chinese
  Locale('zh', 'TW'), // Traditional Chinese
];
