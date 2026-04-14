# firela_api.model.TransactionDetailDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Transaction ID | 
**date** | **String** | Transaction date | 
**narration** | **String** | Transaction narration | 
**tags** | **BuiltList&lt;String&gt;** | Transaction tags | 
**links** | **BuiltList&lt;String&gt;** | Transaction links | 
**status** | **String** | Transaction status | 
**postings** | [**BuiltList&lt;PostingDetailDto&gt;**](PostingDetailDto.md) | Transaction postings | 
**createdAt** | **String** | Created at timestamp | 
**flag** | **String** | Transaction flag | [optional] 
**customFlag** | **String** | Custom flag (if not using standard flags) | [optional] 
**payee** | **String** | Payee name | [optional] 
**meta** | [**JsonObject**](.md) | Transaction metadata | [optional] 
**sourceType** | **String** | Source type (how the transaction was created) | [optional] 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 
**voidedAt** | **String** | Voided at timestamp (if voided) | [optional] 
**voidedBy** | **String** | User ID who voided this transaction | [optional] 
**correctionReason** | **String** | Correction reason (if voided or superseded) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


