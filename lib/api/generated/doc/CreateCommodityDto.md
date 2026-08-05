# firela_api.model.CreateCommodityDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**symbol** | **String** | Commodity symbol (e.g., AAPL, USD, BTC) - corresponds to Beancount currency field | 
**date** | [**Date**](Date.md) | Commodity definition date (ISO 8601, required per Beancount spec). Represents when this commodity was first defined in the accounting system. | 
**metadata** | [**JsonObject**](.md) | Metadata (corresponds to Beancount meta field). Can contain name, assetClass, precision, note, tags, etc. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


