# firela_api.model.NlpRuleConfirmationDataDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confidence** | **num** | Rule match confidence score (0.5-0.74) | 
**matchedRule** | [**JsonObject**](.md) | Matched rule information | 
**suggestedAccounts** | [**JsonObject**](.md) | Suggested accounts from the rule | 
**alternatives** | [**BuiltList**](BuiltList.md) | Alternative rules that also match | 
**reasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for the match | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


