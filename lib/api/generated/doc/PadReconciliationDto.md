# firela_api.model.PadReconciliationDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | BeanAccount id to reconcile. | 
**asOfDate** | **String** | Assertion date (ISO 8601, e.g. \"2026-07-24\"). | 
**actualBalance** | [**ActualBalanceDto**](ActualBalanceDto.md) |  | 
**sourceAccount** | **String** | Pad source account. Defaults to Equity:Opening-Balances (official Beancount convention). | [optional] [default to 'Equity:Opening-Balances']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


