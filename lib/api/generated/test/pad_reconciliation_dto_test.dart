import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PadReconciliationDto
void main() {
  final instance = PadReconciliationDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PadReconciliationDto, () {
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

    // Pad source account. Defaults to Equity:Opening-Balances (official Beancount convention).
    // String sourceAccount (default value: 'Equity:Opening-Balances')
    test('to test the property `sourceAccount`', () async {
      // TODO
    });

  });
}
