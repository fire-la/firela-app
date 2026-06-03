// Hand-written -- do not auto-generate with ts2dart

import '../types.dart' show RuleSet;

const regularRule = RuleSet(
  name: 'regular',
  maskCategories: ['personal'],
  skipTypes: ['bank_card_cn'],
  minConfidence: 'MEDIUM',
);
