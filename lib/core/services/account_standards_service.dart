import 'package:hive_flutter/hive_flutter.dart';
import '../network/api_client.dart';
import '../utils/logger.dart';
import '../../shared/signals/region_signal.dart';

/// Account standard model
class AccountStandard {
  final String path;
  final String type;
  final String? description;
  final String? i18nKey;
  final String? icon;
  final List<String>? aliases;
  final String? region;

  const AccountStandard({
    required this.path,
    required this.type,
    this.description,
    this.i18nKey,
    this.icon,
    this.aliases,
    this.region,
  });

  factory AccountStandard.fromJson(Map<String, dynamic> json) {
    return AccountStandard(
      path: json['path'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      i18nKey: json['i18nKey'] as String?,
      icon: json['icon'] as String?,
      aliases: (json['aliases'] as List<dynamic>?)?.cast<String>().toList(),
      region: json['region'] as String?,
    );
  }
}

/// Service to fetch and cache account standards per region
/// 参考 region-selection-integration.md
class AccountStandardsService {
  AccountStandardsService._();
  static final AccountStandardsService instance = AccountStandardsService._();

  static const String _boxName = 'account_standards';
  static const String _cacheKeyPrefix = 'standards_';

  List<AccountStandard> _cachedStandards = [];
  String _cachedRegion = '';
  bool _isInitialized = false;

  /// Get account standards for current region
  /// Returns cached data if available, otherwise fetches from API
  Future<List<AccountStandard>> getStandards({bool forceRefresh = false}) async {
    final currentRegion = regionSignal.value;

    // Return cached data if valid
    if (!forceRefresh && _isInitialized && _cachedRegion == currentRegion) {
      return _cachedStandards;
    }

    // Try to load from Hive cache first
    if (!forceRefresh) {
      final cached = await _loadFromCache(currentRegion);
      if (cached != null && cached.isNotEmpty) {
        _cachedStandards = cached;
        _cachedRegion = currentRegion;
        _isInitialized = true;
        logger.i('[AccountStandards] Loaded ${cached.length} standards from cache for region: $currentRegion');
        return _cachedStandards;
      }
    }

    // Fetch from API
    try {
      final response = await ApiClient.instance.get('/bean/account-standards');
      final standards = _parseResponse(response);

      _cachedStandards = standards;
      _cachedRegion = currentRegion;
      _isInitialized = true;

      // Save to cache
      await _saveToCache(currentRegion, standards);

      logger.i('[AccountStandards] Fetched ${standards.length} standards for region: $currentRegion');
      return standards;
    } catch (e) {
      logger.e('[AccountStandards] Failed to fetch standards: $e');
      // Return cached data even if expired as fallback
      if (_cachedStandards.isNotEmpty) {
        return _cachedStandards;
      }
      return [];
    }
  }

  /// Find account by path or alias
  AccountStandard? findByPathOrAlias(String query) {
    final normalizedQuery = query.toLowerCase().trim();

    // Try exact path match first
    for (final standard in _cachedStandards) {
      if (standard.path.toLowerCase() == normalizedQuery) {
        return standard;
      }
    }

    // Try alias match
    for (final standard in _cachedStandards) {
      if (standard.aliases != null) {
        for (final alias in standard.aliases!) {
          if (alias.toLowerCase() == normalizedQuery) {
            return standard;
          }
        }
      }
    }

    // Try partial match
    for (final standard in _cachedStandards) {
      if (standard.path.toLowerCase().contains(normalizedQuery)) {
        return standard;
      }
    }

    return null;
  }

  /// Get all expense account paths
  List<String> getExpenseAccounts() {
    return _cachedStandards
        .where((s) => s.type == 'Expenses')
        .map((s) => s.path)
        .toList();
  }

  /// Get all asset account paths
  List<String> getAssetAccounts() {
    return _cachedStandards
        .where((s) => s.type == 'Assets')
        .map((s) => s.path)
        .toList();
  }

  /// Clear cache (called when region changes)
  Future<void> clearCache() async {
    _cachedStandards = [];
    _cachedRegion = '';
    _isInitialized = false;

    try {
      final box = await Hive.openBox(_boxName);
      await box.clear();
      logger.i('[AccountStandards] Cache cleared');
    } catch (e) {
      logger.e('[AccountStandards] Failed to clear cache: $e');
    }
  }

  List<AccountStandard> _parseResponse(dynamic response) {
    if (response == null) return [];

    List<dynamic> items;
    if (response is List) {
      items = response;
    } else if (response is Map<String, dynamic>) {
      items = response['data'] ?? response['items'] ?? [];
    } else {
      return [];
    }

    return items
        .whereType<Map<String, dynamic>>()
        .map((json) => AccountStandard.fromJson(json))
        .toList();
  }

  Future<List<AccountStandard>?> _loadFromCache(String region) async {
    try {
      final box = await Hive.openBox(_boxName);
      final key = '$_cacheKeyPrefix$region';
      final data = box.get(key);

      if (data != null && data is List) {
        return data
            .whereType<Map<String, dynamic>>()
            .map((json) => AccountStandard.fromJson(json))
            .toList();
      }
    } catch (e) {
      logger.e('[AccountStandards] Failed to load from cache: $e');
    }
    return null;
  }

  Future<void> _saveToCache(String region, List<AccountStandard> standards) async {
    try {
      final box = await Hive.openBox(_boxName);
      final key = '$_cacheKeyPrefix$region';
      final data = standards.map((s) => {
        'path': s.path,
        'type': s.type,
        'description': s.description,
        'i18nKey': s.i18nKey,
        'icon': s.icon,
        'aliases': s.aliases,
        'region': s.region,
      }).toList();
      await box.put(key, data);
    } catch (e) {
      logger.e('[AccountStandards] Failed to save to cache: $e');
    }
  }
}
