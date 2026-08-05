# firela_api.model.SymbolQuoteDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** |  | [optional] 
**name** | [**JsonObject**](.md) |  | [optional] 
**exchange** | [**JsonObject**](.md) |  | [optional] 
**assetType** | [**JsonObject**](.md) | OpenBB asset_type | [optional] 
**assetClass** | [**JsonObject**](.md) | IGN asset class | [optional] 
**assetSubClass** | [**JsonObject**](.md) | IGN asset sub-class | [optional] 
**currency** | [**JsonObject**](.md) | Trading currency (extra_data or inferred from exchange) | [optional] 
**price** | [**JsonObject**](.md) | Latest price (Decimal string) | [optional] 
**priceDate** | [**JsonObject**](.md) | Date the price was observed (ISO yyyy-MM-dd) | [optional] 
**changePercent** | [**JsonObject**](.md) | Change vs previous close, in percentage points (1.7 == 1.7%). openbb stores change_percent as a normalized decimal; this exposes percentage points for frontend convenience. | [optional] 
**prevClose** | [**JsonObject**](.md) | Previous close (Decimal string) | [optional] 
**open** | [**JsonObject**](.md) | Day open (Decimal string) | [optional] 
**high** | [**JsonObject**](.md) | Day high (Decimal string) | [optional] 
**low** | [**JsonObject**](.md) | Day low (Decimal string) | [optional] 
**volume** | [**JsonObject**](.md) | Day volume (Decimal string) | [optional] 
**yearHigh** | [**JsonObject**](.md) | 52-week high (Decimal string) | [optional] 
**yearLow** | [**JsonObject**](.md) | 52-week low (Decimal string) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


