import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for MonthlyForecastDto
void main() {
  final instance = MonthlyForecastDtoBuilder();
  // TODO add properties to the builder and call build()

  group(MonthlyForecastDto, () {
    // Month (YYYY-MM)
    // String month
    test('to test the property `month`', () async {
      // TODO
    });

    // Total expected outflow for the month
    // num expectedOutflow
    test('to test the property `expectedOutflow`', () async {
      // TODO
    });

    // Number of expected transactions
    // num itemCount
    test('to test the property `itemCount`', () async {
      // TODO
    });

    // Breakdown by currency
    // JsonObject byCurrency
    test('to test the property `byCurrency`', () async {
      // TODO
    });

    // Individual forecast items
    // BuiltList<ForecastItemDto> items
    test('to test the property `items`', () async {
      // TODO
    });
  });
}
