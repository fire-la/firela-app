import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for ReportingApi
void main() {
  final instance = FirelaApi().getReportingApi();

  group(ReportingApi, () {
    // Backfill portfolio snapshots
    //
    //  Generate snapshots for a date range (historical data backfill).  **Multi-currency Support:** - Each snapshot includes multi-currency data - Uses exchange rates available at generation time - Warnings stored for missing exchange rates  **Best Practices:** - Use for initial setup after account configuration - Run during low-traffic periods for large date ranges - Existing snapshots are skipped (not regenerated)
    //
    //Future<JsonObject> reportingControllerBackfillSnapshots(String region, JsonObject body) async
    test('test reportingControllerBackfillSnapshots', () async {
      // TODO
    });

    // Generate portfolio snapshot
    //
    //  Manually generate a portfolio snapshot for a specific date.  **Multi-currency Support:** - Fetches balances grouped by currency - Uses user's baseCurrency setting for conversion - Stores exchange rates and warnings  **Use Cases:** - Testing snapshot generation - Force regeneration after data correction - Initial setup for new users
    //
    //Future<JsonObject> reportingControllerGenerateSnapshot(String region, JsonObject body) async
    test('test reportingControllerGenerateSnapshot', () async {
      // TODO
    });

    // Get portfolio value trends
    //
    //  Returns time series data of portfolio net worth.  **Multi-currency Support:** - `series[].byCurrency` - Currency breakdown for each data point - `byCurrency` - Separate time series grouped by currency - `warnings` - Exchange rate warnings if conversion failed  **Parameters:** - `period`: Time period (1m, 3m, 6m, 1y) - `granularity`: Data granularity (day, week, month)
    //
    //Future<PortfolioTrendsResponseDto> reportingControllerGetPortfolioTrends(String region, { String period, String granularity }) async
    test('test reportingControllerGetPortfolioTrends', () async {
      // TODO
    });
  });
}
