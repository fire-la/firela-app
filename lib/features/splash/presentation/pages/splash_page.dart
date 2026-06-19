import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../../../../core/network/auth_manager.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/backup_service.dart';
import '../../../../core/services/offline_cache_service.dart';
import '../../../../core/services/sentry_service.dart';
import '../../../../core/services/sync_service.dart';
import '../../../../core/utils/logger.dart';
import '../../../../main.dart';
import '../../../../shared/signals/preferences_signal.dart';
import '../../../../shared/signals/region_signal.dart';

/// Splash page shown while app initializes.
///
/// Renders on the very first frame. Runs all heavy initialization
/// in the background, then signals [appInitializedSignal] to true
/// so the app transitions to the main interface.
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  static const _minDuration = Duration(milliseconds: 1200);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initialize();
    });
  }

  Future<void> _initialize() async {
    final stopwatch = Stopwatch()..start();

    try {
      // 1. Hive must init before any openBox
      await Hive.initFlutter();

      // 2. Essential services only (must complete before UI shows)
      await Future.wait([
        AuthManager.instance.init(),
        initRegion(),
        initPreferences(),
      ]);

      // 3. Non-essential services - init in background, don't block UI
      Future.microtask(() async {
        try {
          await Future.wait([
            SyncService.instance.init(),
            BackupService.instance.init(),
            OfflineCacheService.instance.init(),
            PendingOperationsQueue.instance.init(),
          ]);
          logger.i('[Splash] Background services initialized');
        } catch (e) {
          logger.w('[Splash] Background service init error: $e');
        }
      });

      // 4. Analytics & Sentry - fire and forget
      Future.microtask(() async {
        try {
          await Future.wait([
            AnalyticsService().initialize(),
            SentryService.instance.initialize(),
          ]);
        } catch (e) {
          logger.w('[Splash] Analytics/Sentry init error: $e');
        }
      });
    } catch (e) {
      logger.e('[Splash] Initialization error: $e');
    }

    stopwatch.stop();
    logger.i('[Splash] Core init took ${stopwatch.elapsedMilliseconds}ms');

    final elapsed = stopwatch.elapsed;
    if (elapsed < _minDuration) {
      await Future.delayed(_minDuration - elapsed);
    }

    if (mounted) {
      appInitializedSignal.value = true;
      logger.i('[Splash] App ready');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Use system background color for seamless transition from native splash
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const Center(
        child: _SplashLogo(),
      ),
    );
  }
}

/// Animated splash logo widget
class _SplashLogo extends StatefulWidget {
  const _SplashLogo({super.key});

  @override
  State<_SplashLogo> createState() => _SplashLogoState();
}

class _SplashLogoState extends State<_SplashLogo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scale;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _scale = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = colorScheme.brightness == Brightness.dark;

    return FadeTransition(
      opacity: _opacity,
      child: ScaleTransition(
        scale: _scale,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: isDark ? TokenColors.neutral900 : TokenColors.textPrimary,
                borderRadius: BorderRadius.circular(TokenSpacing.xxl),
              ),
              child: const Center(
                child: Icon(
                  Icons.local_fire_department,
                  size: 44,
                  color: TokenColors.textAccent,
                ),
              ),
            ),
            const SizedBox(height: TokenSpacing.xl),
            Text(
              'FIREla',
              style: TokenTypography.display(
                fontWeight: FontWeight.w700,
                color: colorScheme.onSurface,
              ).copyWith(letterSpacing: 1.2),
            ),
            const SizedBox(height: TokenSpacing.sm),
            Text(
              'Your FIRE Companion',
              style: TokenTypography.body(
                color: TokenColors.textTertiary,
              ).copyWith(letterSpacing: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
