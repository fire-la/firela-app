import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreatePayeeDto
void main() {
  final instance = CreatePayeeDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreatePayeeDto, () {
    // User's original payee name (e.g., 'Starbucks', 'McDonald'). This is the raw payee string as entered by the user.
    // String payee
    test('to test the property `payee`', () async {
      // TODO
    });

    // Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories)
    // String payeeProfileId
    test('to test the property `payeeProfileId`', () async {
      // TODO
    });

    // User's custom category for this payee (overrides PayeeProfile category)
    // String customCategory
    test('to test the property `customCategory`', () async {
      // TODO
    });

    // User's custom tags for this payee (e.g., ['favorite', 'work_meal'])
    // BuiltList<String> customTags
    test('to test the property `customTags`', () async {
      // TODO
    });

    // Metadata for extended information (location, notes, contact info, etc.)
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

  });
}
