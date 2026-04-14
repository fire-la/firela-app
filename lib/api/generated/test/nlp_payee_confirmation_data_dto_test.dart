import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for NlpPayeeConfirmationDataDto
void main() {
  final instance = NlpPayeeConfirmationDataDtoBuilder();
  // TODO add properties to the builder and call build()

  group(NlpPayeeConfirmationDataDto, () {
    // Confidence score for the payee match (0-1)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // Original payee string from user input
    // String originalPayee
    test('to test the property `originalPayee`', () async {
      // TODO
    });

    // Similarity score between original and suggested (0-1)
    // num similarity
    test('to test the property `similarity`', () async {
      // TODO
    });

    // Alternative payee options
    // BuiltList<NlpAlternativePayeeDto> alternatives
    test('to test the property `alternatives`', () async {
      // TODO
    });

    // Human-readable reasons for the match
    // BuiltList<String> reasons
    test('to test the property `reasons`', () async {
      // TODO
    });

    // NlpPayeeConfirmationDataDtoSuggestedPayee suggestedPayee
    test('to test the property `suggestedPayee`', () async {
      // TODO
    });
  });
}
