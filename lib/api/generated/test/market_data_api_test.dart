import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for MarketDataApi
void main() {
  final instance = FirelaApi().getMarketDataApi();

  group(MarketDataApi, () {
    // Get a market symbol quote
    //
    //Future<SymbolQuoteDto> symbolControllerGetQuote(String symbol) async
    test('test symbolControllerGetQuote', () async {
      // TODO
    });

    // Search market symbols by name or code
    //
    // Ranked search over the openbb catalog. Empty `q` returns [].
    //
    //Future<BuiltList<SymbolSearchResultDto>> symbolControllerSearch(String q, { num limit, String exchange, String assetType }) async
    test('test symbolControllerSearch', () async {
      // TODO
    });

  });
}
