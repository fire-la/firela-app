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
**flag** | **String** | Transaction flag | [optional] 
**customFlag** | **String** | Custom flag (if not using standard flags) | [optional] 
**payee** | **String** | Payee name | [optional] 
**narration** | **String** | Transaction narration | 
**tags** | **BuiltList&lt;String&gt;** | Transaction tags | 
**links** | **BuiltList&lt;String&gt;** | Transaction links | 
**meta** | [**JsonObject**](.md) | Transaction metadata | [optional] 
**status** | **String** | Transaction status | 
**sourceType** | **String** | Source type (free-form string from transaction metadata, e.g. import, api) | [optional] 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 
**postings** | [**BuiltList&lt;PostingDetailDto&gt;**](PostingDetailDto.md) | Transaction postings | 
**createdAt** | **String** | Created at timestamp | 
**voidedAt** | **String** | Voided at timestamp (if voided) | [optional] 
**voidedBy** | **String** | User ID who voided this transaction | [optional] 
**correctionReason** | **String** | Correction reason (if voided or superseded) | [optional] 
**supersededBy** | **String** | ID of the transaction that supersedes this one (set when status=SUPERSEDED) | [optional] 
**originalTxn** | **String** | ID of the transaction this one corrected/replaced (back-link on the replacement) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


