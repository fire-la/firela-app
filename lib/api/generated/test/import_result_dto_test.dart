import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ImportResultDto
void main() {
  final instance = ImportResultDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ImportResultDto, () {
    // Number of successfully imported transactions
    // num imported
    test('to test the property `imported`', () async {
      // TODO
    });

    // Number of failed transactions
    // num failed
    test('to test the property `failed`', () async {
      // TODO
    });

    // Number of skipped transactions (high confidence duplicates, auto-skipped)
    // num skipped
    test('to test the property `skipped`', () async {
      // TODO
    });

    // Number of transactions pending review (medium confidence duplicates)
    // num pendingReview
    test('to test the property `pendingReview`', () async {
      // TODO
    });

    // Array of error details for failed transactions
    // BuiltList<ImportErrorDto> errors
    test('to test the property `errors`', () async {
      // TODO
    });

    // Array of transactions pending review with preview data. Contains essential information for displaying in the import preview UI.
    // BuiltList<ReviewItemPreviewDto> reviewItems
    test('to test the property `reviewItems`', () async {
      // TODO
    });

    // Array of imported transactions (optional, for debugging)
    // JsonObject transactions
    test('to test the property `transactions`', () async {
      // TODO
    });
  });
}
