// Hand-written -- do not auto-generate with ts2dart

import '../types.dart' show RuleSet;
import 'community.dart' show communityRule;
import 'regular.dart' show regularRule;

final Map<String, RuleSet> _ruleSets = {
  'community': communityRule,
  'regular': regularRule,
};

RuleSet loadRuleSet(String mode) {
  return _ruleSets[mode]!;
}
