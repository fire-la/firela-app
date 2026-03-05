import 'dart:convert';
import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:file_picker/file_picker.dart';
import '../constants/storage_keys.dart';
import '../utils/logger.dart';

/// Backup service singleton for data backup and restore
class BackupService {
  BackupService._();
  static final BackupService instance = BackupService._();

  Box? _box;
  static const String _backupFileName = 'firela_backup';

  /// Initialize the backup service
  Future<void> init() async {
    _box = await Hive.openBox('backup');
    logger.i('[BackupService] Initialized');
  }

  /// Get last backup time from storage
  DateTime? getLastBackupTime() {
    final timestamp = _box?.get(StorageKeys.lastBackup) as int?;
    if (timestamp == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(timestamp);
  }

  /// Set last backup time in storage
  Future<void> _setLastBackupTime(DateTime time) async {
    await _box?.put(StorageKeys.lastBackup, time.millisecondsSinceEpoch);
    logger.i('[BackupService] Last backup time saved: $time');
  }

  /// Create backup of all local data
  /// Returns the file path if successful, null otherwise
  Future<String?> createBackup() async {
    try {
      logger.i('[BackupService] Creating backup...');

      final backupData = <String, dynamic>{
        'version': '1.0.0',
        'createdAt': DateTime.now().toIso8601String(),
        'data': await _collectAllData(),
      };

      final jsonString = const JsonEncoder.withIndent('  ').convert(backupData);
      final timestamp = DateTime.now().toIso8601String().replaceAll(':', '-').replaceAll('.', '-');
      final fileName = '${_backupFileName}_$timestamp.json';

      // Get the app's document directory
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$fileName');

      await file.writeAsString(jsonString);

      // Update last backup time
      await _setLastBackupTime(DateTime.now());

      logger.i('[BackupService] Backup created: ${file.path}');
      return file.path;
    } catch (e) {
      logger.e('[BackupService] Failed to create backup: $e');
      return null;
    }
  }

  /// Share backup file using system share sheet
  Future<bool> shareBackup() async {
    final filePath = await createBackup();
    if (filePath == null) return false;

    try {
      final file = File(filePath);
      await Share.shareXFiles(
        [XFile(file.path)],
        subject: 'FIREla Data Backup',
        text: 'Your FIREla data backup file',
      );
      return true;
    } catch (e) {
      logger.e('[BackupService] Failed to share backup: $e');
      return false;
    }
  }

  /// Collect all local data from Hive boxes
  Future<Map<String, dynamic>> _collectAllData() async {
    final data = <String, dynamic>{};

    try {
      // Collect auth data
      final authBox = await Hive.openBox('auth');
      final authData = <String, dynamic>{};
      for (final key in authBox.keys) {
        final value = authBox.get(key);
        if (value != null) {
          authData[key.toString()] = value;
        }
      }
      data['auth'] = authData;

      // Collect preferences data
      final prefBox = await Hive.openBox('preferences');
      final prefData = <String, dynamic>{};
      for (final key in prefBox.keys) {
        final value = prefBox.get(key);
        if (value != null) {
          prefData[key.toString()] = value;
        }
      }
      data['preferences'] = prefData;

      // Collect settings data
      final settingsBox = await Hive.openBox('settings');
      final settingsData = <String, dynamic>{};
      for (final key in settingsBox.keys) {
        final value = settingsBox.get(key);
        if (value != null) {
          settingsData[key.toString()] = value;
        }
      }
      data['settings'] = settingsData;

      // Collect sync data
      final syncBox = await Hive.openBox('sync');
      final syncData = <String, dynamic>{};
      for (final key in syncBox.keys) {
        final value = syncBox.get(key);
        if (value != null) {
          syncData[key.toString()] = value;
        }
      }
      data['sync'] = syncData;

      // Note: In production, you would also collect transaction data,
      // account data, etc. from the server or local cache.

    } catch (e) {
      logger.e('[BackupService] Error collecting data: $e');
    }

    return data;
  }

  /// Validate backup file
  /// Returns true if valid, false otherwise
  Future<bool> validateBackup(String filePath) async {
    try {
      final file = File(filePath);
      if (!await file.exists()) {
        logger.w('[BackupService] Backup file does not exist: $filePath');
        return false;
      }

      final content = await file.readAsString();
      final jsonData = jsonDecode(content) as Map<String, dynamic>;

      // Check required fields
      if (!jsonData.containsKey('version')) {
        logger.w('[BackupService] Invalid backup: missing version');
        return false;
      }

      if (!jsonData.containsKey('data')) {
        logger.w('[BackupService] Invalid backup: missing data');
        return false;
      }

      logger.i('[BackupService] Backup file is valid');
      return true;
    } catch (e) {
      logger.e('[BackupService] Failed to validate backup: $e');
      return false;
    }
  }

  /// Pick a backup file using file picker
  /// Returns the file path if successful, null otherwise
  Future<String?> pickBackupFile() async {
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['json'],
        allowMultiple: false,
      );

      if (result == null || result.files.isEmpty) {
        logger.i('[BackupService] No file selected');
        return null;
      }

      final file = result.files.first;
      if (file.path == null) {
        logger.w('[BackupService] Could not get file path');
        return null;
      }

      return file.path;
    } catch (e) {
      logger.e('[BackupService] Failed to pick backup file: $e');
      return null;
    }
  }

  /// Restore data from backup file
  /// Returns true if successful, false otherwise
  Future<bool> restoreBackup(String filePath) async {
    try {
      // Validate first
      if (!await validateBackup(filePath)) {
        logger.e('[BackupService] Cannot restore: invalid backup file');
        return false;
      }

      logger.i('[BackupService] Restoring backup from: $filePath');

      final file = File(filePath);
      final content = await file.readAsString();
      final jsonData = jsonDecode(content) as Map<String, dynamic>;
      final data = jsonData['data'] as Map<String, dynamic>;

      // Restore auth data
      if (data.containsKey('auth')) {
        final authBox = await Hive.openBox('auth');
        final authData = data['auth'] as Map<String, dynamic>;
        await authBox.clear();
        for (final entry in authData.entries) {
          await authBox.put(entry.key, entry.value);
        }
      }

      // Restore preferences data
      if (data.containsKey('preferences')) {
        final prefBox = await Hive.openBox('preferences');
        final prefData = data['preferences'] as Map<String, dynamic>;
        await prefBox.clear();
        for (final entry in prefData.entries) {
          await prefBox.put(entry.key, entry.value);
        }
      }

      // Restore settings data
      if (data.containsKey('settings')) {
        final settingsBox = await Hive.openBox('settings');
        final settingsData = data['settings'] as Map<String, dynamic>;
        await settingsBox.clear();
        for (final entry in settingsData.entries) {
          await settingsBox.put(entry.key, entry.value);
        }
      }

      // Restore sync data
      if (data.containsKey('sync')) {
        final syncBox = await Hive.openBox('sync');
        final syncData = data['sync'] as Map<String, dynamic>;
        await syncBox.clear();
        for (final entry in syncData.entries) {
          await syncBox.put(entry.key, entry.value);
        }
      }

      logger.i('[BackupService] Backup restored successfully');
      return true;
    } catch (e) {
      logger.e('[BackupService] Failed to restore backup: $e');
      return false;
    }
  }

  /// Get relative time string for last backup
  String getLastBackupRelativeString() {
    final lastBackup = getLastBackupTime();
    if (lastBackup == null) {
      return 'never';
    }

    final now = DateTime.now();
    final difference = now.difference(lastBackup);

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
      return '${lastBackup.year}-${lastBackup.month.toString().padLeft(2, '0')}-${lastBackup.day.toString().padLeft(2, '0')}';
    }
  }

  /// Clear backup data (used on logout)
  Future<void> clearBackupData() async {
    await _box?.delete(StorageKeys.lastBackup);
    logger.i('[BackupService] Backup data cleared');
  }
}
