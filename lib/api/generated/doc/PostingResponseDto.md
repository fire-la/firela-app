# firela_api.model.PostingResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Account name | 
**units** | **String** | Amount as decimal string. Typed optional but always present in responses: interpolation fills any MISSING posting before it is persisted or returned. | [optional] 
**currency** | **String** | Currency | [optional] 
**cost** | [**CostDetailDto**](CostDetailDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


