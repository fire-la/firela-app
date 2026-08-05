# firela_api.model.SymbolSearchResultDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** |  | 
**name** | [**JsonObject**](.md) |  | [optional] 
**exchange** | [**JsonObject**](.md) |  | [optional] 
**assetType** | [**JsonObject**](.md) | OpenBB asset_type (e.g. stock, etf) | [optional] 
**assetClass** | [**JsonObject**](.md) | IGN asset class (region.types.ts ASSET_CLASSES) | [optional] 
**assetSubClass** | [**JsonObject**](.md) | IGN asset sub-class (region.types.ts ASSET_SUB_CLASSES) | [optional] 
**currency** | [**JsonObject**](.md) | Trading currency (extra_data or inferred from exchange) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


