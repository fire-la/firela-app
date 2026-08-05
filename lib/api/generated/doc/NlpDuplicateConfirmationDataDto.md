# firela_api.model.NlpDuplicateConfirmationDataDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confidence** | **num** | Duplicate detection confidence score (0.5-0.89) | 
**sourceTransaction** | [**NlpSourceTransactionDto**](NlpSourceTransactionDto.md) |  | 
**targetTransaction** | [**NlpTargetTransactionDto**](NlpTargetTransactionDto.md) |  | 
**similarity** | [**NlpSimilarityDto**](NlpSimilarityDto.md) |  | 
**reasons** | **BuiltList&lt;String&gt;** | Human-readable reasons for duplicate detection | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


