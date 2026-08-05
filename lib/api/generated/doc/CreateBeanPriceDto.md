# firela_api.model.CreateBeanPriceDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency** | **String** | Currency being priced (e.g., USD, AAPL, BTC) | 
**quoteCurrency** | **String** | Quote currency (pricing currency, e.g., CNY, EUR) | 
**amount** | **num** | Price amount (MUST be >= 0 per Beancount spec, supports up to 15 decimal places). Zero allowed for conversion entries, negative strictly prohibited. | 
**date** | **String** | Price date (ISO 8601 format) | 
**metadata** | [**JsonObject**](.md) | Metadata (validated by Zod schema, max field lengths enforced) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


