import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdatePayeeProfileDto
void main() {
  final instance = UpdatePayeeProfileDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdatePayeeProfileDto, () {
    // Multi-language aliases for the payee. Used for matching user input in different languages.
    // BuiltList<String> aliases
    test('to test the property `aliases`', () async {
      // TODO
    });

    // Translation key for i18n integration (XLIFF translation system)
    // String i18nKey
    test('to test the property `i18nKey`', () async {
      // TODO
    });

    // Payee category classification
    // String category
    test('to test the property `category`', () async {
      // TODO
    });

    // Sub-category for more specific classification
    // String subCategory
    test('to test the property `subCategory`', () async {
      // TODO
    });

    // Country/region codes where the payee operates (ISO 3166-1 alpha-2)
    // BuiltList<String> countries
    test('to test the property `countries`', () async {
      // TODO
    });

    // Primary operating country (ISO 3166-1 alpha-2)
    // String primaryCountry
    test('to test the property `primaryCountry`', () async {
      // TODO
    });

    // Search keywords for fuzzy matching
    // BuiltList<String> keywords
    test('to test the property `keywords`', () async {
      // TODO
    });

    // Payee logo URL
    // String logoUrl
    test('to test the property `logoUrl`', () async {
      // TODO
    });

    // Official website URL
    // String website
    test('to test the property `website`', () async {
      // TODO
    });

    // Payee description
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Extended metadata (business hours, contact info, additional details)
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Data source for this profile
    // String dataSource (default value: 'MANUAL')
    test('to test the property `dataSource`', () async {
      // TODO
    });

    // Whether the payee profile is active (soft delete)
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // Verification timestamp. Set to current time to verify, or null to unverify.
    // DateTime verifiedAt
    test('to test the property `verifiedAt`', () async {
      // TODO
    });

  });
}
