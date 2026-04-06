# firela_api.model.CreatePostingRequest

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account** | **String** | Full Beancount account path (e.g., \"Assets:Bank:Checking\") | 
**units** | **String** | Decimal string for precision (e.g., \"100.50\") | [optional] 
**currency** | **String** | Currency code if units provided | [optional] 
**meta** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


