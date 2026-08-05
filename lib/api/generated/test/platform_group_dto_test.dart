import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for PlatformGroupDto
void main() {
  final instance = PlatformGroupDtoBuilder();
  // TODO add properties to the builder and call build()

  group(PlatformGroupDto, () {
    // Platform ID
    // String platformId
    test('to test the property `platformId`', () async {
      // TODO
    });

    // Platform display name
    // String platformName
    test('to test the property `platformName`', () async {
      // TODO
    });

    // Accounts within this platform
    // BuiltList<AccountItemDto> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // FX-converted total balance in base currency
    // String totalBalance
    test('to test the property `totalBalance`', () async {
      // TODO
    });

    // Raw (unconverted) balances grouped by currency
    // BuiltList<BalanceByCurrencyDto> balanceByCurrency
    test('to test the property `balanceByCurrency`', () async {
      // TODO
    });

    // Converted balance in base currency (omitted when no currency is convertible)
    // String convertedBalance
    test('to test the property `convertedBalance`', () async {
      // TODO
    });

    // Share of the grand converted total (0-100); 0 when grand total is 0
    // num sharePct
    test('to test the property `sharePct`', () async {
      // TODO
    });

  });
}
