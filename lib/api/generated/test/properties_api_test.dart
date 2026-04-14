import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

/// tests for PropertiesApi
void main() {
  final instance = FirelaApi().getPropertiesApi();

  group(PropertiesApi, () {
    //Future propertyController(String region) async
    test('test propertyController', () async {
      // TODO
    });

    // Get all system properties
    //
    //Future propertyControllerGetAll(String region) async
    test('test propertyControllerGetAll', () async {
      // TODO
    });

    // Get property by key
    //
    //Future propertyControllerGetByKey(String key, String region) async
    test('test propertyControllerGetByKey', () async {
      // TODO
    });

    //Future propertyController_0(String region) async
    test('test propertyController_0', () async {
      // TODO
    });
  });
}
