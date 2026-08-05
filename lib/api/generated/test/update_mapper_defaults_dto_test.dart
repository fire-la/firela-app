import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdateMapperDefaultsDto
void main() {
  final instance = UpdateMapperDefaultsDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateMapperDefaultsDto, () {
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

    // Default expense account (optional)
    // String expenseAccount
    test('to test the property `expenseAccount`', () async {
      // TODO
    });

    // Default income account (optional)
    // String incomeAccount
    test('to test the property `incomeAccount`', () async {
      // TODO
    });

    // Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard).
    // JsonObject methodAccountMapping
    test('to test the property `methodAccountMapping`', () async {
      // TODO
    });

  });
}
