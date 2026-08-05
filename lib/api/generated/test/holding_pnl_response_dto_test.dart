import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for HoldingPnlResponseDto
void main() {
  final instance = HoldingPnlResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(HoldingPnlResponseDto, () {
    // String asOfDate
    test('to test the property `asOfDate`', () async {
      // TODO
    });

    // String baseCurrency
    test('to test the property `baseCurrency`', () async {
      // TODO
    });

    // Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473).
    // String method
    test('to test the property `method`', () async {
      // TODO
    });

    // BuiltList<HoldingPnlRowDto> rows
    test('to test the property `rows`', () async {
      // TODO
    });

    // BuiltList<HoldingPnlWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

  });
}
