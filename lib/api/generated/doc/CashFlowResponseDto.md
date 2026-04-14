# firela_api.model.CashFlowResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | **String** | Period identifier (YYYY-MM) | 
**income** | **String** | Total income for the period (converted) | 
**expense** | **String** | Total expenses for the period (converted) | 
**netSavings** | **String** | Net savings (income - expense, converted) | 
**savingsRate** | **String** | Savings rate percentage (netSavings / income * 100) | 
**currency** | **String** | Base currency code | 
**byCurrency** | [**CashFlowByCurrencyDto**](CashFlowByCurrencyDto.md) |  | [optional] 
**converted** | [**ConvertedCashFlowDto**](ConvertedCashFlowDto.md) |  | [optional] 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Exchange rate warnings | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


