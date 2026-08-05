import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for UpdateCommodityDto
void main() {
  final instance = UpdateCommodityDtoBuilder();
  // TODO add properties to the builder and call build()

  group(UpdateCommodityDto, () {
    // Commodity definition date (ISO 8601). Represents when this commodity was first defined in the accounting system.
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Metadata (corresponds to Beancount meta field). Will merge with existing metadata. Can contain name, assetClass, precision, note, tags, etc.
    // JsonObject metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

  });
}
