import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreatePostingDto
void main() {
  final instance = CreatePostingDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePostingDto, () {
    // Account name in Beancount format (must start with uppercase, colon-separated)
    // String account
    test('to test the property `account`', () async {
      // TODO
    });

    // Amount as decimal string (max 15 integer + 15 decimal digits). Can be omitted for interpolation, but currency must also be omitted.
    // String units
    test('to test the property `units`', () async {
      // TODO
    });

    // Currency/commodity code. Required if units is provided, must be omitted if units is omitted.
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Posting-level metadata
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });
  });
}
