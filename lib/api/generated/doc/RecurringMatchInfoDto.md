# firela_api.model.RecurringMatchInfoDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expectedId** | **String** | Expected transaction ID | 
**ruleId** | **String** | Recurring rule ID | 
**ruleName** | **String** | Rule name for display | 
**expectedDate** | **String** | Expected date (YYYY-MM-DD) | 
**expectedAmount** | **num** | Expected amount | 
**confidence** | **num** | Match confidence score (0-1) | 
**isAutoMatched** | **bool** | Whether auto-matched (confidence >= 0.82) | 
**ruleIcon** | **String** | Rule icon | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


