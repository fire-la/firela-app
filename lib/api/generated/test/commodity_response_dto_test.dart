import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CommodityResponseDto
void main() {
  final instance = CommodityResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CommodityResponseDto, () {
    // Unique identifier
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Commodity symbol (corresponds to Beancount currency field)
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Commodity definition date (required per Beancount spec). Represents when this commodity was first defined in the accounting system.
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata (corresponds to Beancount meta field). Contains name, assetClass, precision, note, tags, etc.
    // JsonObject metadata
    test('to test the property `metadata`', () async {
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

    // User ID (owner of the commodity)
    // JsonObject userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Reference to SymbolProfile (market data integration, SaaS feature)
    // JsonObject symbolProfileId
    test('to test the property `symbolProfileId`', () async {
      // TODO
    });
  });
}
