import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PriceResponseDto
void main() {
  final instance = PriceResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PriceResponseDto, () {
    // Unique identifier
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // User ID (owner of the price)
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Currency being priced (e.g., USD, AAPL, BTC)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Quote currency (pricing currency, e.g., USD, CNY)
    // String quoteCurrency
    test('to test the property `quoteCurrency`', () async {
      // TODO
    });

    // Price amount (corresponds to Beancount Amount.number). Supports up to 15 decimal places.
    // num amount
    test('to test the property `amount`', () async {
      // TODO
    });

    // Price date (ISO 8601 format). Represents the date this price was valid.
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata (corresponds to Beancount meta field). Contains source, confidence, note, etc.
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Creation timestamp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Last update timestamp
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
