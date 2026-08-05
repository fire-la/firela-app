# firela_api.model.TransactionResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactionId** | **String** | Database transaction ID | 
**idempotencyKey** | **String** | Idempotency key if provided during creation | [optional] 
**date** | **String** | Transaction date | 
**flag** | **String** | Transaction flag | [optional] 
**payee** | **String** | Payee name | [optional] 
**narration** | **String** | Transaction narration | 
**postings** | [**BuiltList&lt;PostingResponseDto&gt;**](PostingResponseDto.md) | Transaction postings | 
**interpolated** | **bool** | Whether interpolation was applied to balance the transaction | 
**booked** | **bool** | Whether booking (cost resolution) was applied | 
**warnings** | **BuiltList&lt;String&gt;** | Non-blocking warnings from pipeline processing | [optional] 
**createdAccountIds** | **BuiltList&lt;String&gt;** | Account IDs auto-created for this transaction (empty for API source) | 
**recurringSuggestion** | [**RecurringSuggestionDto**](RecurringSuggestionDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


