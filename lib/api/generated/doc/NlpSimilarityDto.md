# firela_api.model.NlpSimilarityDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dateMatch** | **bool** | Whether dates match | 
**dateDiff** | **num** | Date difference in days | 
**amountMatch** | **bool** | Whether amounts match | 
**amountDiff** | **String** | Amount difference as decimal string | 
**payeeMatch** | **bool** | Whether payees match | 
**payeeSimilarity** | **num** | Payee similarity score (0-1) | 
**accountOverlap** | **num** | Account overlap score (0-1) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


