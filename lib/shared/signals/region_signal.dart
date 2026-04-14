import 'package:signals_flutter/signals_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../core/network/api_client.dart';
import '../../api/src/api_client.dart';
import '../../core/constants/storage_keys.dart';
import '../../core/utils/logger.dart';

/// Region code type
/// Supported regions: cn, us, eu-core, de
typedef RegionCode = String;

/// Global region signal with default 'cn'
final regionSignal = signal<RegionCode>('cn');

/// Region information
class RegionInfo {
  final RegionCode code;
  final String name;
  final String flag;
  final String currency;
  final String locale;

  const RegionInfo({
    required this.code,
    required this.name,
    required this.flag,
    required this.currency,
    required this.locale,
  });
}

/// Region information map
/// 参考 region-routing-integration.md
const Map<RegionCode, RegionInfo> regionInfoMap = {
  'cn': RegionInfo(
    code: 'cn',
    name: '中国',
    flag: '🇨🇳',
    currency: 'CNY',
    locale: 'zh_CN',
  ),
  'us': RegionInfo(
    code: 'us',
    name: '美国',
    flag: '🇺🇸',
    currency: 'USD',
    locale: 'en_US',
  ),
  'eu-core': RegionInfo(
    code: 'eu-core',
    name: '欧盟核心',
    flag: '🇪🇺',
    currency: 'EUR',
    locale: 'en_EU',
  ),
  'de': RegionInfo(
    code: 'de',
    name: '德国',
    flag: '🇩🇪',
    currency: 'EUR',
    locale: 'de_DE',
  ),
};

/// Initialize region from persisted storage
Future<void> initRegion() async {
  try {
    final box = await Hive.openBox(StorageKeys.preferencesBox);
    final savedRegion = box.get('region', defaultValue: 'cn') as String;

    if (regionInfoMap.containsKey(savedRegion)) {
      regionSignal.value = savedRegion;
      _syncRegionToClients(savedRegion);
      logger.i('[Region] Loaded region: $savedRegion');
    } else {
      // Default to 'cn' if saved region is invalid
      regionSignal.value = 'cn';
      _syncRegionToClients('cn');
      logger.w('[Region] Invalid saved region: $savedRegion, defaulting to cn');
    }
  } catch (e) {
    logger.e('[Region] Failed to init region: $e');
    // Default to 'cn' on error
    regionSignal.value = 'cn';
    _syncRegionToClients('cn');
  }
}

/// Set region
/// Updates both the signal and all API clients
/// Returns a Future for compatibility with await
Future<void> setRegion(RegionCode region) async {
  if (!regionInfoMap.containsKey(region)) {
    throw ArgumentError('Invalid region code: $region. Valid regions: ${regionInfoMap.keys.join(', ')}');
  }
  regionSignal.value = region;
  _syncRegionToClients(region);

  // Persist region to storage
  await _persistRegion(region);
}

/// Sync region to both old ApiClient and new ApiClientWrapper
void _syncRegionToClients(RegionCode region) {
  ApiClient.instance.setRegion(region);
  ApiClientWrapper.instance.setRegion(region);
}

/// Persist region to storage
Future<void> _persistRegion(RegionCode region) async {
  try {
    final box = await Hive.openBox(StorageKeys.preferencesBox);
    await box.put('region', region);
    logger.i('[Region] Saved region: $region');
  } catch (e) {
    logger.e('[Region] Failed to save region: $e');
  }
}

/// Get current region info
RegionInfo get currentRegionInfo {
  final code = regionSignal.value;
  return regionInfoMap[code] ?? regionInfoMap['cn']!;
}
