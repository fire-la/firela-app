import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for BeanBalancesApi
void main() {
  final instance = FirelaApi().getBeanBalancesApi();

  group(BeanBalancesApi, () {
    // Query account balance
    //
    // Calculate account balance at a specific date for a single currency
    //
    //Future<BalanceResponseDto> balanceControllerGetBalance(String account, String region, { String date, String currency }) async
    test('test balanceControllerGetBalance', () async {
      // TODO
    });

    // Query multi-currency account balance
    //
    // Calculate account balances for all currencies at a specific date
    //
    //Future<MultiCurrencyBalanceResponseDto> balanceControllerGetMultiCurrencyBalance(String region) async
    test('test balanceControllerGetMultiCurrencyBalance', () async {
      // TODO
    });
  });
}
