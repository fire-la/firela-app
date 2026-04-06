# firela_api.model.TransactionResponse

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactionId** | **String** |  | 
**date** | [**Date**](Date.md) |  | 
**narration** | **String** |  | 
**postings** | [**BuiltList&lt;Posting&gt;**](Posting.md) |  | 
**idempotencyKey** | **String** |  | [optional] 
**flag** | [**TransactionFlag**](TransactionFlag.md) |  | [optional] 
**payee** | **String** |  | [optional] 
**interpolated** | **bool** |  | [optional] 
**booked** | **bool** |  | [optional] 
**warnings** | **BuiltList&lt;String&gt;** |  | [optional] 
**createdAccountIds** | **BuiltList&lt;String&gt;** |  | [optional] 
**recurringSuggestion** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


