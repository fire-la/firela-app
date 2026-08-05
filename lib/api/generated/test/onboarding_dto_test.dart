import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for OnboardingDto
void main() {
  final instance = OnboardingDtoBuilder();
  // TODO add properties to the builder and call build()

  group(OnboardingDto, () {
    // Asset/Liability accounts to register with opening balances
    // BuiltList<OnboardingAccountDto> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // Skip asset registration; only bootstrap the core account set
    // bool skipAssetRegistration (default value: false)
    test('to test the property `skipAssetRegistration`', () async {
      // TODO
    });

  });
}
