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
**confidenceLevel** | **String** | Confidence level derived from score. Null for error-type reviews (ACCOUNT_VALIDATION/PIPELINE_ERROR) which carry no confidence. | 
**summaryKey** | **String** | i18n message key for summary (e.g., review.summary.duplicate). Translate on frontend with summaryParams. | 
**summaryParams** | **BuiltMap&lt;String, String&gt;** | Parameters for summary message interpolation (e.g., { date: \"2024-01-15\", amount: \"50\" }) | [optional] 
**matchReasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for branching | 
**sourceType** | **String** | Source type (free-form string from transaction metadata, e.g. import, api) | 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**transaction** | [**ReviewSummaryDtoTransaction**](ReviewSummaryDtoTransaction.md) |  | [optional] 
**amount** | **String** | Transaction amount (convenience field for mobile display) | [optional] 
**currency** | **String** | Currency code (convenience field for mobile display) | [optional] 
**merchantName** | **String** | Payee/Merchant name (convenience field for mobile display) | [optional] 
**accountName** | **String** | Account name (convenience field for mobile display) | [optional] 
**transactionTime** | **String** | Transaction date/time (convenience field for mobile display) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


