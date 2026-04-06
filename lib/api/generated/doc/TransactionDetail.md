# firela_api.model.TransactionDetail

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date** | [**Date**](Date.md) |  | 
**narration** | **String** |  | 
**status** | [**TxnStatus**](TxnStatus.md) |  | 
**postings** | [**BuiltList&lt;Posting&gt;**](Posting.md) |  | 
**flag** | [**TransactionFlag**](TransactionFlag.md) |  | [optional] 
**customFlag** | **String** |  | [optional] 
**payee** | **String** |  | [optional] 
**tags** | **BuiltList&lt;String&gt;** |  | [optional] 
**links** | **BuiltList&lt;String&gt;** |  | [optional] 
**meta** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**sourceType** | **String** |  | [optional] 
**sourcePlatform** | **String** |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**voidedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**voidedBy** | **String** |  | [optional] 
**correctionReason** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


