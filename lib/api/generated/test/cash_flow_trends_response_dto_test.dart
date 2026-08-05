import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CashFlowTrendsResponseDto
void main() {
  final instance = CashFlowTrendsResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CashFlowTrendsResponseDto, () {
    // Monthly cash-flow series (fixed N-month window, zero-filled)
    // BuiltList<CashFlowPointDto> series
    test('to test the property `series`', () async {
      // TODO
    });

    // CashFlowTrendSummaryDto summary
    test('to test the property `summary`', () async {
      // TODO
    });

    // Period requested
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Data granularity (v1 returns month buckets)
    // String granularity
    test('to test the property `granularity`', () async {
      // TODO
    });

    // Base currency for converted values
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Exchange rate warnings (e.g. missing rate for a currency)
    // BuiltList<ExchangeRateWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

  });
}
