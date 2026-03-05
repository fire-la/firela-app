import 'dart:convert';
import 'package:hive_flutter/hive_flutter.dart';
import '../constants/storage_keys.dart';
import '../utils/logger.dart';

/// Cached data entry with optional expiry
class CachedEntry {
  final dynamic data;
  final DateTime cachedAt;
  final Duration? ttl;

  CachedEntry({
    required this.data,
    required this.cachedAt,
    this.ttl,
  });

  bool get isExpired {
    if (ttl == null) return false;
    return DateTime.now().difference(cachedAt) > ttl!;
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'cachedAt': cachedAt.toIso8601String(),
      'ttl': ttl?.inSeconds,
    };
  }

  factory CachedEntry.fromJson(Map<String, dynamic> json) {
    final dynamic jsonData = json['data'];
    // Ensure data is a Map for JSON serialization
    final Map<String, dynamic> dataMap = jsonData is Map<String, dynamic>
        ? jsonData
        : <String, dynamic>{};
    return CachedEntry(
      data: dataMap,
      cachedAt: DateTime.parse(json['cachedAt'] as String),
      ttl: json['ttl'] != null
          ? Duration(seconds: json['ttl'] as int)
          : null,
    );
  }
}

/// Offline cache service
/// Manages cached data for offline access
class OfflineCacheService {
  OfflineCacheService._();
  static final OfflineCacheService instance = OfflineCacheService._();

  late final Box<dynamic> _cacheBox;
  bool _initialized = false;

  /// Initialize the cache service
  Future<void> init() async {
    if (_initialized) return;

    try {
    _cacheBox = await Hive.openBox(StorageKeys.offlineCacheBox);
    _initialized = true;
    logger.i('[OfflineCache] Initialized');
    } catch (e) {
      logger.e('[OfflineCache] Failed to initialize: $e');
      rethrow;
    }
  }

  /// Cache data with optional TTL
  Future<void> cacheData(String key, dynamic data, {Duration? expiry}) async {
    if (!_initialized) await init();

    final entry = CachedEntry(
      data: data,
      cachedAt: DateTime.now(),
      ttl: expiry,
    );

    try {
      await _cacheBox.put(key, jsonEncode(entry.toJson()));
      logger.i('[OfflineCache] Cached: $key');
    } catch (e) {
      logger.e('[OfflineCache] Failed to cache $key: $e');
    }
  }

  /// Get cached data
  /// Returns null if not found or expired
  T? getCachedData<T>(String key) {
    if (!_initialized) return null;

    try {
      final value = _cacheBox.get(key);
      if (value == null) return null;

      final entry = CachedEntry.fromJson(
        jsonDecode(value as String) as Map<String, dynamic>,
      );

      // Check if expired
      if (entry.isExpired) {
        _cacheBox.delete(key);
        logger.i('[OfflineCache] Expired: $key');
        return null;
      }

      logger.i('[OfflineCache] Cache hit: $key');
      return entry.data as T;
    } catch (e) {
      logger.e('[OfflineCache] Failed to get $key: $e');
      return null;
    }
  }

  /// Invalidate (clear) specific cache key
  Future<void> invalidateCache(String key) async {
    if (!_initialized) await init();

    try {
      await _cacheBox.delete(key);
      logger.i('[OfflineCache] Invalidated: $key');
    } catch (e) {
      logger.e('[OfflineCache] Failed to invalidate $key: $e');
    }
  }

  /// Clear all cached data
  Future<void> clearAllCache() async {
    if (!_initialized) await init();

    try {
      await _cacheBox.clear();
      logger.i('[OfflineCache] Cleared all cache');
    } catch (e) {
      logger.e('[OfflineCache] Failed to clear cache: $e');
    }
  }

  /// Get cache stats
  Map<String, dynamic> getCacheStats() {
    if (!_initialized) {
      return {'initialized': false};
    }

    return {
      'initialized': true,
      'size': _cacheBox.length,
      'keys': _cacheBox.keys.toList(),
    };
  }
}

/// Pending operation for offline write operations
enum PendingOperationType {
  confirmTransaction,
  updateTransaction,
  deleteTransaction,
  createTransaction,
}

/// Pending operation model
class PendingOperation {
  final String id;
  final PendingOperationType type;
  final Map<String, dynamic> data;
  final DateTime createdAt;
  int retryCount;
  String? error;

  PendingOperation({
    required this.id,
    required this.type,
    required this.data,
    required this.createdAt,
    this.retryCount = 0,
    this.error,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'type': type.name,
      'data': data,
      'createdAt': createdAt.toIso8601String(),
      'retryCount': retryCount,
      'error': error,
    };
  }

  factory PendingOperation.fromJson(Map<String, dynamic> json) {
    return PendingOperation(
      id: json['id'] as String,
      type: PendingOperationType.values.firstWhere(
        (t) => t.name == json['type'],
        orElse: () => PendingOperationType.createTransaction,
      ),
      data: Map<String, dynamic>.from(json['data'] as Map),
      createdAt: DateTime.parse(json['createdAt'] as String),
      retryCount: json['retryCount'] as int? ?? 0,
      error: json['error'] as String?,
    );
  }

  PendingOperation copyWith({
    int? retryCount,
    String? error,
  }) {
    return PendingOperation(
      id: id,
      type: type,
      data: data,
      createdAt: createdAt,
      retryCount: retryCount ?? this.retryCount,
      error: error,
    );
  }
}

/// Pending operations queue for offline writes
class PendingOperationsQueue {
  PendingOperationsQueue._();
  static final PendingOperationsQueue instance = PendingOperationsQueue._();

  late final Box<String> _opsBox;
  bool _initialized = false;

  /// Initialize the queue
  Future<void> init() async {
    if (_initialized) return;

    try {
      _opsBox = await Hive.openBox(StorageKeys.pendingOperationsBox);
      _initialized = true;
      logger.i('[PendingOps] Initialized');
    } catch (e) {
      logger.e('[PendingOps] Failed to initialize: $e');
      rethrow;
    }
  }

  /// Add a pending operation
  Future<String> addOperation(PendingOperationType type, Map<String, dynamic> data) async {
    if (!_initialized) await init();

    final id = DateTime.now().millisecondsSinceEpoch.toString();
    final op = PendingOperation(
      id: id,
      type: type,
      data: data,
      createdAt: DateTime.now(),
    );

    try {
      await _opsBox.put(id, jsonEncode(op.toJson()));
      logger.i('[PendingOps] Added: ${op.type.name} ($id)');
      return id;
    } catch (e) {
      logger.e('[PendingOps] Failed to add operation: $e');
      rethrow;
    }
  }

  /// Get all pending operations
  List<PendingOperation> getPendingOperations() {
    if (!_initialized) return [];

    try {
      return _opsBox.values.map((value) {
        return PendingOperation.fromJson(
          jsonDecode(value as String) as Map<String, dynamic>,
        );
      }).toList()
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));
    } catch (e) {
      logger.e('[PendingOps] Failed to get operations: $e');
      return [];
    }
  }

  /// Update a pending operation
  Future<void> updateOperation(PendingOperation op) async {
    if (!_initialized) await init();

    try {
      await _opsBox.put(op.id, jsonEncode(op.toJson()));
      logger.i('[PendingOps] Updated: ${op.id}');
    } catch (e) {
      logger.e('[PendingOps] Failed to update: $e');
    }
  }

  /// Remove a pending operation
  Future<void> removeOperation(String id) async {
    if (!_initialized) await init();

    try {
      await _opsBox.delete(id);
      logger.i('[PendingOps] Removed: $id');
    } catch (e) {
      logger.e('[PendingOps] Failed to remove: $e');
    }
  }

  /// Clear all pending operations
  Future<void> clearAll() async {
    if (!_initialized) await init();

    try {
      await _opsBox.clear();
      logger.i('[PendingOps] Cleared all');
    } catch (e) {
      logger.e('[PendingOps] Failed to clear: $e');
    }
  }

  /// Get pending count
  int get pendingCount {
    if (!_initialized) return 0;
    return _opsBox.length;
  }
}
