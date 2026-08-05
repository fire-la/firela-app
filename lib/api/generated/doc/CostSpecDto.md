# firela_api.model.CostSpecDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mode** | **String** | Cost specification mode (mirrors engine CostSpec) | 
**numberPerUnit** | **String** | Per-unit cost (required when mode is \"per-unit\") | [optional] 
**totalNumber** | **String** | Total cost for all units (required when mode is \"total\") | [optional] 
**currency** | **String** | Cost currency (required in all modes) | 
**date** | **String** | Lot acquisition date, ISO 8601 (required when mode is \"date\") | [optional] 
**label** | **String** | Lot label (required when mode is \"label\"; optional tag in buy modes) | [optional] 
**merge** | **bool** | Merge lots for AVERAGE booking (mode: auto) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


