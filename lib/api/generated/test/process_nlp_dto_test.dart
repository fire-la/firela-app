import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ProcessNlpDto
void main() {
  final instance = ProcessNlpDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ProcessNlpDto, () {
    // Natural language text describing a transaction (Chinese)
    // String message
    test('to test the property `message`', () async {
      // TODO
    });

    // Session ID for multi-turn conversation (auto-generated if not provided)
    // String sessionId
    test('to test the property `sessionId`', () async {
      // TODO
    });

    // Parsed data from previous NLP response for session recovery. Send back the parsedData received in confirm_payee/confirm responses.
    // JsonObject parsedData
    test('to test the property `parsedData`', () async {
      // TODO
    });

    // confirm_rule echo-back: rule id selected from the prior confirm_rule response (matchedRule.id or alternatives[i].ruleId). Applied directly when the session is confirming_rule — no NL re-parse.
    // String selectedRuleId
    test('to test the property `selectedRuleId`', () async {
      // TODO
    });

    // confirm_account echo-back: account path selected from the prior confirm_account response (suggestedAccount, similarAccounts[i], or a typed path). Applied directly when the session is confirming_account — no NL re-parse.
    // String selectedAccount
    test('to test the property `selectedAccount`', () async {
      // TODO
    });

  });
}
