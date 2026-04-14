import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for AssetClassGroupDto
void main() {
  final instance = AssetClassGroupDtoBuilder();
  // TODO add properties to the builder and call build()

  group(AssetClassGroupDto, () {
    // Asset class name
    // String assetClass
    test('to test the property `assetClass`', () async {
      // TODO
    });

    // Accounts within this asset class
    // BuiltList<AccountItemWithAssetClassDto> accounts
    test('to test the property `accounts`', () async {
      // TODO
    });

    // Balances grouped by currency
    // BuiltList<BalanceByCurrencyDto> balanceByCurrency
    test('to test the property `balanceByCurrency`', () async {
      // TODO
    });

    // Asset sub-class name
    // String assetSubClass
    test('to test the property `assetSubClass`', () async {
      // TODO
    });

    // Converted balance in base currency
    // String convertedBalance
    test('to test the property `convertedBalance`', () async {
      // TODO
    });
  });
}
