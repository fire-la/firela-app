# firela_api.model.TransactionSummaryDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Transaction ID (null if transaction deleted) | [optional] 
**date** | **String** | Transaction date (YYYY-MM-DD) | 
**amount** | **String** | Transaction amount (absolute value) | 
**currency** | **String** | Currency code | 
**payee** | **String** | Payee/Merchant name | [optional] 
**narration** | **String** | Transaction narration | 
**accountName** | **String** | Source account name (first posting) | [optional] 
**sourceType** | **String** | Source type (free-form string from transaction metadata, e.g. import, api) | [optional] 
**sourcePlatform** | **String** | Source platform (e.g., alipay, wechat) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


