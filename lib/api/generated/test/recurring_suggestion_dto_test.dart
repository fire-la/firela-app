import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for RecurringSuggestionDto
void main() {
  final instance = RecurringSuggestionDtoBuilder();
  // TODO add properties to the builder and call build()

  group(RecurringSuggestionDto, () {
    // Whether to suggest creating a recurring rule
    // bool shouldSuggest
    test('to test the property `shouldSuggest`', () async {
      // TODO
    });

    // Suggested frequency based on pattern analysis
    // String suggestedFrequency
    test('to test the property `suggestedFrequency`', () async {
      // TODO
    });

    // Confidence score (0-1)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // Number of similar historical transactions found
    // num similarCount
    test('to test the property `similarCount`', () async {
      // TODO
    });

    // Average amount across similar transactions
    // num averageAmount
    test('to test the property `averageAmount`', () async {
      // TODO
    });

    // Suggested expected day of month (1-28). Only provided when dates are consistent.
    // num suggestedExpectedDay
    test('to test the property `suggestedExpectedDay`', () async {
      // TODO
    });
  });
}
