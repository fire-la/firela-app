import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for OnboardingAccountDto
void main() {
  final instance = OnboardingAccountDtoBuilder();
  // TODO add properties to the builder and call build()

  group(OnboardingAccountDto, () {
    // Account path (Assets/Liabilities only; format validated by the account service)
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // ISO 4217 currency code (3 letters)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Opening balance as a non-negative Decimal string (e.g. \"1000.00\")
    // String openingBalance
    test('to test the property `openingBalance`', () async {
      // TODO
    });

    // Platform ID to bind the account to (references Platform.id); omit for unbound
    // String platformId
    test('to test the property `platformId`', () async {
      // TODO
    });

  });
}
