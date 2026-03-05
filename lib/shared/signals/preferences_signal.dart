import 'package:signals_flutter/signals_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../core/constants/storage_keys.dart';
import '../../core/utils/logger.dart';

/// Preferences data model
class Preferences {
  final bool autoSync;
  final bool showNotifications;
  final int decimalPrecision;

  const Preferences({
    this.autoSync = true,
    this.showNotifications = true,
    this.decimalPrecision = 2,
  });

  Preferences copyWith({
    bool? autoSync,
    bool? showNotifications,
    int? decimalPrecision,
  }) {
    return Preferences(
      autoSync: autoSync ?? this.autoSync,
      showNotifications: showNotifications ?? this.showNotifications,
      decimalPrecision: decimalPrecision ?? this.decimalPrecision,
    );
  }

  Map<String, dynamic> toJson() => {
    'autoSync': autoSync,
    'showNotifications': showNotifications,
    'decimalPrecision': decimalPrecision,
  };

  factory Preferences.fromJson(Map<String, dynamic> json) {
    return Preferences(
      autoSync: json['autoSync'] as bool? ?? true,
      showNotifications: json['showNotifications'] as bool? ?? true,
      decimalPrecision: json['decimalPrecision'] as int? ?? 2,
    );
  }
}

/// Hive box name for preferences storage
const String _preferencesBoxName = 'preferences';

/// Global preferences signal with default values
final preferencesSignal = signal<Preferences>(const Preferences());

/// Initialize preferences from persisted storage
Future<void> initPreferences() async {
  try {
    final box = await Hive.openBox(_preferencesBoxName);

    final autoSync = box.get(StorageKeys.autoSync, defaultValue: true) as bool;
    final showNotifications = box.get(StorageKeys.showNotifications, defaultValue: true) as bool;
    final decimalPrecision = box.get(StorageKeys.decimalPrecision, defaultValue: 2) as int;

    preferencesSignal.value = Preferences(
      autoSync: autoSync,
      showNotifications: showNotifications,
      decimalPrecision: decimalPrecision,
    );

    logger.i('[Preferences] Loaded preferences: ${preferencesSignal.value.toJson()}');
  } catch (e) {
    logger.e('[Preferences] Failed to init preferences: $e');
    // Ensure box is open even on error
    try {
      await Hive.openBox(_preferencesBoxName);
    } catch (_) {}
  }
}

/// Set auto sync preference
Future<void> setAutoSync(bool value) async {
  preferencesSignal.value = preferencesSignal.value.copyWith(autoSync: value);

  try {
    final box = await Hive.openBox(_preferencesBoxName);
    await box.put(StorageKeys.autoSync, value);
    logger.i('[Preferences] Saved autoSync: $value');
  } catch (e) {
    logger.e('[Preferences] Failed to save autoSync: $e');
  }
}

/// Set show notifications preference
Future<void> setShowNotifications(bool value) async {
  preferencesSignal.value = preferencesSignal.value.copyWith(showNotifications: value);

  try {
    final box = await Hive.openBox(_preferencesBoxName);
    await box.put(StorageKeys.showNotifications, value);
    logger.i('[Preferences] Saved showNotifications: $value');
  } catch (e) {
    logger.e('[Preferences] Failed to save showNotifications: $e');
  }
}

/// Set decimal precision preference
Future<void> setDecimalPrecision(int value) async {
  // Clamp value between 0 and 4
  final clampedValue = value.clamp(0, 4);
  preferencesSignal.value = preferencesSignal.value.copyWith(decimalPrecision: clampedValue);

  try {
    final box = await Hive.openBox(_preferencesBoxName);
    await box.put(StorageKeys.decimalPrecision, clampedValue);
    logger.i('[Preferences] Saved decimalPrecision: $clampedValue');
  } catch (e) {
    logger.e('[Preferences] Failed to save decimalPrecision: $e');
  }
}

/// Get decimal precision value
int get decimalPrecision => preferencesSignal.value.decimalPrecision;

/// Format a number with the current decimal precision
String formatWithPrecision(num value) {
  return value.toStringAsFixed(decimalPrecision);
}
