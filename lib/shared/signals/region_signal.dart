import 'package:signals_flutter/signals_flutter.dart';
import '../../core/network/api_client.dart';

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

/// Set region
/// Updates both the signal and ApiClient
void setRegion(RegionCode region) {
  if (!regionInfoMap.containsKey(region)) {
    throw ArgumentError('Invalid region code: $region. Valid regions: ${regionInfoMap.keys.join(', ')}');
  }
  regionSignal.value = region;
  ApiClient.instance.setRegion(region);
}

/// Get current region info
RegionInfo get currentRegionInfo {
  final code = regionSignal.value;
  return regionInfoMap[code] ?? regionInfoMap['cn']!;
}
