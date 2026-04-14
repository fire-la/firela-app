# firela_api.model.NlpPayeeConfirmationDataDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confidence** | **num** | Confidence score for the payee match (0-1) | 
**originalPayee** | **String** | Original payee string from user input | 
**similarity** | **num** | Similarity score between original and suggested (0-1) | 
**alternatives** | [**BuiltList&lt;NlpAlternativePayeeDto&gt;**](NlpAlternativePayeeDto.md) | Alternative payee options | 
**reasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for the match | 
**suggestedPayee** | [**NlpPayeeConfirmationDataDtoSuggestedPayee**](NlpPayeeConfirmationDataDtoSuggestedPayee.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


