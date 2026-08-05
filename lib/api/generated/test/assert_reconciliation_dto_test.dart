import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for AssertReconciliationDto
void main() {
  final instance = AssertReconciliationDtoBuilder();
  // TODO add properties to the builder and call build()

  group(AssertReconciliationDto, () {
    // BeanAccount id to reconcile.
    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Assertion date (ISO 8601, e.g. \"2026-07-24\").
    // String asOfDate
    test('to test the property `asOfDate`', () async {
      // TODO
    });

    // ActualBalanceDto actualBalance
    test('to test the property `actualBalance`', () async {
      // TODO
    });

    // Optional explicit tolerance override. Omit to infer from amount precision (Beancount default).
    // String tolerance
    test('to test the property `tolerance`', () async {
      // TODO
    });

  });
}
