# firela_api.model.HoldingAssetClassAccountSliceDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | Account ID | 
**accountPath** | **String** | Full account path | 
**accountCurrency** | **String** | Currency of the holding with the largest converted base value; undefined when no holding is convertible | [optional] 
**marketValueBase** | **String** | Account's market value in base currency (Σ converted holdings; grey bucket included) | 
**shareOfTotalPct** | **num** | Share of the global total (0-100). 0 when globalTotal is zero (no NaN/Infinity). | 
**groups** | [**BuiltList&lt;AssetClassGroupDto&gt;**](AssetClassGroupDto.md) | Per-account asset-class breakdown | 
**uncategorized** | [**AssetClassGroupDto**](AssetClassGroupDto.md) |  | [optional] 
**holdings** | [**BuiltList&lt;AccountItemWithAssetClassDto&gt;**](AccountItemWithAssetClassDto.md) | Every holding row for this account (account ID in each row’s `id` field) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


