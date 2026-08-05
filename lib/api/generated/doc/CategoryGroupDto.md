# firela_api.model.CategoryGroupDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **String** | Functional category (account-path Group segment); regional and universal account paths merge under it | 
**totalExpense** | **String** | Converted total for this category in base currency (expense amount when flow=expense, income amount when flow=income) | 
**sharePct** | **num** | Share of grand total (0-100); 0 when grand total is 0 | 
**balanceByCurrency** | [**BuiltList&lt;BalanceByCurrencyDto&gt;**](BalanceByCurrencyDto.md) | Raw (unconverted) expense per currency | 
**convertedBalance** | **String** | Converted total in base currency (omitted when FX missing for all currencies in this category) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


