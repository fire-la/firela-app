import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for HoldingPnlRowDto
void main() {
  final instance = HoldingPnlRowDtoBuilder();
  // TODO add properties to the builder and call build()

  group(HoldingPnlRowDto, () {
    // Account UUID
    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Full account path
    // String accountPath
    test('to test the property `accountPath`', () async {
      // TODO
    });

    // Account settlement currency (ISO 4217), from cost currency
    // JsonObject accountCcy
    test('to test the property `accountCcy`', () async {
      // TODO
    });

    // Broker type derived from Platform.type
    // JsonObject brokerType
    test('to test the property `brokerType`', () async {
      // TODO
    });

    // Commodity symbol
    // String symbol
    test('to test the property `symbol`', () async {
      // TODO
    });

    // Chart segment token (libs/common resolver)
    // String chartToken
    test('to test the property `chartToken`', () async {
      // TODO
    });

    // String assetClass
    test('to test the property `assetClass`', () async {
      // TODO
    });

    // JsonObject assetSubClass
    test('to test the property `assetSubClass`', () async {
      // TODO
    });

    // Net held units (Decimal string)
    // String units
    test('to test the property `units`', () async {
      // TODO
    });

    // HoldingPnlRowDtoAverageCostPerUnit averageCostPerUnit
    test('to test the property `averageCostPerUnit`', () async {
      // TODO
    });

    // HoldingPnlRowDtoCostBasis costBasis
    test('to test the property `costBasis`', () async {
      // TODO
    });

    // HoldingPnlRowDtoMarketValue marketValue
    test('to test the property `marketValue`', () async {
      // TODO
    });

    // HoldingPnlRowDtoCurrentPrice currentPrice
    test('to test the property `currentPrice`', () async {
      // TODO
    });

    // Unrealized P&L in base currency (Decimal string); null when any FX/price missing
    // JsonObject unrealizedPnlBase
    test('to test the property `unrealizedPnlBase`', () async {
      // TODO
    });

    // Unrealized P&L % (Decimal string)
    // JsonObject unrealizedPnlPct
    test('to test the property `unrealizedPnlPct`', () async {
      // TODO
    });

    // HoldingPnlRowDtoCostFxRate costFxRate
    test('to test the property `costFxRate`', () async {
      // TODO
    });

    // HoldingPnlRowDtoMarketFxRate marketFxRate
    test('to test the property `marketFxRate`', () async {
      // TODO
    });

    // Share of invested assets % (Decimal string); only for invested chartTokens
    // JsonObject pctOfInvestedAssets
    test('to test the property `pctOfInvestedAssets`', () async {
      // TODO
    });

    // HoldingPnlRowDtoRealizedPnl realizedPnl
    test('to test the property `realizedPnl`', () async {
      // TODO
    });

  });
}
