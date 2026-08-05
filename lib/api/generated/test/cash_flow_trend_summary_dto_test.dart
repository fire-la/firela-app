import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CashFlowTrendSummaryDto
void main() {
  final instance = CashFlowTrendSummaryDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CashFlowTrendSummaryDto, () {
    // Total income across the period
    // String totalIncome
    test('to test the property `totalIncome`', () async {
      // TODO
    });

    // Total expense across the period
    // String totalExpense
    test('to test the property `totalExpense`', () async {
      // TODO
    });

    // income − expense across the period
    // String totalNetSavings
    test('to test the property `totalNetSavings`', () async {
      // TODO
    });

    // totalNetSavings divided by the window length (N months, incl. zero-filled)
    // String averageMonthlyNetSavings
    test('to test the property `averageMonthlyNetSavings`', () async {
      // TODO
    });

  });
}
