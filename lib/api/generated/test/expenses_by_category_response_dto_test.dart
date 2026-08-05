import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for ExpensesByCategoryResponseDto
void main() {
  final instance = ExpensesByCategoryResponseDtoBuilder();
  // TODO add properties to the builder and call build()

  group(ExpensesByCategoryResponseDto, () {
    // Period requested
    // String period
    test('to test the property `period`', () async {
      // TODO
    });

    // Base currency for converted values
    // String baseCurrency
    test('to test the property `baseCurrency`', () async {
      // TODO
    });

    // Expense groups by functional category, sorted by converted total desc
    // BuiltList<CategoryGroupDto> groups
    test('to test the property `groups`', () async {
      // TODO
    });

    // ExpensesByCategorySummaryDto summary
    test('to test the property `summary`', () async {
      // TODO
    });

    // Exchange rate warnings (e.g. missing rate for a currency)
    // BuiltList<ExchangeRateWarningDto> warnings
    test('to test the property `warnings`', () async {
      // TODO
    });

  });
}
