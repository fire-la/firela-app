import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for ImportTelemetryApi
void main() {
  final instance = FirelaApi().getImportTelemetryApi();

  group(ImportTelemetryApi, () {
    // Coverage metrics (uncovered format aggregation)
    //
    //Future telemetryControllerGetCoverageMetrics(String region, { JsonObject topN }) async
    test('test telemetryControllerGetCoverageMetrics', () async {
      // TODO
    });

    // Receive anonymous zero-hit coverage miss report
    //
    //Future telemetryControllerReportCoverageMiss(String region, JsonObject body) async
    test('test telemetryControllerReportCoverageMiss', () async {
      // TODO
    });

    // Receive anonymous parser failure telemetry
    //
    //Future telemetryControllerReportTelemetry(String region, JsonObject body) async
    test('test telemetryControllerReportTelemetry', () async {
      // TODO
    });

  });
}
