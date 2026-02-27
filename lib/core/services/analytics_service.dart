import 'package:posthog_flutter/posthog_flutter.dart';

/// Centralized analytics service using PostHog
///
/// This service provides a unified interface for tracking events,
/// identifying users, and managing analytics across the app.
class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;
  AnalyticsService._internal();

  /// Initialize PostHog with API key and host
  ///
  /// Call this in main.dart before runApp()
  Future<void> initialize({
    required String apiKey,
    required String host,
  }) async {
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

  /// Reset the current user (e.g., on logout)
  Future<void> reset() async {
    await Posthog().reset();
  }
}
