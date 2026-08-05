import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CostSpecDto
void main() {
  final instance = CostSpecDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CostSpecDto, () {
    // Cost specification mode (mirrors engine CostSpec)
    // String mode
    test('to test the property `mode`', () async {
      // TODO
    });

    // Per-unit cost (required when mode is \"per-unit\")
    // String numberPerUnit
    test('to test the property `numberPerUnit`', () async {
      // TODO
    });

    // Total cost for all units (required when mode is \"total\")
    // String totalNumber
    test('to test the property `totalNumber`', () async {
      // TODO
    });

    // Cost currency (required in all modes)
    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Lot acquisition date, ISO 8601 (required when mode is \"date\")
    // String date
    test('to test the property `date`', () async {
      // TODO
    });

    // Lot label (required when mode is \"label\"; optional tag in buy modes)
    // String label
    test('to test the property `label`', () async {
      // TODO
    });

    // Merge lots for AVERAGE booking (mode: auto)
    // bool merge
    test('to test the property `merge`', () async {
      // TODO
    });

  });
}
