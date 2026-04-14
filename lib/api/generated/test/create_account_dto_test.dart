import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateAccountDto
void main() {
  final instance = CreateAccountDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateAccountDto, () {
    // Account path (hierarchical, colon-separated)
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // Account open date
    // DateTime openDate
    test('to test the property `openDate`', () async {
      // TODO
    });

    // Allowed currencies (null = no restriction)
    // BuiltList<String> currencies
    test('to test the property `currencies`', () async {
      // TODO
    });

    // Booking method for cost basis
    // String bookingMethod (default value: 'FIFO')
    test('to test the property `bookingMethod`', () async {
      // TODO
    });

    // Reference to account-standards template path
    // String templatePath
    test('to test the property `templatePath`', () async {
      // TODO
    });

    // Whether this is a custom (user-created) account
    // bool isCustom (default value: false)
    test('to test the property `isCustom`', () async {
      // TODO
    });

    // i18n key for display name (overrides template)
    // String i18nKey
    test('to test the property `i18nKey`', () async {
      // TODO
    });

    // Icon identifier (overrides template)
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // Additional metadata
    // JsonObject openMeta
    test('to test the property `openMeta`', () async {
      // TODO
    });

    // Platform ID (references Platform.id)
    // String platformId
    test('to test the property `platformId`', () async {
      // TODO
    });
  });
}
