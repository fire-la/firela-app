import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateTransactionRequest
void main() {
  final instance = CreateTransactionRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CreateTransactionRequest, () {
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // String narration
    test('to test the property `narration`', () async {
      // TODO
    });

    // BuiltList<CreatePostingRequest> postings
    test('to test the property `postings`', () async {
      // TODO
    });

    // Transaction flag: '*' = complete, '!' = incomplete
    // String flag (default value: '*')
    test('to test the property `flag`', () async {
      // TODO
    });

    // String payee
    test('to test the property `payee`', () async {
      // TODO
    });

    // BuiltList<String> tags
    test('to test the property `tags`', () async {
      // TODO
    });

    // BuiltList<String> links
    test('to test the property `links`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // String idempotencyKey
    test('to test the property `idempotencyKey`', () async {
      // TODO
    });
  });
}
