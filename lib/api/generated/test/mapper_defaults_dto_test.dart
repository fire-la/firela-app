import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for MapperDefaultsDto
void main() {
  final instance = MapperDefaultsDtoBuilder();
  // TODO add properties to the builder and call build()

  group(MapperDefaultsDto, () {
    // Source account for transactions (Beancount format)
    // String sourceAccount
    test('to test the property `sourceAccount`', () async {
      // TODO
    });

    // Default currency (ISO 4217 code)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Default expense account
    // String expenseAccount
    test('to test the property `expenseAccount`', () async {
      // TODO
    });

    // Default income account
    // String incomeAccount
    test('to test the property `incomeAccount`', () async {
      // TODO
    });

    // Filename prefix to account mapping (for HK importers). Maps filename prefix to Beancount account path.
    // JsonObject accountMapping
    test('to test the property `accountMapping`', () async {
      // TODO
    });

    // Convert CNY to CNH (offshore RMB) (for HK importers). Default: false.
    // bool useCnh
    test('to test the property `useCnh`', () async {
      // TODO
    });

    // Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
    // JsonObject methodAccountMapping
    test('to test the property `methodAccountMapping`', () async {
      // TODO
    });
  });
}
