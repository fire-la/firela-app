# firela_api.model.PlatformMatchResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**platforms** | [**BuiltList&lt;PlatformMatchResultDto&gt;**](PlatformMatchResultDto.md) | Ranked matches, best tier first (at most 10 rows) | 
**matchType** | **String** | Overall match quality — top row's tier, or 'none' when no hits | 
**total** | **num** | Total matches before LIMIT (truncation transparency) | 
**hasMore** | **bool** | true when total > platforms.length (more matches exist) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


