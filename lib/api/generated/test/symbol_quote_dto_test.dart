import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for SymbolQuoteDto
void main() {
  final instance = SymbolQuoteDtoBuilder();
  // TODO add properties to the builder and call build()

  group(SymbolQuoteDto, () {
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // JsonObject name
    test('to test the property `name`', () async {
      // TODO
    });

    // JsonObject exchange
    test('to test the property `exchange`', () async {
      // TODO
    });

    // OpenBB asset_type
    // JsonObject assetType
    test('to test the property `assetType`', () async {
      // TODO
    });

    // IGN asset class
    // JsonObject assetClass
    test('to test the property `assetClass`', () async {
      // TODO
    });

    // IGN asset sub-class
    // JsonObject assetSubClass
    test('to test the property `assetSubClass`', () async {
      // TODO
    });

    // Trading currency (extra_data or inferred from exchange)
    // JsonObject currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Latest price (Decimal string)
    // JsonObject price
    test('to test the property `price`', () async {
      // TODO
    });

    // Date the price was observed (ISO yyyy-MM-dd)
    // JsonObject priceDate
    test('to test the property `priceDate`', () async {
      // TODO
    });

    // Change vs previous close, in percentage points (1.7 == 1.7%). openbb stores change_percent as a normalized decimal; this exposes percentage points for frontend convenience.
    // JsonObject changePercent
    test('to test the property `changePercent`', () async {
      // TODO
    });

    // Previous close (Decimal string)
    // JsonObject prevClose
    test('to test the property `prevClose`', () async {
      // TODO
    });

    // Day open (Decimal string)
    // JsonObject open
    test('to test the property `open`', () async {
      // TODO
    });

    // Day high (Decimal string)
    // JsonObject high
    test('to test the property `high`', () async {
      // TODO
    });

    // Day low (Decimal string)
    // JsonObject low
    test('to test the property `low`', () async {
      // TODO
    });

    // Day volume (Decimal string)
    // JsonObject volume
    test('to test the property `volume`', () async {
      // TODO
    });

    // 52-week high (Decimal string)
    // JsonObject yearHigh
    test('to test the property `yearHigh`', () async {
      // TODO
    });

    // 52-week low (Decimal string)
    // JsonObject yearLow
    test('to test the property `yearLow`', () async {
      // TODO
    });

  });
}
