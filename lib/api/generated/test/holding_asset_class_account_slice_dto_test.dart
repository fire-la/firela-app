import 'package:test/test.dart';
import 'package:firela_api/firela_api.dart';

// tests for HoldingAssetClassAccountSliceDto
void main() {
  final instance = HoldingAssetClassAccountSliceDtoBuilder();
  // TODO add properties to the builder and call build()

  group(HoldingAssetClassAccountSliceDto, () {
    // Account ID
    // String accountId
    test('to test the property `accountId`', () async {
      // TODO
    });

    // Full account path
    // String accountPath
    test('to test the property `accountPath`', () async {
      // TODO
    });

    // Currency of the holding with the largest converted base value; undefined when no holding is convertible
    // String accountCurrency
    test('to test the property `accountCurrency`', () async {
      // TODO
    });

    // Account's market value in base currency (Σ converted holdings; grey bucket included)
    // String marketValueBase
    test('to test the property `marketValueBase`', () async {
      // TODO
    });

    // Share of the global total (0-100). 0 when globalTotal is zero (no NaN/Infinity).
    // num shareOfTotalPct
    test('to test the property `shareOfTotalPct`', () async {
      // TODO
    });

    // Per-account asset-class breakdown
    // BuiltList<AssetClassGroupDto> groups
    test('to test the property `groups`', () async {
      // TODO
    });

    // AssetClassGroupDto uncategorized
    test('to test the property `uncategorized`', () async {
      // TODO
    });

    // Every holding row for this account (account ID in each row’s `id` field)
    // BuiltList<AccountItemWithAssetClassDto> holdings
    test('to test the property `holdings`', () async {
      // TODO
    });

  });
}
