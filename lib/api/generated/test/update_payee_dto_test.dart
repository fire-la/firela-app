import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdatePayeeDto
void main() {
  final instance = UpdatePayeeDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdatePayeeDto, () {
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

    // Metadata for extended information (location, notes, contact info, etc.). Will merge with existing metadata.
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Enable or disable this payee. Disabled payees will not appear in autocomplete suggestions.
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

  });
}
