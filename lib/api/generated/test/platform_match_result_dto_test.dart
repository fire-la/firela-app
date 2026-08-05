import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PlatformMatchResultDto
void main() {
  final instance = PlatformMatchResultDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PlatformMatchResultDto, () {
    // Global platform ID
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Platform name (e.g., \"ICBC\")
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\")
    // String canonical
    test('to test the property `canonical`', () async {
      // TODO
    });

    // Platform type
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Suggested path segment — canonical, already in ACCOUNT_RE format
    // String suggestedSegment
    test('to test the property `suggestedSegment`', () async {
      // TODO
    });

    // Logo URL
    // String logoUrl
    test('to test the property `logoUrl`', () async {
      // TODO
    });

    // How this row matched: 'exact' > 'prefix' > 'substring'
    // String matchType
    test('to test the property `matchType`', () async {
      // TODO
    });

  });
}
