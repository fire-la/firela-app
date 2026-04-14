# firela_api.model.ImporterConfigDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Configuration ID | 
**userId** | **String** | User ID | 
**importerId** | **String** | Importer identifier | 
**version** | **String** | Configuration version (semver) | 
**schema** | **String** | Configuration schema identifier | 
**config** | [**VersionedConfigDto**](VersionedConfigDto.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


