import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ReviewSummaryDto
void main() {
  final instance = ReviewSummaryDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ReviewSummaryDto, () {
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

    // Confidence level derived from score. Null for error-type reviews (ACCOUNT_VALIDATION/PIPELINE_ERROR) which carry no confidence.
    // String confidenceLevel
    test('to test the property `confidenceLevel`', () async {
      // TODO
    });

    // i18n message key for summary (e.g., review.summary.duplicate). Translate on frontend with summaryParams.
    // String summaryKey
    test('to test the property `summaryKey`', () async {
      // TODO
    });

    // Parameters for summary message interpolation (e.g., { date: \"2024-01-15\", amount: \"50\" })
    // BuiltMap<String, String> summaryParams
    test('to test the property `summaryParams`', () async {
      // TODO
    });

    // Human-readable reasons for branching
    // BuiltList<String> matchReasons
    test('to test the property `matchReasons`', () async {
      // TODO
    });

    // Source type (free-form string from transaction metadata, e.g. import, api)
    // String sourceType
    test('to test the property `sourceType`', () async {
      // TODO
    });

    // Source platform (e.g., alipay, wechat)
    // String sourcePlatform
    test('to test the property `sourcePlatform`', () async {
      // TODO
    });

    // Creation timestamp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
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

  });
}
