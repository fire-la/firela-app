# firela_api.model.NetWorthResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**netWorth** | **String** | Total net worth (assets - liabilities, converted to base currency) | 
**assets** | **String** | Total assets value (converted) | 
**liabilities** | **String** | Total liabilities value (positive number, converted) | 
**monthlyReturn** | **String** | Monthly return (change from last month) | 
**monthlyReturnPercentage** | **String** | Monthly return percentage | 
**currency** | **String** | Base currency code | 
**asOf** | **String** | Data as of date (ISO 8601) | 
**byCurrency** | [**NetWorthByCurrencyDto**](NetWorthByCurrencyDto.md) |  | [optional] 
**converted** | [**ConvertedNetWorthDto**](ConvertedNetWorthDto.md) |  | [optional] 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Exchange rate warnings | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


