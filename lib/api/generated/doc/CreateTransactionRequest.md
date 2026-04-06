# firela_api.model.CreateTransactionRequest

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | [**Date**](Date.md) |  | 
**narration** | **String** |  | 
**postings** | [**BuiltList&lt;CreatePostingRequest&gt;**](CreatePostingRequest.md) |  | 
**flag** | **String** | Transaction flag: '*' = complete, '!' = incomplete | [optional] [default to '*']
**payee** | **String** |  | [optional] 
**tags** | **BuiltList&lt;String&gt;** |  | [optional] 
**links** | **BuiltList&lt;String&gt;** |  | [optional] 
**meta** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**idempotencyKey** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


