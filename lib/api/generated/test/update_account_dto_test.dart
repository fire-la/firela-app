import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdateAccountDto
void main() {
  final instance = UpdateAccountDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateAccountDto, () {
    // Allowed currencies (null = no restriction)
    // BuiltList<String> currencies
    test('to test the property `currencies`', () async {
      // TODO
    });

    // Booking method for cost basis
    // String bookingMethod
    test('to test the property `bookingMethod`', () async {
      // TODO
    });

    // Icon identifier
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // Open directive metadata (merged with existing; NOT an opening-balance amount)
    // JsonObject openDirectiveMeta
    test('to test the property `openDirectiveMeta`', () async {
      // TODO
    });

    // Platform ID (references Platform.id), null to clear association
    // String platformId
    test('to test the property `platformId`', () async {
      // TODO
    });

  });
}
