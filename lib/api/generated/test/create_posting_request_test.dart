import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreatePostingRequest
void main() {
  final instance = CreatePostingRequestBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePostingRequest, () {
    // Full Beancount account path (e.g., \"Assets:Bank:Checking\")
    // String account
    test('to test the property `account`', () async {
      // TODO
    });

    // Decimal string for precision (e.g., \"100.50\")
    // String units
    test('to test the property `units`', () async {
      // TODO
    });

    // Currency code if units provided
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // BuiltMap<String, JsonObject> meta
    test('to test the property `meta`', () async {
      // TODO
    });
  });
}
