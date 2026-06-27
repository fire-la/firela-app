import 'package:firela_app/features/review_center/domain/models/review_type.dart';
import 'package:flutter_test/flutter_test.dart';

/// IGN-287 item A — [ReviewType]/[ReviewAction] are the single source of truth
/// for the review wire values. This guards the one place that maps wire strings
/// to the enum: a typo here would silently break presentation everywhere.
void main() {
  group('ReviewType', () {
    test('every value round-trips through its wire value', () {
      for (final t in ReviewType.values) {
        expect(ReviewType.fromWire(t.wireValue), same(t));
        expect(t.wireValue, isNotEmpty);
      }
    });

    test('fromWire returns null for unknown/absent keys', () {
      expect(ReviewType.fromWire(null), isNull);
      expect(ReviewType.fromWire('UNKNOWN_TYPE'), isNull);
      expect(ReviewType.fromWire(''), isNull);
    });

    test('covers the 5 backend review types', () {
      expect(ReviewType.values, hasLength(5));
      expect(ReviewType.fromWire('DUPLICATE'), ReviewType.duplicate);
      expect(ReviewType.fromWire('RULE_MATCH'), ReviewType.ruleMatch);
      expect(ReviewType.fromWire('PAYEE_MATCH'), ReviewType.payeeMatch);
      expect(ReviewType.fromWire('ACCOUNT_VALIDATION'),
          ReviewType.accountValidation);
      expect(ReviewType.fromWire('PIPELINE_ERROR'), ReviewType.pipelineError);
    });
  });

  group('ReviewAction', () {
    test('every value round-trips through its wire value', () {
      for (final a in ReviewAction.values) {
        expect(ReviewAction.fromWire(a.wireValue), same(a));
      }
    });

    test('fromWire returns null for unknown actions', () {
      expect(ReviewAction.fromWire(null), isNull);
      expect(ReviewAction.fromWire('NOT_AN_ACTION'), isNull);
    });

    test('covers the hardcoded list/batch actions', () {
      // The list page hardcodes these via defaultBatchAction/inlineConfig.
      expect(ReviewAction.fromWire('IGNORE_NEW'), ReviewAction.ignoreNew);
      expect(ReviewAction.fromWire('ACCEPT'), ReviewAction.accept);
      expect(ReviewAction.fromWire('FIX'), ReviewAction.fix);
      expect(ReviewAction.fromWire('UPGRADE_REPLACE'),
          ReviewAction.upgradeReplace);
    });
  });
}
