import 'package:flutter/foundation.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:package_info_plus/package_info_plus.dart';
import '../utils/logger.dart';

/// Centralized Sentry error monitoring service
///
/// Provides error tracking, crash reporting, and user feedback submission.
/// Respects user privacy - DSN can be configured or disabled.
class SentryService {
  static final SentryService _instance = SentryService._internal();
  factory SentryService() => _instance;
  SentryService._internal();

  static SentryService get instance => _instance;

  String? _appVersion;
  String? _buildNumber;
  bool _isEnabled = false;

  /// Default Sentry DSN for FIREla
  /// Users can override this with their own DSN or leave empty to disable
  static const String defaultDsn = '';

  /// Initialize Sentry error monitoring
  ///
  /// Pass empty dsn to disable error reporting
  Future<void> initialize({
    String? dsn,
    String? environment,
  }) async {
    final sentryDsn = dsn ?? defaultDsn;

    if (sentryDsn.isEmpty) {
      logger.i('[SentryService] DSN not configured, error reporting disabled');
      _isEnabled = false;
      return;
    }

    try {
      final packageInfo = await PackageInfo.fromPlatform();
      _appVersion = packageInfo.version;
      _buildNumber = packageInfo.buildNumber;

      await SentryFlutter.init(
        (options) {
          options.dsn = sentryDsn;
          options.environment = environment ?? (kDebugMode ? 'development' : 'production');
          options.release = 'firela@$_appVersion+$_buildNumber';

          // Set sample rates based on environment
          options.tracesSampleRate = kDebugMode ? 1.0 : 0.2;
          options.profilesSampleRate = kDebugMode ? 1.0 : 0.1;

          // Configure before-send callback to filter sensitive data
          options.beforeSend = _beforeSend;

          // Debug mode
          options.debug = kDebugMode;
        },
      );

      _isEnabled = true;
      logger.i('[SentryService] Initialized successfully (env: $environment)');
    } catch (e) {
      logger.e('[SentryService] Failed to initialize: $e');
      _isEnabled = false;
    }
  }

  /// Filter sensitive data before sending to Sentry
  Future<SentryEvent?> _beforeSend(SentryEvent event, Hint hint) {
    // Remove potentially sensitive data from breadcrumbs
    final breadcrumbs = event.breadcrumbs;
    if (breadcrumbs != null) {
      for (final breadcrumb in breadcrumbs) {
        // Redact potential tokens in URLs
        if (breadcrumb.data != null) {
          final data = Map<String, dynamic>.from(breadcrumb.data!);
          data.forEach((key, value) {
            if (key.toLowerCase().contains('token') ||
                key.toLowerCase().contains('password') ||
                key.toLowerCase().contains('secret')) {
              data[key] = '[REDACTED]';
            }
          });
        }
      }
    }

    return Future.value(event);
  }

  /// Identify user for error tracking
  ///
  /// Call after user login to associate errors with user
  void identifyUser({
    String? userId,
    String? email,
    String? name,
  }) {
    if (!_isEnabled) return;

    Sentry.configureScope((scope) {
      if (userId != null) {
        scope.setUser(SentryUser(
          id: userId,
          email: email,
          username: name,
        ));
      }
      scope.setTag('app_version', _appVersion ?? 'unknown');
    });
  }

  /// Clear user identity (call on logout)
  void clearUser() {
    if (!_isEnabled) return;
    Sentry.configureScope((scope) {
      scope.setUser(null);
    });
  }

  /// Capture an exception
  Future<void> captureException(
    dynamic exception, {
    StackTrace? stackTrace,
    String? hint,
    Map<String, dynamic>? extra,
  }) async {
    if (!_isEnabled) {
      logger.e('[SentryService] Exception (not captured): $exception');
      return;
    }

    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
      withScope: (scope) {
        if (hint != null) {
          scope.fingerprint = [hint];
        }
        if (extra != null) {
          extra.forEach((key, value) {
            scope.setContexts(key, value);
          });
        }
      },
    );
  }

  /// Capture a message
  Future<void> captureMessage(
    String message, {
    SentryLevel level = SentryLevel.info,
    Map<String, dynamic>? extra,
  }) async {
    if (!_isEnabled) return;

    await Sentry.captureMessage(
      message,
      level: level,
      withScope: (scope) {
        if (extra != null) {
          extra.forEach((key, value) {
            scope.setContexts(key, value);
          });
        }
      },
    );
  }

  /// Add breadcrumb for tracking user actions
  void addBreadcrumb({
    required String message,
    String? category,
    String? type,
    Map<String, dynamic>? data,
    SentryLevel? level,
  }) {
    if (!_isEnabled) return;

    Sentry.addBreadcrumb(Breadcrumb(
      message: message,
      category: category,
      type: type,
      data: data,
      level: level,
    ));
  }

  /// Check if Sentry is enabled
  bool get isEnabled => _isEnabled;
}

/// Global error handler wrapper
///
/// Use this to wrap async operations that might fail
Future<T> withErrorCapture<T>(
  Future<T> Function() operation, {
  String? hint,
  Map<String, dynamic>? extra,
}) async {
  try {
    return await operation();
  } catch (e, stackTrace) {
    await SentryService.instance.captureException(
      e,
      stackTrace: stackTrace,
      hint: hint,
      extra: extra,
    );
    rethrow;
  }
}
