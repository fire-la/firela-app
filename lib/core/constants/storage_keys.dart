/// Storage keys for local persistence
class StorageKeys {
  StorageKeys._();

  /// Authentication token
  static const String authToken = 'auth_token';

  /// Refresh token
  static const String refreshToken = 'refresh_token';

  /// User ID
  static const String userId = 'user_id';

  /// Selected locale
  static const String locale = 'locale';

  /// Theme mode (light/dark/system)
  static const String themeMode = 'theme_mode';

  /// Last sync timestamp
  static const String lastSync = 'last_sync';

  /// Last backup timestamp
  static const String lastBackup = 'last_backup';

  /// Cached accounts
  static const String cachedAccounts = 'cached_accounts';

  /// Custom display name
  static const String displayName = 'display_name';

  /// Account created timestamp
  static const String accountCreated = 'account_created';

  /// Preferences box name
  static const String preferencesBox = 'preferences';

  /// Auto sync enabled
  static const String autoSync = 'auto_sync';

  /// Show notifications
  static const String showNotifications = 'show_notifications';

  /// Decimal precision (0-4)
  static const String decimalPrecision = 'decimal_precision';

  /// Offline cache box name
  static const String offlineCacheBox = 'offline_cache';

  /// Pending operations box name
  static const String pendingOperationsBox = 'pending_operations';

  /// Cached pending transactions
  static const String cachedPendingTransactions = 'cached_pending_transactions';

  /// Cached net worth history
  static const String cachedNetWorthHistory = 'cached_net_worth_history';

  /// Cached FIRE goal
  static const String cachedFireGoal = 'cached_fire_goal';
}
