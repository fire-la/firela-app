import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CreateRecurringRuleDto
void main() {
  final instance = CreateRecurringRuleDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CreateRecurringRuleDto, () {
    // Rule name (unique per user)
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Icon emoji
    // String icon
    test('to test the property `icon`', () async {
      // TODO
    });

    // Recurring frequency
    // String frequency
    test('to test the property `frequency`', () async {
      // TODO
    });

    // Expected amount (positive number)
    // num expectedAmount
    test('to test the property `expectedAmount`', () async {
      // TODO
    });

    // Expected day of month (1-31)
    // num expectedDay
    test('to test the property `expectedDay`', () async {
      // TODO
    });

    // Custom interval in days (required for CUSTOM frequency)
    // num customIntervalDays
    test('to test the property `customIntervalDays`', () async {
      // TODO
    });

    // Currency code
    // String currency (default value: 'CNY')
    test('to test the property `currency`', () async {
      // TODO
    });

    // Payee matching pattern (supports wildcards)
    // String matchPayeePattern
    test('to test the property `matchPayeePattern`', () async {
      // TODO
    });

    // Amount tolerance percentage (0-1)
    // num matchAmountTolerance (default value: 0.075)
    test('to test the property `matchAmountTolerance`', () async {
      // TODO
    });

    // Default expense account for auto-create
    // String defaultExpenseAccount
    test('to test the property `defaultExpenseAccount`', () async {
      // TODO
    });

    // Default payment account for auto-create
    // String defaultPaymentAccount
    test('to test the property `defaultPaymentAccount`', () async {
      // TODO
    });

    // Default payee for auto-create
    // String defaultPayee
    test('to test the property `defaultPayee`', () async {
      // TODO
    });

    // Auto-create transaction when expected date arrives
    // bool autoCreate (default value: false)
    test('to test the property `autoCreate`', () async {
      // TODO
    });

    // Rule start date (ISO format)
    // String startDate
    test('to test the property `startDate`', () async {
      // TODO
    });

    // Rule end date (ISO format)
    // String endDate
    test('to test the property `endDate`', () async {
      // TODO
    });

  });
}
