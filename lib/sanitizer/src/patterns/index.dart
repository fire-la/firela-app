// Hand-written -- do not auto-generate with ts2dart

import '../types.dart' show PiiPattern;
import 'cn.dart' show cnPatterns;
import 'eu.dart' show euPatterns;
import 'hk.dart' show hkPatterns;
import 'us.dart' show usPatterns;
import 'universal.dart' show universalPatterns;

final _euRegions = <String>{
  'eu', 'de', 'fr', 'nl', 'be', 'at', 'it', 'es', 'pt', 'ie',
  'fi', 'gr', 'sk', 'si', 'ee', 'lv', 'lt', 'lu', 'mt', 'cy',
  'hr', 'cz', 'pl', 'hu', 'ro', 'bg', 'se', 'dk', 'no',
};

final Map<String, List<PiiPattern>> _regionMap = {
  'cn': cnPatterns,
  'hk': hkPatterns,
  'us': usPatterns,
};

List<PiiPattern> _getRegionPatterns(String region) {
  if (_regionMap.containsKey(region)) return _regionMap[region]!;
  if (_euRegions.contains(region)) return euPatterns;
  return const [];
}

List<PiiPattern> loadPatterns(String region) {
  return [..._getRegionPatterns(region), ...universalPatterns];
}
