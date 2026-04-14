# firela_api.model.ExpectedTransactionResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Expected transaction ID | 
**userId** | **String** | User ID | 
**ruleId** | **String** | Associated rule ID | 
**expectedDate** | **String** | Expected date (YYYY-MM-DD) | 
**expectedAmount** | **num** | Expected amount | 
**status** | **String** | Status (PENDING, COMPLETED, SKIPPED) | 
**isOverdue** | **bool** | Whether this expected transaction is overdue | 
**rule** | [**ExpectedTransactionRuleDto**](ExpectedTransactionRuleDto.md) |  | 
**createdAt** | [**DateTime**](DateTime.md) | Created at timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Updated at timestamp | 
**matchedTransactionId** | [**JsonObject**](.md) | Matched transaction ID | [optional] 
**matchedAt** | [**JsonObject**](.md) | Match timestamp (ISO 8601) | [optional] 
**matchConfidence** | [**JsonObject**](.md) | Match confidence score (0-1) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


