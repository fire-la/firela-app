# firela_api.model.ReviewSummaryDto

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
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 
**transaction** | [**ReviewSummaryDtoTransaction**](ReviewSummaryDtoTransaction.md) |  | [optional] 
**amount** | **String** | Transaction amount (convenience field for mobile display) | [optional] 
**currency** | **String** | Currency code (convenience field for mobile display) | [optional] 
**merchantName** | **String** | Payee/Merchant name (convenience field for mobile display) | [optional] 
**accountName** | **String** | Account name (convenience field for mobile display) | [optional] 
**transactionTime** | **String** | Transaction date/time (convenience field for mobile display) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


