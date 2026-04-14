import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for APIKeysApi
void main() {
  final instance = FirelaApi().getAPIKeysApi();

  group(APIKeysApi, () {
    //Future apiKeysController(String region) async
    test('test apiKeysController', () async {
      // TODO
    });
  });
}
