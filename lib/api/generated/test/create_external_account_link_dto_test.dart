import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateExternalAccountLinkDto
void main() {
  final instance = CreateExternalAccountLinkDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateExternalAccountLinkDto, () {
    // Open Banking provider (whitelist)
    // String provider
    test('to test the property `provider`', () async {
      // TODO
    });

    // External account ID from the provider
    // String externalAccountId
    test('to test the property `externalAccountId`', () async {
      // TODO
    });

    // Target BeanAccount ID (must belong to the JWT user)
    // String beanAccountId
    test('to test the property `beanAccountId`', () async {
      // TODO
    });

  });
}
