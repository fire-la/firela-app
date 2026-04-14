# firela_api.model.CreatePostingDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Account name in Beancount format (must start with uppercase, colon-separated) | 
**units** | **String** | Amount as decimal string (max 15 integer + 15 decimal digits). Can be omitted for interpolation, but currency must also be omitted. | [optional] 
**currency** | **String** | Currency/commodity code. Required if units is provided, must be omitted if units is omitted. | [optional] 
**meta** | [**JsonObject**](.md) | Posting-level metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


