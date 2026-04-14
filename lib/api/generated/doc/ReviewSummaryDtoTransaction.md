# firela_api.model.ReviewSummaryDtoTransaction

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Transaction date (YYYY-MM-DD) | 
**amount** | **String** | Transaction amount (absolute value) | 
**currency** | **String** | Currency code | 
**narration** | **String** | Transaction narration | 
**id** | **String** | Transaction ID (null if transaction deleted) | [optional] 
**payee** | **String** | Payee/Merchant name | [optional] 
**accountName** | **String** | Source account name (first posting) | [optional] 
**sourceType** | **String** | Source type (NLP, CSV, OCR, API) | [optional] 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


