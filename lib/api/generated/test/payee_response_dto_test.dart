import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PayeeResponseDto
void main() {
  final instance = PayeeResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PayeeResponseDto, () {
    // Unique identifier (UUID)
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // User ID (owner of this payee mapping)
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // User's original payee name (e.g., 'Starbucks', 'McDonald')
    // String payee
    test('to test the property `payee`', () async {
      // TODO
    });

    // User's custom tags (e.g., ['favorite', 'work_meal'])
    // BuiltList<String> customTags
    test('to test the property `customTags`', () async {
      // TODO
    });

    // Usage count (number of times this payee was used in transactions)
    // num useCount
    test('to test the property `useCount`', () async {
      // TODO
    });

    // Last used timestamp
    // DateTime lastUsedAt
    test('to test the property `lastUsedAt`', () async {
      // TODO
    });

    // Extended metadata (location, notes, contact info, etc.)
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Active status (inactive payees hidden from autocomplete)
    // bool isActive
    test('to test the property `isActive`', () async {
      // TODO
    });

    // Creation timestamp (first time this payee was used)
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Last update timestamp
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Reference to global PayeeProfile (merchant info, i18n keys, categories)
    // JsonObject payeeProfileId
    test('to test the property `payeeProfileId`', () async {
      // TODO
    });

    // User's custom category (overrides PayeeProfile category if set)
    // JsonObject customCategory
    test('to test the property `customCategory`', () async {
      // TODO
    });
  });
}
