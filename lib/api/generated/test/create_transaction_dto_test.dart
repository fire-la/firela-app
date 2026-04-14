import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateTransactionDto
void main() {
  final instance = CreateTransactionDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateTransactionDto, () {
    // Transaction date (ISO 8601 format)
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Transaction narration/description
    // String narration
    test('to test the property `narration`', () async {
      // TODO
    });

    // Transaction postings (minimum 1, typically 2 for double-entry)
    // BuiltList<CreatePostingDto> postings
    test('to test the property `postings`', () async {
      // TODO
    });

    // Transaction flag: * (cleared), ! (pending)
    // String flag
    test('to test the property `flag`', () async {
      // TODO
    });

    // Payee name
    // String payee
    test('to test the property `payee`', () async {
      // TODO
    });

    // Transaction tags (without # prefix)
    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // Transaction links (without ^ prefix)
    // BuiltList<String> links
    test('to test the property `links`', () async {
      // TODO
    });

    // Transaction-level metadata
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction.
    // String idempotencyKey
    test('to test the property `idempotencyKey`', () async {
      // TODO
    });

    // Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly.
    // bool autoCreateAccounts (default value: true)
    test('to test the property `autoCreateAccounts`', () async {
      // TODO
    });
  });
}
