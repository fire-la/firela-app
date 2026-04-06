import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BalanceApi
void main() {
  final instance = FirelaApi().getBalanceApi();

  group(BalanceApi, () {
    // Query balance
    //
    // Get the balance of an account in a specific currency
    //
    //Future<BalanceResponse> getBalance(String region, String account, String currency, { Date date }) async
    test('test getBalance', () async {
      // TODO
    });

    // Query multi-currency balance
    //
    // Get the balance of an account across all currencies
    //
    //Future<MultiCurrencyBalanceResponse> getMultiCurrencyBalance(String region, String account, { Date date }) async
    test('test getMultiCurrencyBalance', () async {
      // TODO
    });
  });
}
