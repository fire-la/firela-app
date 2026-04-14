# firela_api.model.CreateTransactionDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Transaction date (ISO 8601 format) | 
**narration** | **String** | Transaction narration/description | 
**postings** | [**BuiltList&lt;CreatePostingDto&gt;**](CreatePostingDto.md) | Transaction postings (minimum 1, typically 2 for double-entry) | 
**flag** | **String** | Transaction flag: * (cleared), ! (pending) | [optional] 
**payee** | **String** | Payee name | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Transaction tags (without # prefix) | [optional] 
**links** | **BuiltList&lt;String&gt;** | Transaction links (without ^ prefix) | [optional] 
**meta** | [**JsonObject**](.md) | Transaction-level metadata | [optional] 
**idempotencyKey** | **String** | Unique key for idempotent transaction creation. If provided, duplicate requests with the same key will return the existing transaction. | [optional] 
**autoCreateAccounts** | **bool** | Auto-create accounts if not found. When true, missing accounts will be automatically created. When false (default for API), missing accounts will cause a validation error. Set to true for quick entry scenarios where you want to create accounts on-the-fly. | [optional] [default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


