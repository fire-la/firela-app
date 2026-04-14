import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ForecastResponseDto
void main() {
  final instance = ForecastResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ForecastResponseDto, () {
    // Monthly forecast data
    // BuiltList<MonthlyForecastDto> forecast
    test('to test the property `forecast`', () async {
      // TODO
    });

    // Total expected outflow across all months
    // num totalOutflow
    test('to test the property `totalOutflow`', () async {
      // TODO
    });

    // Total by currency across all months
    // JsonObject totalByCurrency
    test('to test the property `totalByCurrency`', () async {
      // TODO
    });

    // Number of active recurring rules included
    // num rulesCount
    test('to test the property `rulesCount`', () async {
      // TODO
    });

    // Forecast period start date
    // String periodStart
    test('to test the property `periodStart`', () async {
      // TODO
    });

    // Forecast period end date
    // String periodEnd
    test('to test the property `periodEnd`', () async {
      // TODO
    });
  });
}
