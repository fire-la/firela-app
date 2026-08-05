import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PlatformMatchResponseDto
void main() {
  final instance = PlatformMatchResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PlatformMatchResponseDto, () {
    // Ranked matches, best tier first (at most 10 rows)
    // BuiltList<PlatformMatchResultDto> platforms
    test('to test the property `platforms`', () async {
      // TODO
    });

    // Overall match quality — top row's tier, or 'none' when no hits
    // String matchType
    test('to test the property `matchType`', () async {
      // TODO
    });

    // Total matches before LIMIT (truncation transparency)
    // num total
    test('to test the property `total`', () async {
      // TODO
    });

    // true when total > platforms.length (more matches exist)
    // bool hasMore
    test('to test the property `hasMore`', () async {
      // TODO
    });

  });
}
