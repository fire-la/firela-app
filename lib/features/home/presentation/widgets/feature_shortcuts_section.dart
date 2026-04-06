import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:firela_app/generated/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/router/route_names.dart';
import '../../../review_center/presentation/signals/review_center_signal.dart';

/// Feature shortcuts section with navigation cards to major features
class FeatureShortcutsSection extends HookWidget {
  const FeatureShortcutsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section header
        Text(
          l10n.homeShortcuts,
          style: theme.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 12),

        // Grid of shortcut cards (2x2)
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 1.5,
          children: [
            _ShortcutCard(
              icon: Icons.account_balance_wallet_outlined,
              label: l10n.homeAssets,
              onTap: () => context.go(RouteNames.accounts),
              gradientColors: const [
                Color(0xFF4CAF50),
                Color(0xFF2E7D32),
              ],
            ),
            Watch((context) {
              final pendingCount = pendingCountByLevelSignal.value['total'] ?? 0;
              return _ShortcutCard(
                icon: Icons.fact_check_outlined,
                label: l10n.homeReviewCenter,
                badge: pendingCount > 0 ? '$pendingCount' : null,
                onTap: () => context.push(RouteNames.reviewCenter),
                gradientColors: const [
                  Color(0xFFFF9800),
                  Color(0xFFF57C00),
                ],
              );
            }),
            _ShortcutCard(
              icon: Icons.local_fire_department_outlined,
              label: l10n.homeFireJourney,
              onTap: () {
                // Navigate to FIRE journey (first tab in main page)
                context.go(RouteNames.home);
              },
              gradientColors: const [
                Color(0xFFE91E63),
                Color(0xFFC2185B),
              ],
            ),
            _ShortcutCard(
              icon: Icons.settings_outlined,
              label: l10n.homeSettings,
              onTap: () => context.go(RouteNames.home),
              gradientColors: const [
                Color(0xFF607D8B),
                Color(0xFF455A64),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

/// Shortcut card widget with gradient background
class _ShortcutCard extends StatelessWidget {
  const _ShortcutCard({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.gradientColors,
    this.badge,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final List<Color> gradientColors;
  final String? badge;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradientColors,
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: gradientColors[1].withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    size: 28,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    label,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            // Badge for pending count
            if (badge != null)
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.9),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    badge!,
                    style: TextStyle(
                      color: gradientColors[1],
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            // Arrow indicator
            Positioned(
              right: 12,
              bottom: 12,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
