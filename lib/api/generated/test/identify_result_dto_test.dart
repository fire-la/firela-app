import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for IdentifyResultDto
void main() {
  final instance = IdentifyResultDtoBuilder();
  // TODO add properties to the builder and call build()

  group(IdentifyResultDto, () {
    // Whether the file was successfully identified
    // bool identified
    test('to test the property `identified`', () async {
      // TODO
    });

    // Name of the importer that can handle this file
    // String importerName
    test('to test the property `importerName`', () async {
      // TODO
    });

    // Unique identifier of the importer
    // String importerId
    test('to test the property `importerId`', () async {
      // TODO
    });

    // Default account used by this importer
    // String account
    test('to test the property `account`', () async {
      // TODO
    });

    // Message when file cannot be identified
    // String message
    test('to test the property `message`', () async {
      // TODO
    });
  });
}
