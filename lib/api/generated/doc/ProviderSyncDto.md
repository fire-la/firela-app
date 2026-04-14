# firela_api.model.ProviderSyncDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | [**ProviderSyncConfigDto**](ProviderSyncConfigDto.md) |  | 
**transactions** | [**BuiltList**](BuiltList.md) | Raw transactions from provider | 
**provider** | **String** | Provider name (already in URL path, optional here for reference) | [optional] 
**syncId** | **String** | Unique sync identifier for idempotency | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


