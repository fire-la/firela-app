import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for MarketDataApi
void main() {
  final instance = FirelaApi().getMarketDataApi();

  group(MarketDataApi, () {
    //Future marketDataController(String region) async
    test('test marketDataController', () async {
      // TODO
    });

    // Get market data by symbol
    //
    // Retrieves market data and asset profile for a given symbol and data source
    //
    //Future marketDataControllerGetMarketDataBySymbol(String dataSource, String symbol, String region) async
    test('test marketDataControllerGetMarketDataBySymbol', () async {
      // TODO
    });
  });
}
