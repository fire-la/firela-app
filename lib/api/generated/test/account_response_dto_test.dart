import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for AccountResponseDto
void main() {
  final instance = AccountResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(AccountResponseDto, () {
    // Account UUID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Account path (hierarchical, colon-separated)
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // Account type (root segment)
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths.
    // String assetSubClass
    test('to test the property `assetSubClass`', () async {
      // TODO
    });

    // Account status
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Account open date
    // String openDate
    test('to test the property `openDate`', () async {
      // TODO
    });

    // Account close date (if closed)
    // String closeDate
    test('to test the property `closeDate`', () async {
      // TODO
    });

    // Allowed currencies (null = no restriction)
    // BuiltList<String> currencies
    test('to test the property `currencies`', () async {
      // TODO
    });

    // Booking method
    // String bookingMethod
    test('to test the property `bookingMethod`', () async {
      // TODO
    });

    // Template path reference
    // String templatePath
    test('to test the property `templatePath`', () async {
      // TODO
    });

    // Whether this is a custom (user-created) account
    // bool isCustom
    test('to test the property `isCustom`', () async {
      // TODO
    });

    // Localized display name (ADR-0114, read-time projection)
    // String displayName
    test('to test the property `displayName`', () async {
      // TODO
    });

    // Icon identifier
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // Open directive metadata (ADR-0115 Decision 9)
    // JsonObject openDirectiveMeta
    test('to test the property `openDirectiveMeta`', () async {
      // TODO
    });

    // Platform ID (null if unbound)
    // JsonObject platformId
    test('to test the property `platformId`', () async {
      // TODO
    });

    // Platform details (populated if platformId is set)
    // JsonObject platform
    test('to test the property `platform`', () async {
      // TODO
    });

    // Created timestamp
    // String createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Updated timestamp
    // String updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
