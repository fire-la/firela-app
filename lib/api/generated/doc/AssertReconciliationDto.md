# firela_api.model.AssertReconciliationDto

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
**tolerance** | **String** | Optional explicit tolerance override. Omit to infer from amount precision (Beancount default). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


