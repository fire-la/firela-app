import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:posthog_flutter/posthog_flutter.dart';
import 'analytics_events.dart';

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

    // Core features
    config.captureApplicationLifecycleEvents = true;  // Auto-track app open/close
    config.debug = kDebugMode;  // Enable debug logs in debug mode

    // Session Replay - records user sessions for playback
    config.sessionReplay = true;
    config.sessionReplayConfig.maskAllTexts = true;  // Privacy: mask all texts
    config.sessionReplayConfig.maskAllImages = false;
    config.sessionReplayConfig.throttleDelay = const Duration(milliseconds: 500);

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

  /// Track bill import event
  Future<void> trackBillImport({
    required String eventType,
    String? fileType,
    int? fileSize,
    int? recordCount,
    bool? success,
    String? errorMessage,
  }) async {
    await capture(
      eventType,
      properties: {
        if (fileType != null) AnalyticsProps.fileType: fileType,
        if (fileSize != null) AnalyticsProps.fileSize: fileSize,
        if (recordCount != null) AnalyticsProps.recordCount: recordCount,
        if (success != null) AnalyticsProps.success: success,
        if (errorMessage != null) AnalyticsProps.errorMessage: errorMessage,
      },
    );
  }

  /// Track OCR event
  Future<void> trackOcr({
    required String eventType,
    String? imageSource,
    double? confidence,
    String? merchant,
    bool? success,
    String? errorMessage,
  }) async {
    await capture(
      eventType,
      properties: {
        if (imageSource != null) AnalyticsProps.imageSource: imageSource,
        if (confidence != null) AnalyticsProps.confidence: confidence,
        if (merchant != null) AnalyticsProps.merchant: merchant,
        if (success != null) AnalyticsProps.success: success,
        if (errorMessage != null) AnalyticsProps.errorMessage: errorMessage,
      },
    );
  }

  /// Track review center event
  Future<void> trackReviewCenter({
    required String eventType,
    String? tabName,
    String? confidenceLevel,
    String? transactionId,
  }) async {
    await capture(
      eventType,
      properties: {
        if (tabName != null) AnalyticsProps.tabName: tabName,
        if (confidenceLevel != null)
          AnalyticsProps.confidenceLevel: confidenceLevel,
        if (transactionId != null) AnalyticsProps.transactionId: transactionId,
      },
    );
  }

  /// Track expense event
  Future<void> trackExpense({
    required String eventType,
    double? amount,
    String? currency,
    String? category,
    bool? hasPhoto,
  }) async {
    await capture(
      eventType,
      properties: {
        if (amount != null) AnalyticsProps.amount: amount,
        if (currency != null) AnalyticsProps.currency: currency,
        if (category != null) AnalyticsProps.category: category,
        if (hasPhoto != null) AnalyticsProps.hasPhoto: hasPhoto,
      },
    );
  }

  /// Get platform name
  String get _platform => defaultTargetPlatform.name;
}
