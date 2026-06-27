import 'package:signals_flutter/signals_flutter.dart';
import '../../data/repositories/review_center_repository.dart';
import '../../domain/models/review_type.dart';
import '../../../../core/utils/logger.dart';

/// Total pending review count (drives the entry-point badge).
final pendingCountSignal = signal<int>(0);

/// Pending counts by review type, straight from `GET /bean/reviews/stats`.
/// Flat map: {'total': N, 'DUPLICATE': n, 'RULE_MATCH': n, ...}. Drives the
/// type-filter chips on the review list.
final pendingCountByTypeSignal = signal<Map<String, int>>({'total': 0});

/// Legacy confidence-level breakdown consumed by the home pending-reviews card.
/// The stats endpoint has no confidence-level split, so high/medium/low are
/// derived from byType purely to preserve prior behavior — prefer
/// [pendingCountByTypeSignal] for anything new.
final pendingCountByLevelSignal = signal<Map<String, int>>({
  'total': 0,
  'high': 0,
  'medium': 0,
  'low': 0,
});

/// Loading state for stats fetches.
final isCountLoadingSignal = signal<bool>(false);

/// Fetch pending review stats and populate all count signals.
Future<void> fetchPendingCount() async {
  if (isCountLoadingSignal.value) return;

  isCountLoadingSignal.value = true;
  try {
    final stats = await ReviewCenterRepository.instance.getPendingCount();
    pendingCountByTypeSignal.value = stats;
    final total = stats['total'] ?? 0;
    pendingCountSignal.value = total;
    pendingCountByLevelSignal.value = {
      'total': total,
      // Fold every type into a level; derive 'low' as the remainder so
      // high + medium + low always == total even if new review types appear
      // on the backend (the explicit list would otherwise drop them silently).
      'high': stats[ReviewType.duplicate.wireValue] ?? 0,
      'medium': (stats[ReviewType.ruleMatch.wireValue] ?? 0) +
          (stats[ReviewType.payeeMatch.wireValue] ?? 0),
      'low': total -
          (stats[ReviewType.duplicate.wireValue] ?? 0) -
          (stats[ReviewType.ruleMatch.wireValue] ?? 0) -
          (stats[ReviewType.payeeMatch.wireValue] ?? 0),
    };
    logger.i('[ReviewCenterSignal] Pending count updated: $total');
  } catch (e) {
    logger.e('[ReviewCenterSignal] Failed to fetch pending count: $e');
    // Keep previous values on error.
  } finally {
    isCountLoadingSignal.value = false;
  }
}

/// Clear pending counts (e.g., on logout).
void clearPendingCount() {
  pendingCountSignal.value = 0;
  pendingCountByTypeSignal.value = {'total': 0};
  pendingCountByLevelSignal.value = {
    'total': 0,
    'high': 0,
    'medium': 0,
    'low': 0,
  };
}
