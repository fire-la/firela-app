import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:posthog_flutter/posthog_flutter.dart';

/// Centralized analytics service using PostHog
///
/// This service provides a unified interface for tracking events,
/// identifying users, and managing analytics across the app.
class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;
  AnalyticsService._internal();

  String? _appVersion;

  /// Initialize PostHog with API key and host
  ///
  /// Call this in main.dart before runApp()
  Future<void> initialize({
    required String apiKey,
    required String host,
  }) async {
    // Get app version
    final packageInfo = await PackageInfo.fromPlatform();
    _appVersion = packageInfo.version;

    final config = PostHogConfig(apiKey);
    config.host = host;
    config.captureApplicationLifecycleEvents = true;
    await Posthog().setup(config);
  }

  /// Capture an event with optional properties
  Future<void> capture(
    String eventName, {
    Map<String, Object>? properties,
  }) async {
    await Posthog().capture(
      eventName: eventName,
      properties: properties,
    );
  }

  /// Identify a user with optional user properties
  Future<void> identify({
    required String userId,
    Map<String, Object>? userProperties,
  }) async {
    await Posthog().identify(
      userId: userId,
      userProperties: userProperties,
    );
  }

  /// Identify user after login
  ///
  /// Call this when user successfully authenticates
  Future<void> identifyUser({
    required String userId,
    String? email,
    String? name,
  }) async {
    await identify(
      userId: userId,
      userProperties: {
        if (email != null) 'email': email,
        if (name != null) 'name': name,
        if (_appVersion != null) 'app_version': _appVersion!,
        'platform': _platform,
      },
    );
  }

  /// Set user properties without changing identity
  Future<void> setUserProperties(Map<String, Object> properties) async {
    await capture(
      '\$user_properties_set',
      properties: properties,
    );
  }

  /// Reset the current user (e.g., on logout)
  Future<void> reset() async {
    await Posthog().reset();
  }

  /// Get platform name
  String get _platform => defaultTargetPlatform.name;
}
