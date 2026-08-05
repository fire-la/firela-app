# firela_api.model.UpdateCommodityDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**Date**](Date.md) | Commodity definition date (ISO 8601). Represents when this commodity was first defined in the accounting system. | [optional] 
**metadata** | [**JsonObject**](.md) | Metadata (corresponds to Beancount meta field). Will merge with existing metadata. Can contain name, assetClass, precision, note, tags, etc. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


