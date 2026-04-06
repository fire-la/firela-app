import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'analytics_events.dart';

/// Centralized analytics service (no-op implementation)
///
/// This service provides a unified interface for tracking events.
/// Currently a no-op implementation - no data is collected.
/// Ready for future analytics integration (e.g., Sentry, custom analytics).
class AnalyticsService {
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;
  AnalyticsService._internal();

  String? _appVersion;
  static PackageInfo? _cachedPackageInfo;

  /// Get cached PackageInfo (shared across services to avoid duplicate calls)
  static Future<PackageInfo> get packageInfo async {
    return _cachedPackageInfo ??= await PackageInfo.fromPlatform();
  }

  /// Initialize analytics service
  ///
  /// Call this in main.dart before runApp()
  Future<void> initialize({
    String? apiKey,
    String? host,
  }) async {
    // Get app version for future use
    final packageInfo = await AnalyticsService.packageInfo;
    _appVersion = packageInfo.version;

    if (kDebugMode) {
      debugPrint('AnalyticsService initialized (no-op mode)');
    }
  }

  /// Capture an event with optional properties (no-op)
  Future<void> capture(
    String eventName, {
    Map<String, Object>? properties,
  }) async {
    // No-op: no data collection
    if (kDebugMode) {
      debugPrint('Analytics: $eventName ${properties ?? {}}');
    }
  }

  /// Identify a user with optional user properties (no-op)
  Future<void> identify({
    required String userId,
    Map<String, Object>? userProperties,
  }) async {
    // No-op: no data collection
    if (kDebugMode) {
      debugPrint('Analytics identify: $userId');
    }
  }

  /// Identify user after login (no-op)
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

  /// Set user properties without changing identity (no-op)
  Future<void> setUserProperties(Map<String, Object> properties) async {
    // No-op: no data collection
  }

  /// Reset the current user (e.g., on logout) (no-op)
  Future<void> reset() async {
    // No-op: no data collection
  }

  /// Track bill import event (no-op)
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

  /// Track OCR event (no-op)
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

  /// Track review center event (no-op)
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

  /// Track expense event (no-op)
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

  /// Track categorization event (no-op)
  Future<void> trackCategorization({
    required String eventType,
    int? itemCount,
    int? editedCount,
    double? avgConfidence,
    String? source,
  }) async {
    await capture(
      eventType,
      properties: {
        if (itemCount != null) AnalyticsProps.itemCount: itemCount,
        if (editedCount != null) AnalyticsProps.editedCount: editedCount,
        if (avgConfidence != null) AnalyticsProps.avgConfidence: avgConfidence,
        if (source != null) AnalyticsProps.categorizationSource: source,
      },
    );
  }

  /// Get platform name
  String get _platform => defaultTargetPlatform.name;
}
