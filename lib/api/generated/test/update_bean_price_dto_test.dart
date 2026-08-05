import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdateBeanPriceDto
void main() {
  final instance = UpdateBeanPriceDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateBeanPriceDto, () {
    // Currency being priced
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Quote currency (pricing currency)
    // String quoteCurrency
    test('to test the property `quoteCurrency`', () async {
      // TODO
    });

    // Price amount (MUST be >= 0 per Beancount spec)
    // num amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Price date (ISO 8601 format)
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
