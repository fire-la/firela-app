import 'package:signals_flutter/signals_flutter.dart';
import '../../data/repositories/review_center_repository.dart';
import '../../../../core/utils/logger.dart';

/// Global signal for pending review count
final pendingCountSignal = signal<int>(0);

/// Global signal for count by confidence level
final pendingCountByLevelSignal = signal<Map<String, int>>({
  'total': 0,
  'high': 0,
  'medium': 0,
  'low': 0,
});

/// Signal for loading state
final isCountLoadingSignal = signal<bool>(false);

/// Fetch pending count from backend
Future<void> fetchPendingCount() async {
  if (isCountLoadingSignal.value) return;

  isCountLoadingSignal.value = true;
  try {
    final counts = await ReviewCenterRepository.instance.getPendingCount();
    pendingCountByLevelSignal.value = counts;
    pendingCountSignal.value = counts['total'] ?? 0;
    logger.i('[ReviewCenterSignal] Pending count updated: ${counts['total']}');
  } catch (e) {
    logger.e('[ReviewCenterSignal] Failed to fetch pending count: $e');
    // Keep previous values on error
  } finally {
    isCountLoadingSignal.value = false;
  }
}

/// Clear pending count (e.g., on logout)
void clearPendingCount() {
  pendingCountSignal.value = 0;
  pendingCountByLevelSignal.value = {
    'total': 0,
    'high': 0,
    'medium': 0,
    'low': 0,
  };
}
