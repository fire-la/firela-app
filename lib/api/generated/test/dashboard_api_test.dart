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
    //Future<DashboardControllerGetAccounts200Response> dashboardControllerGetAccounts(String region, { String groupBy, String date, String accountId }) async
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

    // Get expenses/income grouped by functional category
    //
    // Returns amounts pre-aggregated by functional category (account-path Group segment) with server-side multi-currency conversion. flow=expense (default) aggregates ^Expenses: accounts; flow=income aggregates ^Income: accounts (issue #518)
    //
    //Future<ExpensesByCategoryResponseDto> dashboardControllerGetExpenses(String region, { String groupBy, String period, String flow }) async
    test('test dashboardControllerGetExpenses', () async {
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
