import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'app.dart';
import 'core/utils/logger.dart';
import 'core/network/auth_manager.dart';
import 'core/services/analytics_service.dart';
import 'core/services/sync_service.dart';
import 'core/services/backup_service.dart';
import 'core/services/offline_cache_service.dart';
import 'shared/signals/region_signal.dart';
import 'shared/signals/preferences_signal.dart';void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage
  await Hive.initFlutter();

  // Initialize auth manager
  await AuthManager.instance.init();

  // Initialize sync service
  await SyncService.instance.init();

  // Initialize backup service
  await BackupService.instance.init();

  // Initialize offline cache service
  await OfflineCacheService.instance.init();

  // Initialize pending operations queue
  await PendingOperationsQueue.instance.init();

  // Initialize region from persisted storage
  await initRegion();

  // Initialize preferences from persisted storage
  await initPreferences();

  // Initialize PostHog analytics
  await AnalyticsService().initialize(
    apiKey: 'phc_F3fU6SVOPHPLggFYxLSgM9xdeKXdgr6O8Xet3SuY5tD',
    host: 'https://us.i.posthog.com',
  );

  logger.i('FIREla app starting...');

  runApp(const FirelaApp());
}
