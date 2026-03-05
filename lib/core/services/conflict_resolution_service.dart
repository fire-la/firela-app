import '../utils/logger.dart';

/// Conflict resolution strategy
enum ConflictResolutionStrategy {
  serverWins,
  localWins,
  newerWins,
  manual,
}

/// Conflict information model
class ConflictInfo {
  final String id;
  final String entityType;
  final String entityId;
  final DateTime localUpdatedAt;
  final DateTime serverUpdatedAt;
  final DateTime? lastSyncAt;
  final dynamic localData;
  final dynamic serverData;
  final ConflictResolutionStrategy resolution;
  final ConflictResolutionStrategy? defaultResolution;
  final DateTime? resolvedAt;
  final String? resolutionReason;

  ConflictInfo({
    required this.id,
    required this.entityType,
    required this.entityId,
    required this.localUpdatedAt,
    required this.serverUpdatedAt,
    required this.resolution,
    this.lastSyncAt,
    this.localData,
    this.serverData,
    this.defaultResolution,
    this.resolvedAt,
    this.resolutionReason,
  });

  ConflictInfo copyWith({
    String? id,
    String? entityType,
    String? entityId,
    DateTime? localUpdatedAt,
    DateTime? serverUpdatedAt,
    DateTime? lastSyncAt,
    dynamic localData,
    dynamic serverData,
    ConflictResolutionStrategy? resolution,
    ConflictResolutionStrategy? defaultResolution,
    DateTime? resolvedAt,
    String? resolutionReason,
  }) {
    return ConflictInfo(
      id: id ?? this.id,
      entityType: entityType ?? this.entityType,
      entityId: entityId ?? this.entityId,
      localUpdatedAt: localUpdatedAt ?? this.localUpdatedAt,
      serverUpdatedAt: serverUpdatedAt ?? this.serverUpdatedAt,
      resolution: resolution ?? this.resolution,
      lastSyncAt: lastSyncAt ?? this.lastSyncAt,
      localData: localData ?? this.localData,
      serverData: serverData ?? this.serverData,
      defaultResolution: defaultResolution ?? this.defaultResolution,
      resolvedAt: resolvedAt ?? this.resolvedAt,
      resolutionReason: resolutionReason ?? this.resolutionReason,
    );
  }
}

/// Conflict resolution service singleton
class ConflictResolutionService {
  ConflictResolutionService._();
  static final ConflictResolutionService instance = ConflictResolutionService._();

  final List<ConflictInfo> _conflictLog = [];

  /// Initialize the conflict resolution service
  Future<void> init() async {
    logger.i('[ConflictResolution] Initialized');
  }

  /// Detect if there's a conflict between local and server data
  ConflictInfo? detectConflict({
    required String entityType,
    required String entityId,
    required DateTime localUpdatedAt,
    required DateTime serverUpdatedAt,
    required ConflictResolutionStrategy defaultStrategy,
    DateTime? lastSyncAt,
  }) {
    // If no last sync time, assume no conflict
    if (lastSyncAt == null) {
      logger.w('[ConflictResolution] No last sync time, assuming no conflict');
      return null;
    }

    // Check if both modified since last sync
    final localModified = localUpdatedAt.isAfter(lastSyncAt);
    final serverModified = serverUpdatedAt.isAfter(lastSyncAt);

    if (localModified && serverModified) {
      logger.i('[ConflictResolution] Conflict detected for $entityType:$entityId');

      return ConflictInfo(
        id: '${entityType}_$entityId',
        entityType: entityType,
        entityId: entityId,
        localUpdatedAt: localUpdatedAt,
        serverUpdatedAt: serverUpdatedAt,
        resolution: defaultStrategy,
        lastSyncAt: lastSyncAt,
        defaultResolution: defaultStrategy,
      );
    }

    logger.d('[ConflictResolution] No conflict detected');
    return null;
  }

  /// Resolve conflict using strategy
  Future<ConflictInfo> resolveConflict(ConflictInfo conflict) async {
    switch (conflict.resolution) {
      case ConflictResolutionStrategy.serverWins:
        return conflict.copyWith(
          resolvedAt: DateTime.now(),
          resolutionReason: 'Server version kept',
        );
      case ConflictResolutionStrategy.localWins:
        return conflict.copyWith(
          resolvedAt: DateTime.now(),
          resolutionReason: 'Local version kept',
        );
      case ConflictResolutionStrategy.newerWins:
        final serverTime = conflict.serverUpdatedAt;
        final localTime = conflict.localUpdatedAt;
        if (serverTime.isAfter(localTime)) {
          return conflict.copyWith(
            resolvedAt: DateTime.now(),
            resolutionReason: 'Newer server version kept',
          );
        } else {
          return conflict.copyWith(
            resolvedAt: DateTime.now(),
            resolutionReason: 'Newer local version kept',
          );
        }
      case ConflictResolutionStrategy.manual:
        // Manual resolution requires UI interaction
        // Add to conflict log for UI to handle
        _conflictLog.add(conflict);
        return conflict.copyWith(
          resolutionReason: 'Manual resolution required',
        );
    }
  }

  /// Get pending conflicts for manual resolution
  List<ConflictInfo> getPendingConflicts() {
    return _conflictLog.where((c) => c.resolvedAt == null).toList();
  }

  /// Clear resolved conflicts
  Future<void> clearResolvedConflicts() async {
    final initialCount = _conflictLog.length;
    _conflictLog.removeWhere((c) => c.resolvedAt != null);
    final clearedCount = initialCount - _conflictLog.length;
    logger.i('[ConflictResolution] Cleared $clearedCount resolved conflicts');
  }

  /// Get conflict count
  int get conflictCount => _conflictLog.length;

  /// Get all conflicts
  List<ConflictInfo> get allConflicts => List.unmodifiable(_conflictLog);
}
