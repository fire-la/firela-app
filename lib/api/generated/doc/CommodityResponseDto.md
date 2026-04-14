# firela_api.model.CommodityResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier | 
**symbol** | **String** | Commodity symbol (corresponds to Beancount currency field) | 
**date** | [**Date**](Date.md) | Commodity definition date (required per Beancount spec). Represents when this commodity was first defined in the accounting system. | 
**metadata** | [**JsonObject**](.md) | Metadata (corresponds to Beancount meta field). Contains name, assetClass, precision, note, tags, etc. | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 
**userId** | [**JsonObject**](.md) | User ID (owner of the commodity) | [optional] 
**symbolProfileId** | [**JsonObject**](.md) | Reference to SymbolProfile (market data integration, SaaS feature) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


