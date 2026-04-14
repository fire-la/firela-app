# firela_api.model.TransactionRuleResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Rule ID | 
**name** | **String** | Rule name | 
**narrationKeywords** | **BuiltList&lt;String&gt;** | Keywords to match in transaction narration | 
**payeeKeywords** | **BuiltList&lt;String&gt;** | Keywords to match in payee name | 
**categoryKeywords** | **BuiltList&lt;String&gt;** | Keywords to match in category | 
**methodKeywords** | **BuiltList&lt;String&gt;** | Keywords to match in payment method | 
**matchLogic** | **String** | Keyword matching logic | 
**priority** | **num** | Rule priority (0-1000, higher = first match) | 
**enabled** | **bool** | Whether the rule is enabled | 
**autoApplyEnabled** | **bool** | Whether auto-apply is enabled for this rule | 
**confirmationCount** | **num** | Number of confirmations for NLP-learned rules | 
**additionalTags** | **BuiltList&lt;String&gt;** | Additional tags | 
**createdAt** | [**DateTime**](DateTime.md) | Created timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Updated timestamp | 
**description** | **String** | Rule description | [optional] 
**categoryAccount** | **String** | Destination account for categorization | [optional] 
**amountRange** | [**JsonObject**](.md) | Amount range for matching | [optional] 
**learningSource** | **String** | Learning source: NLP, REVIEW_CENTER, or null for manual | [optional] 
**additionalMetadata** | [**JsonObject**](.md) | Additional metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


