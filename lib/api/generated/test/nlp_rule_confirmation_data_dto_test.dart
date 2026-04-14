import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for NlpRuleConfirmationDataDto
void main() {
  final instance = NlpRuleConfirmationDataDtoBuilder();
  // TODO add properties to the builder and call build()

  group(NlpRuleConfirmationDataDto, () {
    // Rule match confidence score (0.5-0.74)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // Matched rule information
    // JsonObject matchedRule
    test('to test the property `matchedRule`', () async {
      // TODO
    });

    // Suggested accounts from the rule
    // JsonObject suggestedAccounts
    test('to test the property `suggestedAccounts`', () async {
      // TODO
    });

    // Alternative rules that also match
    // BuiltList alternatives
    test('to test the property `alternatives`', () async {
      // TODO
    });

    // Human-readable reasons for the match
    // BuiltList<String> reasons
    test('to test the property `reasons`', () async {
      // TODO
    });
  });
}
