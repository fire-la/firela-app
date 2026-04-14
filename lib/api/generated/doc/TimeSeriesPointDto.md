# firela_api.model.TimeSeriesPointDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Date in YYYY-MM-DD format | 
**value** | **String** | Value at this date (in base currency) | 
**change** | [**JsonObject**](.md) | Change from previous point | [optional] 
**byCurrency** | [**BuiltList&lt;CurrencyBalanceDto&gt;**](CurrencyBalanceDto.md) | Multi-currency breakdown for this point | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


