# firela_api.model.PortfolioTrendsResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**series** | [**BuiltList&lt;TimeSeriesPointDto&gt;**](TimeSeriesPointDto.md) | Time series data points | 
**summary** | [**TrendSummaryDto**](TrendSummaryDto.md) |  | 
**period** | **String** | Period requested | 
**granularity** | **String** | Data granularity | 
**currency** | **String** | Base currency for converted values | 
**byCurrency** | [**BuiltList&lt;MultiCurrencyPointDto&gt;**](MultiCurrencyPointDto.md) | Multi-currency time series (each point has currency breakdown) | [optional] 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Exchange rate warnings | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


