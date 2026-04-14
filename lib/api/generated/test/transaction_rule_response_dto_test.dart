import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for TransactionRuleResponseDto
void main() {
  final instance = TransactionRuleResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(TransactionRuleResponseDto, () {
    // Rule ID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Rule name
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Keywords to match in transaction narration
    // BuiltList<String> narrationKeywords
    test('to test the property `narrationKeywords`', () async {
      // TODO
    });

    // Keywords to match in payee name
    // BuiltList<String> payeeKeywords
    test('to test the property `payeeKeywords`', () async {
      // TODO
    });

    // Keywords to match in category
    // BuiltList<String> categoryKeywords
    test('to test the property `categoryKeywords`', () async {
      // TODO
    });

    // Keywords to match in payment method
    // BuiltList<String> methodKeywords
    test('to test the property `methodKeywords`', () async {
      // TODO
    });

    // Keyword matching logic
    // String matchLogic
    test('to test the property `matchLogic`', () async {
      // TODO
    });

    // Rule priority (0-1000, higher = first match)
    // num priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // Whether the rule is enabled
    // bool enabled
    test('to test the property `enabled`', () async {
      // TODO
    });

    // Whether auto-apply is enabled for this rule
    // bool autoApplyEnabled
    test('to test the property `autoApplyEnabled`', () async {
      // TODO
    });

    // Number of confirmations for NLP-learned rules
    // num confirmationCount
    test('to test the property `confirmationCount`', () async {
      // TODO
    });

    // Additional tags
    // BuiltList<String> additionalTags
    test('to test the property `additionalTags`', () async {
      // TODO
    });

    // Created timestamp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Updated timestamp
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Rule description
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Destination account for categorization
    // String categoryAccount
    test('to test the property `categoryAccount`', () async {
      // TODO
    });

    // Amount range for matching
    // JsonObject amountRange
    test('to test the property `amountRange`', () async {
      // TODO
    });

    // Learning source: NLP, REVIEW_CENTER, or null for manual
    // String learningSource
    test('to test the property `learningSource`', () async {
      // TODO
    });

    // Additional metadata
    // JsonObject additionalMetadata
    test('to test the property `additionalMetadata`', () async {
      // TODO
    });
  });
}
