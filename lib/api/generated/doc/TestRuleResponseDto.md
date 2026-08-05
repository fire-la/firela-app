# firela_api.model.TestRuleResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ruleId** | **String** | Rule ID that was tested | 
**matches** | **bool** | Whether the rule matched the test data | 
**confidence** | **num** | Match confidence score (0-1) | 
**matchDetails** | [**JsonObject**](.md) | Details of which fields matched | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


