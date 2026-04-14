# firela_api.model.ReviewItemPreviewDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **num** | Index in the import batch (for tracking) | 
**date** | **String** | Transaction date (ISO format) | 
**narration** | **String** | Transaction narration/description | 
**amount** | **num** | Transaction amount (absolute value) | [optional] 
**currency** | **String** | Currency code | [optional] 
**payee** | **String** | Payee name | [optional] 
**category** | **String** | Inferred category from rule matching | [optional] 
**confidence** | **num** | Confidence score for the match (0-1) | [optional] 
**branchType** | **String** | Type of branch requiring review | [optional] 
**reasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for requiring review | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


