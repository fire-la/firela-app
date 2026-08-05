# firela_api.model.TransactionListSummaryDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalAmount** | **String** | Partial converted total in base currency (rated currencies only, raw Beancount sign). When warnings is non-empty this excludes currencies missing an FX rate; may be \"0.00\" if ALL non-base currencies lack a rate. Converted at the dateTo (or current) available rate. | 
**currency** | **String** | Base currency (ISO 4217) | 
**balanceByCurrency** | [**BuiltList&lt;BalanceByCurrencyDto&gt;**](BalanceByCurrencyDto.md) | Raw (unconverted) balance per currency | 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Currencies missing an FX rate (omitted when empty) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


