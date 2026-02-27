import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'core/utils/logger.dart';
import 'core/network/auth_manager.dart';
import 'core/services/analytics_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage
  await Hive.initFlutter();

  // Initialize auth manager
  await AuthManager.instance.init();

  // Initialize PostHog analytics
  await AnalyticsService().initialize(
    apiKey: const String.fromEnvironment('POSTHOG_API_KEY', defaultValue: ''),
    host: const String.fromEnvironment(
      'POSTHOG_HOST',
      defaultValue: 'https://us.i.posthog.com',
    ),
  );

  logger.i('FIREla app starting...');

  runApp(const FirelaApp());
}
