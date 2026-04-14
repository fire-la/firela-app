# firela_api.model.ReviewDetailDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Review item ID | 
**type** | **String** | Review type | 
**status** | **String** | Review status | 
**confidence** | **num** | Confidence score (0-1) | 
**confidenceLevel** | **String** | Confidence level derived from score | 
**summary** | **String** | Human-readable summary of the review item | 
**matchReasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for branching | 
**sourceType** | **String** | Source type (NLP, CSV, OCR, API) | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**reviewData** | [**JsonObject**](.md) | Review-type-specific data (JSONB). Structure varies by type: DUPLICATE: {newTransaction, existingTransaction, matchScore}, RULE_MATCH: {transaction, matchedRule, suggestedAccount}, PAYEE_MATCH: {originalPayee, suggestedPayee}, ACCOUNT_VALIDATION: {invalidAccount, suggestedCorrection, similarAccounts}, PIPELINE_ERROR: {errorType, errorMessage} | 
**decisionOptions** | [**BuiltList&lt;DecisionOptionDto&gt;**](DecisionOptionDto.md) | Available decision options | 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 
**transaction** | [**ReviewSummaryDtoTransaction**](ReviewSummaryDtoTransaction.md) |  | [optional] 
**amount** | **String** | Transaction amount (convenience field for mobile display) | [optional] 
**currency** | **String** | Currency code (convenience field for mobile display) | [optional] 
**merchantName** | **String** | Payee/Merchant name (convenience field for mobile display) | [optional] 
**accountName** | **String** | Account name (convenience field for mobile display) | [optional] 
**transactionTime** | **String** | Transaction date/time (convenience field for mobile display) | [optional] 
**transactionId** | **String** | Related transaction ID if applicable | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


