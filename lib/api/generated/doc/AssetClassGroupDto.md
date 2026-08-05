# firela_api.model.AssetClassGroupDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assetClass** | **String** | Asset class name | 
**assetSubClass** | **String** | Asset sub-class name | [optional] 
**accounts** | [**BuiltList&lt;AccountItemWithAssetClassDto&gt;**](AccountItemWithAssetClassDto.md) | Accounts within this asset class | 
**balanceByCurrency** | [**BuiltList&lt;BalanceByCurrencyDto&gt;**](BalanceByCurrencyDto.md) | Balances grouped by currency | 
**convertedBalance** | **String** | Converted balance in base currency | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


