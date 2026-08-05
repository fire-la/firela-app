import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for TransactionListSummaryDto
void main() {
  final instance = TransactionListSummaryDtoBuilder();
  // TODO add properties to the builder and call build()

  group(TransactionListSummaryDto, () {
    // Partial converted total in base currency (rated currencies only, raw Beancount sign). When warnings is non-empty this excludes currencies missing an FX rate; may be \"0.00\" if ALL non-base currencies lack a rate. Converted at the dateTo (or current) available rate.
    // String totalAmount
    test('to test the property `totalAmount`', () async {
      // TODO
    });

    // Base currency (ISO 4217)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Raw (unconverted) balance per currency
    // BuiltList<BalanceByCurrencyDto> balanceByCurrency
    test('to test the property `balanceByCurrency`', () async {
      // TODO
    });

    // Currencies missing an FX rate (omitted when empty)
    // BuiltList<ExchangeRateWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

  });
}
