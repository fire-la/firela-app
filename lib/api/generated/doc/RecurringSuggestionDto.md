# firela_api.model.RecurringSuggestionDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**shouldSuggest** | **bool** | Whether to suggest creating a recurring rule | 
**suggestedFrequency** | **String** | Suggested frequency based on pattern analysis | 
**confidence** | **num** | Confidence score (0-1) | 
**similarCount** | **num** | Number of similar historical transactions found | 
**averageAmount** | **num** | Average amount across similar transactions | 
**suggestedExpectedDay** | **num** | Suggested expected day of month (1-28). Only provided when dates are consistent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


