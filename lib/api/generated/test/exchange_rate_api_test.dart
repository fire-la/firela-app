import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for ExchangeRateApi
void main() {
  final instance = FirelaApi().getExchangeRateApi();

  group(ExchangeRateApi, () {
    // Get exchange rate for currency pair
    //
    // Retrieves historical exchange rate for a specific date and currency pair
    //
    //Future exchangeRateControllerGetExchangeRate(String symbol, String dateString, String region) async
    test('test exchangeRateControllerGetExchangeRate', () async {
      // TODO
    });
  });
}
