import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateBeanPriceDto
void main() {
  final instance = CreateBeanPriceDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateBeanPriceDto, () {
    // Currency being priced (e.g., USD, AAPL, BTC)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Quote currency (pricing currency, e.g., CNY, EUR)
    // String quoteCurrency
    test('to test the property `quoteCurrency`', () async {
      // TODO
    });

    // Price amount (MUST be >= 0 per Beancount spec, supports up to 15 decimal places). Zero allowed for conversion entries, negative strictly prohibited.
    // num amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Price date (ISO 8601 format)
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata (validated by Zod schema, max field lengths enforced)
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
