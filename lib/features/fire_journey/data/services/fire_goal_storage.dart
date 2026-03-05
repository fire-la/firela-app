import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/services/ign_api_service.dart';
import '../../../../core/utils/logger.dart';
import '../../domain/models/fire_goal.dart';

/// Storage service for FIRE goal with local caching and offline support
class FireGoalStorage {
  FireGoalStorage._();
  static final FireGoalStorage instance = FireGoalStorage._();

  static const String _boxName = 'fire_goal';
  static const String _goalKey = 'goal';

  FireGoal? _cachedGoal;
  bool _isInitialized = false;
  bool _isLoading = false;
  String? _error;

  /// Get loading state
  bool get isLoading => _isLoading;

  /// Get error state
  String? get error => _error;

  /// Get cached FIRE goal
  FireGoal? get cachedGoal => _cachedGoal;

  /// Check if storage is initialized
  bool get isInitialized => _isInitialized;

  /// Get FIRE goal from cache or API
  /// Returns null if no goal exists
  Future<FireGoal?> getGoal({bool forceRefresh = false}) async {
    // Return cached data if valid
    if (!forceRefresh && _isInitialized && _cachedGoal != null) {
      return _cachedGoal;
    }

    _isLoading = true;
    _error = null;

    // Try to load from Hive cache first
    if (!forceRefresh) {
      final cached = await _loadFromCache();
      if (cached != null) {
        _cachedGoal = cached;
        _isInitialized = true;
        _isLoading = false;
        logger.i('[FireGoalStorage] Loaded goal from cache');
        return _cachedGoal;
      }
    }

    // Fetch from API
    try {
      final response = await IgnApiService.instance.getFireGoal();
      if (response != null) {
        final goal = FireGoal.fromJson(response);
        _cachedGoal = goal;
        _isInitialized = true;

        // Save to cache
        await _saveToCache(goal);

        logger.i('[FireGoalStorage] Fetched goal from API');
      } else {
        // No goal exists yet
        _cachedGoal = null;
        _isInitialized = true;
        logger.i('[FireGoalStorage] No goal exists on server');
      }
    } catch (e) {
      logger.e('[FireGoalStorage] Failed to fetch goal: $e');
      _error = e.toString();
      // Return cached data even if expired as fallback
      if (_cachedGoal != null) {
        return _cachedGoal;
      }
    } finally {
      _isLoading = false;
    }

    return _cachedGoal;
  }

  /// Save FIRE goal to API and cache
  Future<FireGoal?> saveGoal(FireGoal goal) async {
    _isLoading = true;
    _error = null;

    try {
      // Save to API
      final response = await IgnApiService.instance.saveFireGoal(goal.toJson());
      final savedGoal = FireGoal.fromJson(response);

      // Update cache
      _cachedGoal = savedGoal;
      await _saveToCache(savedGoal);

      logger.i('[FireGoalStorage] Saved goal to API and cache');
      return savedGoal;
    } catch (e) {
      logger.e('[FireGoalStorage] Failed to save goal to API: $e');
      _error = e.toString();

      // Save to local cache only (offline scenario)
      try {
        _cachedGoal = goal;
        await _saveToCache(goal);
        logger.i('[FireGoalStorage] Saved goal to local cache (offline mode)');
        return goal;
      } catch (cacheError) {
        logger.e('[FireGoalStorage] Failed to save to cache: $cacheError');
        _error = cacheError.toString();
        return null;
      }
    } finally {
      _isLoading = false;
    }
  }

  /// Clear cached goal
  Future<void> clearCache() async {
    try {
      final box = await Hive.openBox(_boxName);
      await box.clear();
      _cachedGoal = null;
      _isInitialized = false;
      logger.i('[FireGoalStorage] Cache cleared');
    } catch (e) {
      logger.e('[FireGoalStorage] Failed to clear cache: $e');
    }
  }

  /// Load goal from Hive cache
  Future<FireGoal?> _loadFromCache() async {
    try {
      final box = await Hive.openBox(_boxName);
      final data = box.get(_goalKey);

      if (data != null && data is Map) {
        return FireGoal.fromJson(Map<String, dynamic>.from(data));
      }
    } catch (e) {
      logger.e('[FireGoalStorage] Failed to load from cache: $e');
    }
    return null;
  }

  /// Save goal to Hive cache
  Future<void> _saveToCache(FireGoal goal) async {
    try {
      final box = await Hive.openBox(_boxName);
      await box.put(_goalKey, goal.toJson());
      logger.i('[FireGoalStorage] Saved goal to cache');
    } catch (e) {
      logger.e('[FireGoalStorage] Failed to save to cache: $e');
    }
  }
}
