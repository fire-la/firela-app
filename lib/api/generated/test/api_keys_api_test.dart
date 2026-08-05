import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for APIKeysApi
void main() {
  final instance = FirelaApi().getAPIKeysApi();

  group(APIKeysApi, () {
    // Create API key
    //
    // Generates a new API key for the authenticated user
    //
    //Future apiKeysControllerCreateApiKey() async
    test('test apiKeysControllerCreateApiKey', () async {
      // TODO
    });

  });
}
