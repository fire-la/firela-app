import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateCommodityDto
void main() {
  final instance = CreateCommodityDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateCommodityDto, () {
    // Commodity symbol (e.g., AAPL, USD, BTC) - corresponds to Beancount currency field
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Commodity definition date (ISO 8601, required per Beancount spec). Represents when this commodity was first defined in the accounting system.
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata (corresponds to Beancount meta field). Can contain name, assetClass, precision, note, tags, etc.
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
