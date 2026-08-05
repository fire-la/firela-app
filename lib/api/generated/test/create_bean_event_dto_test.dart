import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateBeanEventDto
void main() {
  final instance = CreateBeanEventDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateBeanEventDto, () {
    // Life event date (ISO 8601)
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Life event type (e.g., \"employer\", \"location\", \"marital-status\") — user-defined, no enum constraint at engine layer
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Life event description. Empty string is a VALID value (distinct from absence).
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Product-side metadata (lives in BeanEvent.meta JSON, never in engine Event fields)
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

  });
}
