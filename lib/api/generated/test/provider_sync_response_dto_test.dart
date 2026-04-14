import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ProviderSyncResponseDto
void main() {
  final instance = ProviderSyncResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ProviderSyncResponseDto, () {
    // Number of transactions successfully imported
    // num imported
    test('to test the property `imported`', () async {
      // TODO
    });

    // Number of transactions skipped (duplicates)
    // num skipped
    test('to test the property `skipped`', () async {
      // TODO
    });

    // Number of transactions pending review
    // num pendingReview
    test('to test the property `pendingReview`', () async {
      // TODO
    });

    // Number of transactions that failed to import
    // num failed
    test('to test the property `failed`', () async {
      // TODO
    });

    // IDs of successfully imported transactions
    // BuiltList<String> importedTransactionIds
    test('to test the property `importedTransactionIds`', () async {
      // TODO
    });

    // IDs of review items created for branched transactions
    // BuiltList<String> reviewItemIds
    test('to test the property `reviewItemIds`', () async {
      // TODO
    });
  });
}
