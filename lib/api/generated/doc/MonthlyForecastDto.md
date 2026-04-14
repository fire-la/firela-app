# firela_api.model.MonthlyForecastDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **String** | Month (YYYY-MM) | 
**expectedOutflow** | **num** | Total expected outflow for the month | 
**itemCount** | **num** | Number of expected transactions | 
**byCurrency** | [**JsonObject**](.md) | Breakdown by currency | 
**items** | [**BuiltList&lt;ForecastItemDto&gt;**](ForecastItemDto.md) | Individual forecast items | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


