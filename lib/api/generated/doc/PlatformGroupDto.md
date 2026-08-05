# firela_api.model.PlatformGroupDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platformId** | **String** | Platform ID | 
**platformName** | **String** | Platform display name | 
**accounts** | [**BuiltList&lt;AccountItemDto&gt;**](AccountItemDto.md) | Accounts within this platform | 
**totalBalance** | **String** | FX-converted total balance in base currency | 
**balanceByCurrency** | [**BuiltList&lt;BalanceByCurrencyDto&gt;**](BalanceByCurrencyDto.md) | Raw (unconverted) balances grouped by currency | 
**convertedBalance** | **String** | Converted balance in base currency (omitted when no currency is convertible) | [optional] 
**sharePct** | **num** | Share of the grand converted total (0-100); 0 when grand total is 0 | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


