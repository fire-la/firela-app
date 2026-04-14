import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ValidateRuleDto
void main() {
  final instance = ValidateRuleDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ValidateRuleDto, () {
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // String matchLogic (default value: 'OR')
    test('to test the property `matchLogic`', () async {
      // TODO
    });

    // num priority (default value: 50)
    test('to test the property `priority`', () async {
      // TODO
    });

    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // BuiltList<BuiltList> narrationKeywords
    test('to test the property `narrationKeywords`', () async {
      // TODO
    });

    // BuiltList<BuiltList> payeeKeywords
    test('to test the property `payeeKeywords`', () async {
      // TODO
    });

    // BuiltList<BuiltList> categoryKeywords
    test('to test the property `categoryKeywords`', () async {
      // TODO
    });

    // Payment method keywords (e.g., HuaBei, YuEBao)
    // BuiltList<BuiltList> methodKeywords
    test('to test the property `methodKeywords`', () async {
      // TODO
    });

    // Destination account for expenses/income (e.g., Expenses:Food:Coffee)
    // String categoryAccount
    test('to test the property `categoryAccount`', () async {
      // TODO
    });

    // Minimum transaction amount (inclusive)
    // num amountMin
    test('to test the property `amountMin`', () async {
      // TODO
    });

    // Maximum transaction amount (inclusive)
    // num amountMax
    test('to test the property `amountMax`', () async {
      // TODO
    });

    // BuiltList<BuiltList> additionalTags
    test('to test the property `additionalTags`', () async {
      // TODO
    });

    // JsonObject additionalMetadata
    test('to test the property `additionalMetadata`', () async {
      // TODO
    });

    // If true, update existing rule with matching payeeKeywords[0] instead of creating new rule
    // bool upsertByPayee
    test('to test the property `upsertByPayee`', () async {
      // TODO
    });
  });
}
