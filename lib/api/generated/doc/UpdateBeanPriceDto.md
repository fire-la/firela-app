# firela_api.model.UpdateBeanPriceDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | Currency being priced | [optional] 
**quoteCurrency** | **String** | Quote currency (pricing currency) | [optional] 
**amount** | **num** | Price amount (MUST be >= 0 per Beancount spec) | [optional] 
**date** | **String** | Price date (ISO 8601 format) | [optional] 
**metadata** | [**JsonObject**](.md) | Metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


