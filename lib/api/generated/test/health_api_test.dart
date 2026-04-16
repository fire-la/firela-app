import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for HealthApi
void main() {
  final instance = FirelaApi().getHealthApi();

  group(HealthApi, () {
    // Health check
    //
    // Returns the health status of the API service
    //
    //Future<HealthResponse> getHealth() async
    test('test getHealth', () async {
      // TODO
    });
  });
}
