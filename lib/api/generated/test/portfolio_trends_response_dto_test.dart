import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PortfolioTrendsResponseDto
void main() {
  final instance = PortfolioTrendsResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PortfolioTrendsResponseDto, () {
    // Time series data points
    // BuiltList<TimeSeriesPointDto> series
    test('to test the property `series`', () async {
      // TODO
    });

    // TrendSummaryDto summary
    test('to test the property `summary`', () async {
      // TODO
    });

    // Period requested
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Data granularity
    // String granularity
    test('to test the property `granularity`', () async {
      // TODO
    });

    // Base currency for converted values
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Multi-currency time series (each point has currency breakdown)
    // BuiltList<MultiCurrencyPointDto> byCurrency
    test('to test the property `byCurrency`', () async {
      // TODO
    });

    // Exchange rate warnings
    // BuiltList<ExchangeRateWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });
  });
}
