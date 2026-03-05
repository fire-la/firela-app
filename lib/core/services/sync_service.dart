import 'dart:async';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../constants/storage_keys.dart';
import '../network/auth_manager.dart';
import '../network/api_client.dart';
import '../utils/logger.dart';

/// Sync status enum
enum SyncStatus {
  idle,
  syncing,
  success,
  error,
}

/// Sync service singleton for data synchronization with server
class SyncService {
  SyncService._();
  static final SyncService instance = SyncService._();

  Box? _box;
  final _syncStatusSignal = signal<SyncStatus>(SyncStatus.idle);
  String? _lastError;

  /// Signal for sync status (can be watched in UI)
  Signal<SyncStatus> get syncStatus => _syncStatusSignal;

  /// Get last error message
  String? get lastError => _lastError;

  /// Initialize the sync service
  Future<void> init() async {
    _box = await Hive.openBox('sync');
    _syncStatusSignal.value = SyncStatus.idle;
    logger.i('[SyncService] Initialized');
  }

  /// Get last sync time from storage
  DateTime? getLastSyncTime() {
    final timestamp = _box?.get(StorageKeys.lastSync) as int?;
    if (timestamp == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  /// Set last sync time in storage
  Future<void> setLastSyncTime(DateTime time) async {
    await _box?.put(StorageKeys.lastSync, time.millisecondsSinceEpoch);
    logger.i('[SyncService] Last sync time saved: $time');
  }

  /// Get relative time string for last sync
  String getLastSyncRelativeString() {
    final lastSync = getLastSyncTime();
    if (lastSync == null) {
      return 'never';
    }

    final now = DateTime.now();
    final difference = now.difference(lastSync);

    if (difference.inSeconds < 60) {
      return 'just now';
    } else if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return '$minutes ${minutes == 1 ? 'minute' : 'minutes'} ago';
    } else if (difference.inHours < 24) {
      final hours = difference.inHours;
      return '$hours ${hours == 1 ? 'hour' : 'hours'} ago';
    } else if (difference.inDays < 7) {
      final days = difference.inDays;
      return '$days ${days == 1 ? 'day' : 'days'} ago';
    } else {
      return '${lastSync.year}-${lastSync.month.toString().padLeft(2, '0')}-${lastSync.day.toString().padLeft(2, '0')}';
    }
  }

  /// Trigger full sync (transactions, accounts, goals, milestones)
  Future<bool> syncAll() async {
    // Check if logged in
    if (!AuthManager.instance.isLoggedIn) {
      _lastError = 'Not logged in';
      _syncStatusSignal.value = SyncStatus.error;
      logger.w('[SyncService] Cannot sync: not logged in');
      return false;
    }

    // Prevent concurrent syncs
    if (_syncStatusSignal.value == SyncStatus.syncing) {
      logger.i('[SyncService] Sync already in progress');
      return false;
    }

    _syncStatusSignal.value = SyncStatus.syncing;
    _lastError = null;
    logger.i('[SyncService] Starting full sync...');

    try {
      final client = ApiClient.instance;

      // Sync transactions - fetch latest from server
      // In production, this would be a more comprehensive sync
      await client.get('/bean/transactions', queryParams: {'limit': '100'});

      // Sync accounts/balances
      await client.get('/bean/balances');

      // Sync FIRE goal
      await client.get('/bean/fire-goal');

      // Update last sync time
      final now = DateTime.now();
      await setLastSyncTime(now);

      _syncStatusSignal.value = SyncStatus.success;
      logger.i('[SyncService] Sync completed successfully at $now');
      return true;
    } catch (e) {
      _lastError = e.toString();
      _syncStatusSignal.value = SyncStatus.error;
      logger.e('[SyncService] Sync failed: $e');
      return false;
    }
  }

  /// Clear sync data (used on logout)
  Future<void> clearSyncData() async {
    await _box?.delete(StorageKeys.lastSync);
    _syncStatusSignal.value = SyncStatus.idle;
    _lastError = null;
    logger.i('[SyncService] Sync data cleared');
  }
}
