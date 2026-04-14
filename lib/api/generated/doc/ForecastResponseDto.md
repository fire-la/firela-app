# firela_api.model.ForecastResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**forecast** | [**BuiltList&lt;MonthlyForecastDto&gt;**](MonthlyForecastDto.md) | Monthly forecast data | 
**totalOutflow** | **num** | Total expected outflow across all months | 
**totalByCurrency** | [**JsonObject**](.md) | Total by currency across all months | 
**rulesCount** | **num** | Number of active recurring rules included | 
**periodStart** | **String** | Forecast period start date | 
**periodEnd** | **String** | Forecast period end date | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


