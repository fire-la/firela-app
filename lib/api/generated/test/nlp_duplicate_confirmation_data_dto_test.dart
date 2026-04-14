import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for NlpDuplicateConfirmationDataDto
void main() {
  final instance = NlpDuplicateConfirmationDataDtoBuilder();
  // TODO add properties to the builder and call build()

  group(NlpDuplicateConfirmationDataDto, () {
    // Duplicate detection confidence score (0.5-0.89)
    // num confidence
    test('to test the property `confidence`', () async {
      // TODO
    });

    // NlpSourceTransactionDto sourceTransaction
    test('to test the property `sourceTransaction`', () async {
      // TODO
    });

    // NlpTargetTransactionDto targetTransaction
    test('to test the property `targetTransaction`', () async {
      // TODO
    });

    // NlpSimilarityDto similarity
    test('to test the property `similarity`', () async {
      // TODO
    });

    // Human-readable reasons for duplicate detection
    // BuiltList<String> reasons
    test('to test the property `reasons`', () async {
      // TODO
    });
  });
}
