import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for SymbolsApi
void main() {
  final instance = FirelaApi().getSymbolsApi();

  group(SymbolsApi, () {
    //Future symbolController(String region) async
    test('test symbolController', () async {
      // TODO
    });

    // Gather symbol data for specific date
    //
    // Retrieve historical symbol data for a specific date
    //
    //Future symbolControllerGatherSymbolForDate(String dataSource, String dateString, String symbol, String region) async
    test('test symbolControllerGatherSymbolForDate', () async {
      // TODO
    });

    // Get symbol data
    //
    // Retrieve detailed symbol information including optional historical data
    //
    //Future symbolControllerGetSymbolData(String dataSource, String symbol, String region, { JsonObject includeHistoricalData }) async
    test('test symbolControllerGetSymbolData', () async {
      // TODO
    });

    // Search for symbols
    //
    // Search symbols by query with optional filters for asset class, area, and indices
    //
    //Future symbolControllerLookupSymbol(String region, { JsonObject includeIndices, JsonObject assetSubClass, JsonObject assetClass, JsonObject area, JsonObject query }) async
    test('test symbolControllerLookupSymbol', () async {
      // TODO
    });
  });
}
