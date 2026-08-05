# firela_api.model.ExpensesByCategoryResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | **String** | Period requested | 
**baseCurrency** | **String** | Base currency for converted values | 
**groups** | [**BuiltList&lt;CategoryGroupDto&gt;**](CategoryGroupDto.md) | Expense groups by functional category, sorted by converted total desc | 
**summary** | [**ExpensesByCategorySummaryDto**](ExpensesByCategorySummaryDto.md) |  | 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Exchange rate warnings (e.g. missing rate for a currency) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


