import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for EventResponseDto
void main() {
  final instance = EventResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(EventResponseDto, () {
    // Unique identifier
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // User ID (owner of the life event)
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Life event date (ISO 8601 format)
    // Date date
    test('to test the property `date`', () async {
      // TODO
    });

    // Life event type (user-defined, e.g., \"employer\", \"location\")
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Life event description. May be an empty string (a valid value distinct from absence).
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Product-side metadata (free-form JSON)
    // JsonObject meta
    test('to test the property `meta`', () async {
      // TODO
    });

    // Creation timestamp
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Last update timestamp. Also emitted as the ETag response header for If-Match optimistic concurrency.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
