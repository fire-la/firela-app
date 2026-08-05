import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for TimeSeriesPointDto
void main() {
  final instance = TimeSeriesPointDtoBuilder();
  // TODO add properties to the builder and call build()

  group(TimeSeriesPointDto, () {
    // Date in YYYY-MM-DD format
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Value at this date (in base currency)
    // String value
    test('to test the property `value`', () async {
      // TODO
    });

    // Change from previous point
    // JsonObject change
    test('to test the property `change`', () async {
      // TODO
    });

    // Total assets at this date (in base currency)
    // String assets
    test('to test the property `assets`', () async {
      // TODO
    });

    // Total liabilities at this date (in base currency)
    // String liabilities
    test('to test the property `liabilities`', () async {
      // TODO
    });

    // Multi-currency breakdown for this point
    // BuiltList<CurrencyBalanceDto> byCurrency
    test('to test the property `byCurrency`', () async {
      // TODO
    });

  });
}
