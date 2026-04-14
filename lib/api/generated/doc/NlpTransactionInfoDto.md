# firela_api.model.NlpTransactionInfoDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Transaction ID | 
**date** | **String** | Transaction date (ISO format) | 
**amount** | **num** | Transaction amount | 
**currency** | **String** | Currency code | 
**payee** | **String** | Payee name | [optional] 
**narration** | **String** | Transaction narration | [optional] 
**warning** | **String** | Warning message for special transaction scenarios (e.g., cross-currency settlement) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


