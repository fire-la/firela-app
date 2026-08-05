import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for CategoryGroupDto
void main() {
  final instance = CategoryGroupDtoBuilder();
  // TODO add properties to the builder and call build()

  group(CategoryGroupDto, () {
    // Functional category (account-path Group segment); regional and universal account paths merge under it
    // String category
    test('to test the property `category`', () async {
      // TODO
    });

    // Converted total for this category in base currency (expense amount when flow=expense, income amount when flow=income)
    // String totalExpense
    test('to test the property `totalExpense`', () async {
      // TODO
    });

    // Share of grand total (0-100); 0 when grand total is 0
    // num sharePct
    test('to test the property `sharePct`', () async {
      // TODO
    });

    // Raw (unconverted) expense per currency
    // BuiltList<BalanceByCurrencyDto> balanceByCurrency
    test('to test the property `balanceByCurrency`', () async {
      // TODO
    });

    // Converted total in base currency (omitted when FX missing for all currencies in this category)
    // String convertedBalance
    test('to test the property `convertedBalance`', () async {
      // TODO
    });

  });
}
