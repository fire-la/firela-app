# firela_api.model.AssetClassSummaryDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**totalAccounts** | **num** | Total number of accounts | 
**totalAssetClasses** | **num** | Total number of asset classes | 
**baseCurrency** | **String** | Base currency for conversion | 
**warnings** | [**BuiltList&lt;AccountExchangeRateWarningDto&gt;**](AccountExchangeRateWarningDto.md) | Exchange rate warnings | [optional] 
**fallback** | [**JsonObject**](.md) | ADR-0105 §4 fallback provenance stats (holding level only). valueRatio is the grey-area share of total converted value; count is the number of source=FALLBACK holdings. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


