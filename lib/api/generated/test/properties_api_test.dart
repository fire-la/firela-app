import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';


/// tests for PropertiesApi
void main() {
  final instance = FirelaApi().getPropertiesApi();

  group(PropertiesApi, () {
    // Delete a system property
    //
    //Future propertyControllerDelete(String key) async
    test('test propertyControllerDelete', () async {
      // TODO
    });

    // Get all system properties
    //
    //Future propertyControllerGetAll() async
    test('test propertyControllerGetAll', () async {
      // TODO
    });

    // Get property by key
    //
    //Future propertyControllerGetByKey(String key) async
    test('test propertyControllerGetByKey', () async {
      // TODO
    });

    // Update a system property
    //
    //Future propertyControllerUpdate(String key, UpdatePropertyDto updatePropertyDto) async
    test('test propertyControllerUpdate', () async {
      // TODO
    });

  });
}
