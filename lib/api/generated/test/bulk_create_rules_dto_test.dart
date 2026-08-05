import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for BulkCreateRulesDto
void main() {
  final instance = BulkCreateRulesDtoBuilder();
  // TODO add properties to the builder and call build()

  group(BulkCreateRulesDto, () {
    // Array of rules to import
    // BuiltList<BuiltList> rules
    test('to test the property `rules`', () async {
      // TODO
    });

    // Conflict handling strategy: skip (default) ignores duplicates, replace soft-deletes existing rule
    // String conflictStrategy (default value: 'skip')
    test('to test the property `conflictStrategy`', () async {
      // TODO
    });

  });
}
