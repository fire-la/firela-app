import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/utils/logger.dart';
import '../../domain/models/fire_milestone.dart';

/// Milestone badge widget showing achievement status
class MilestoneBadge extends StatelessWidget {
  const MilestoneBadge({
    super.key,
    required this.milestone,
    this.onAchieved,
  });

  /// The milestone to display
  final FireMilestone milestone;

  /// Callback when milestone is newly achieved
  final VoidCallback? onAchieved;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: milestone.achieved ? const Color(0xFFFFFFFF) : const Color(0xFFE0E0E0),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: milestone.achieved ? const Color(0xFF000000) : const Color(0xFF999999),
          width: 1.5,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            milestone.achieved ? Icons.check : Icons.lock_outline,
            size: 14,
            color: milestone.achieved ? const Color(0xFF000000) : const Color(0xFF666666),
          ),
          const SizedBox(width: 4),
          Text(
            milestone.name,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w500,
              color: milestone.achieved ? const Color(0xFF000000) : const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }
}

/// Service for managing milestone achievements
class MilestoneService {
  MilestoneService._();
  static final MilestoneService instance = MilestoneService._();

  static const String _boxName = 'fire_milestones';
  static const String _achievedKey = 'achieved_milestones';

  /// Default milestones (in CNY)
  static const List<FireMilestone> defaultMilestones = [
    FireMilestone(
      id: '100k',
      name: '10万',
      targetAmount: 100000.0,
    ),
    FireMilestone(
      id: '500k',
      name: '50万',
      targetAmount: 500000.0,
    ),
    FireMilestone(
      id: '1m',
      name: '100万',
      targetAmount: 1000000.0,
    ),
    FireMilestone(
      id: '5m',
      name: '500万',
      targetAmount: 5000000.0,
    ),
    FireMilestone(
      id: '10m',
      name: '1000万',
      targetAmount: 10000000.0,
    ),
  ];

  /// Get milestones filtered by target amount
  /// Returns milestones up to 120% of target
  List<FireMilestone> getMilestonesForTarget(double targetAmount) {
    if (targetAmount <= 0) {
      return defaultMilestones;
    }
    return defaultMilestones
        .where((m) => m.targetAmount <= targetAmount * 1.2)
        .toList();
  }

  /// Check and update milestones based on current net worth
  /// Returns list of newly achieved milestones
  Future<List<FireMilestone>> checkMilestones(
    double currentNetWorth,
    double targetAmount,
  ) async {
    final milestones = getMilestonesForTarget(targetAmount);
    final achievedIds = await _loadAchievedIds();
    final newlyAchieved = <FireMilestone>[];

    for (final milestone in milestones) {
      final isNowAchieved = currentNetWorth >= milestone.targetAmount;
      final wasPreviouslyAchieved = achievedIds.contains(milestone.id);

      if (isNowAchieved && !wasPreviouslyAchieved) {
        // New milestone achieved!
        newlyAchieved.add(milestone.copyWith(
          achieved: true,
          achievedDate: DateTime.now(),
        ));
        achievedIds.add(milestone.id);
        logger.i('[MilestoneService] Milestone achieved: ${milestone.name}');
      }
    }

    // Save updated achieved IDs
    if (newlyAchieved.isNotEmpty) {
      await _saveAchievedIds(achievedIds);
    }

    return newlyAchieved;
  }

  /// Get all milestones with achievement status
  Future<List<FireMilestone>> getMilestonesWithStatus(
    double currentNetWorth,
    double targetAmount,
  ) async {
    final milestones = getMilestonesForTarget(targetAmount);
    final achievedIds = await _loadAchievedIds();

    return milestones.map((m) {
      final isAchieved = currentNetWorth >= m.targetAmount || achievedIds.contains(m.id);
      return m.copyWith(
        achieved: isAchieved,
        achievedDate: isAchieved ? DateTime.now() : null,
      );
    }).toList();
  }

  /// Load achieved milestone IDs from Hive
  Future<Set<String>> _loadAchievedIds() async {
    try {
      final box = await Hive.openBox(_boxName);
      final ids = box.get(_achievedKey) as List<dynamic>? ?? [];
      return ids.cast<String>().toSet();
    } catch (e) {
      logger.e('[MilestoneService] Failed to load achieved IDs: $e');
      return {};
    }
  }

  /// Save achieved milestone IDs to Hive
  Future<void> _saveAchievedIds(Set<String> ids) async {
    try {
      final box = await Hive.openBox(_boxName);
      await box.put(_achievedKey, ids.toList());
      logger.i('[MilestoneService] Saved ${ids.length} achieved milestones');
    } catch (e) {
      logger.e('[MilestoneService] Failed to save achieved IDs: $e');
    }
  }

  /// Clear all milestone data
  Future<void> clearMilestones() async {
    try {
      final box = await Hive.openBox(_boxName);
      await box.clear();
      logger.i('[MilestoneService] Cleared all milestone data');
    } catch (e) {
      logger.e('[MilestoneService] Failed to clear milestones: $e');
    }
  }
}
