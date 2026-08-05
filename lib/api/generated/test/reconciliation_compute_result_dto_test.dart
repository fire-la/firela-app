import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ReconciliationComputeResultDto
void main() {
  final instance = ReconciliationComputeResultDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ReconciliationComputeResultDto, () {
    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // String asOfDate
    test('to test the property `asOfDate`', () async {
      // TODO
    });

    // System-computed book balance (decimal string).
    // String bookBalance
    test('to test the property `bookBalance`', () async {
      // TODO
    });

    // User-entered actual balance (decimal string).
    // String actualBalance
    test('to test the property `actualBalance`', () async {
      // TODO
    });

    // String currency
    test('to test the property `currency`', () async {
      // TODO
    });

    // Diff = book − actual (decimal string).
    // String diff
    test('to test the property `diff`', () async {
      // TODO
    });

    // Applied tolerance (decimal string).
    // String tolerance
    test('to test the property `tolerance`', () async {
      // TODO
    });

    // true when |diff| ≤ tolerance.
    // bool withinTolerance
    test('to test the property `withinTolerance`', () async {
      // TODO
    });

    // Suggested next action: assert when within tolerance, pad otherwise.
    // String suggestedAction
    test('to test the property `suggestedAction`', () async {
      // TODO
    });

  });
}
