# firela_api.model.RuleStatisticsResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**period** | **String** | Statistics time period | 
**totalRules** | **num** | Total number of rules | 
**rulesWithMatches** | **num** | Number of rules with at least one match | 
**totalMatches** | **num** | Total number of matches across all rules | 
**averageConfidence** | **num** | Average confidence score across all matches | 
**ruleStats** | [**BuiltList&lt;RuleStatisticsResponseDtoRuleStatsInner&gt;**](RuleStatisticsResponseDtoRuleStatsInner.md) | Per-rule statistics | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


