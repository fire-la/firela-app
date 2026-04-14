import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for DashboardApi
void main() {
  final instance = FirelaApi().getDashboardApi();

  group(DashboardApi, () {
    // Get accounts grouped by platform
    //
    // Returns accounts with balances grouped by financial platform
    //
    //Future<DashboardControllerGetAccounts200Response> dashboardControllerGetAccounts(String region, { String groupBy, String date }) async
    test('test dashboardControllerGetAccounts', () async {
      // TODO
    });

    // Get cash flow summary
    //
    // Returns income, expenses, and savings for a monthly period
    //
    //Future<CashFlowResponseDto> dashboardControllerGetCashFlow(String period, String region) async
    test('test dashboardControllerGetCashFlow', () async {
      // TODO
    });

    // Get net worth overview
    //
    // Returns total net worth with breakdown of assets and liabilities
    //
    //Future<NetWorthResponseDto> dashboardControllerGetNetWorth(String region, { String date }) async
    test('test dashboardControllerGetNetWorth', () async {
      // TODO
    });
  });
}
