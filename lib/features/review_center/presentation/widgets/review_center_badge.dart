import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:signals_flutter/signals_flutter.dart';
import '../../../../core/design_tokens/design_tokens.dart';
import '../signals/review_center_signal.dart';

/// Badge widget for Review Center entry point
/// Displays an icon with a number badge showing pending count
class ReviewCenterBadge extends HookWidget {
  const ReviewCenterBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Fetch count on init
    useEffect(() {
      fetchPendingCount();
      return null;
    }, const []);

    return Watch((context) {
      final count = pendingCountSignal.value;
      final isLoading = isCountLoadingSignal.value;

      return InkWell(
        onTap: () => _handleTap(context),
        borderRadius: BorderRadius.circular(TokenRadius.pill),
        child: Padding(
          padding: const EdgeInsets.all(TokenSpacing.sm),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Main icon
              Icon(
                Icons.fact_check_outlined,
                color: theme.colorScheme.onSurface,
                size: 24,
              ),
              // Badge overlay
              if (count > 0 || isLoading)
                Positioned(
                  right: -6,
                  top: -4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                    decoration: BoxDecoration(
                      color: TokenColors.error,
                      borderRadius: BorderRadius.circular(TokenRadius.sm),
                      boxShadow: [
                        BoxShadow(
                          color: TokenColors.textPrimary.withValues(alpha: 0.2),
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    constraints: const BoxConstraints(minWidth: 18),
                    child: Text(
                      isLoading ? '...' : _formatCount(count),
                      style: TokenTypography.micro(
                        color: TokenColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ),
      );
    });
  }

  void _handleTap(BuildContext context) {
    context.push('/review-center');
  }

  /// Format count for display (e.g., 99+ for large numbers)
  String _formatCount(int count) {
    if (count > 99) return '99+';
    return count.toString();
  }
}
