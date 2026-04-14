import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ReviewDetailDto
void main() {
  final instance = ReviewDetailDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ReviewDetailDto, () {
    // Review item ID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Review type
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Review status
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Confidence score (0-1)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // Confidence level derived from score
    // String confidenceLevel
    test('to test the property `confidenceLevel`', () async {
      // TODO
    });

    // Human-readable summary of the review item
    // String summary
    test('to test the property `summary`', () async {
      // TODO
    });

    // Human-readable reasons for branching
    // BuiltList<String> matchReasons
    test('to test the property `matchReasons`', () async {
      // TODO
    });

    // Source type (NLP, CSV, OCR, API)
    // String sourceType
    test('to test the property `sourceType`', () async {
      // TODO
    });

    // Creation timestamp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Review-type-specific data (JSONB). Structure varies by type: DUPLICATE: {newTransaction, existingTransaction, matchScore}, RULE_MATCH: {transaction, matchedRule, suggestedAccount}, PAYEE_MATCH: {originalPayee, suggestedPayee}, ACCOUNT_VALIDATION: {invalidAccount, suggestedCorrection, similarAccounts}, PIPELINE_ERROR: {errorType, errorMessage}
    // JsonObject reviewData
    test('to test the property `reviewData`', () async {
      // TODO
    });

    // Available decision options
    // BuiltList<DecisionOptionDto> decisionOptions
    test('to test the property `decisionOptions`', () async {
      // TODO
    });

    // Source platform (e.g., alipay, wechat)
    // String sourcePlatform
    test('to test the property `sourcePlatform`', () async {
      // TODO
    });

    // ReviewSummaryDtoTransaction transaction
    test('to test the property `transaction`', () async {
      // TODO
    });

    // Transaction amount (convenience field for mobile display)
    // String amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Currency code (convenience field for mobile display)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Payee/Merchant name (convenience field for mobile display)
    // String merchantName
    test('to test the property `merchantName`', () async {
      // TODO
    });

    // Account name (convenience field for mobile display)
    // String accountName
    test('to test the property `accountName`', () async {
      // TODO
    });

    // Transaction date/time (convenience field for mobile display)
    // String transactionTime
    test('to test the property `transactionTime`', () async {
      // TODO
    });

    // Related transaction ID if applicable
    // String transactionId
    test('to test the property `transactionId`', () async {
      // TODO
    });
  });
}
