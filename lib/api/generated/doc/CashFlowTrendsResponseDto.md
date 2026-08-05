# firela_api.model.CashFlowTrendsResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**series** | [**BuiltList&lt;CashFlowPointDto&gt;**](CashFlowPointDto.md) | Monthly cash-flow series (fixed N-month window, zero-filled) | 
**summary** | [**CashFlowTrendSummaryDto**](CashFlowTrendSummaryDto.md) |  | 
**period** | **String** | Period requested | 
**granularity** | **String** | Data granularity (v1 returns month buckets) | 
**currency** | **String** | Base currency for converted values | 
**warnings** | [**BuiltList&lt;ExchangeRateWarningDto&gt;**](ExchangeRateWarningDto.md) | Exchange rate warnings (e.g. missing rate for a currency) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


