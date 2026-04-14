import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CashFlowResponseDto
void main() {
  final instance = CashFlowResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CashFlowResponseDto, () {
    // Period identifier (YYYY-MM)
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Total income for the period (converted)
    // String income
    test('to test the property `income`', () async {
      // TODO
    });

    // Total expenses for the period (converted)
    // String expense
    test('to test the property `expense`', () async {
      // TODO
    });

    // Net savings (income - expense, converted)
    // String netSavings
    test('to test the property `netSavings`', () async {
      // TODO
    });

    // Savings rate percentage (netSavings / income * 100)
    // String savingsRate
    test('to test the property `savingsRate`', () async {
      // TODO
    });

    // Base currency code
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // CashFlowByCurrencyDto byCurrency
    test('to test the property `byCurrency`', () async {
      // TODO
    });

    // ConvertedCashFlowDto converted
    test('to test the property `converted`', () async {
      // TODO
    });

    // Exchange rate warnings
    // BuiltList<ExchangeRateWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });
  });
}
