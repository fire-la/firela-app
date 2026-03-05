import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'core/theme/app_theme.dart';
import 'core/router/app_router.dart';
import 'shared/signals/theme_signal.dart';
import 'shared/signals/locale_signal.dart';

/// Root application widget
class FirelaApp extends StatelessWidget {
  const FirelaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Watch((context) {
      final themeMode = themeModeSignal.value;
      final locale = localeSignal.value;

    return MaterialApp.router(
        // App configuration
        title: 'FIREla',
        debugShowCheckedModeBanner: false,

        // Theme
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeMode,

        // Internationalization
        locale: locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: supportedLocales,

        // Routing
        routerConfig: appRouter,
      );
    });
  }
}
