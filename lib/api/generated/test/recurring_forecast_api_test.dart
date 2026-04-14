import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for RecurringForecastApi
void main() {
  final instance = FirelaApi().getRecurringForecastApi();

  group(RecurringForecastApi, () {
    // Get cash flow forecast
    //
    // Returns predicted outflows for the next N months based on active recurring rules
    //
    //Future<ForecastResponseDto> forecastControllerGetForecast(String region, { num months }) async
    test('test forecastControllerGetForecast', () async {
      // TODO
    });
  });
}
