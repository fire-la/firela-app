import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for NetWorthResponseDto
void main() {
  final instance = NetWorthResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(NetWorthResponseDto, () {
    // Total net worth (assets - liabilities, converted to base currency)
    // String netWorth
    test('to test the property `netWorth`', () async {
      // TODO
    });

    // Total assets value (converted)
    // String assets
    test('to test the property `assets`', () async {
      // TODO
    });

    // Total liabilities value (positive number, converted)
    // String liabilities
    test('to test the property `liabilities`', () async {
      // TODO
    });

    // Monthly return (change from last month)
    // String monthlyReturn
    test('to test the property `monthlyReturn`', () async {
      // TODO
    });

    // Monthly return percentage
    // String monthlyReturnPercentage
    test('to test the property `monthlyReturnPercentage`', () async {
      // TODO
    });

    // Base currency code
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Data as of date (ISO 8601)
    // String asOf
    test('to test the property `asOf`', () async {
      // TODO
    });

    // NetWorthByCurrencyDto byCurrency
    test('to test the property `byCurrency`', () async {
      // TODO
    });

    // ConvertedNetWorthDto converted
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
