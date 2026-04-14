# firela_api.model.TransactionResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transactionId** | **String** | Database transaction ID | 
**date** | **String** | Transaction date | 
**narration** | **String** | Transaction narration | 
**postings** | [**BuiltList&lt;PostingResponseDto&gt;**](PostingResponseDto.md) | Transaction postings | 
**interpolated** | **bool** | Whether interpolation was applied to balance the transaction | 
**booked** | **bool** | Whether booking (cost resolution) was applied | 
**createdAccountIds** | **BuiltList&lt;String&gt;** | Account IDs auto-created for this transaction (empty for API source) | 
**idempotencyKey** | **String** | Idempotency key if provided during creation | [optional] 
**flag** | **String** | Transaction flag | [optional] 
**payee** | **String** | Payee name | [optional] 
**warnings** | **BuiltList&lt;String&gt;** | Non-blocking warnings from pipeline processing | [optional] 
**recurringSuggestion** | [**RecurringSuggestionDto**](RecurringSuggestionDto.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


