# firela_api.model.ResolveResultDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success** | **bool** | Whether resolution was successful | 
**messageKey** | **String** | i18n message key for result message (e.g., review.payee.result.mapped) | [optional] 
**messageParams** | **BuiltMap&lt;String, String&gt;** | Parameters for message interpolation (e.g., { name: \"PayeeName\" }) | [optional] 
**resolutionId** | **String** | Resolution ID for undo. Absent when the resolver rejected the decision (review stayed PENDING). | [optional] 
**canUndo** | **bool** | Whether this decision can be undone | [optional] 
**undoDeadline** | [**DateTime**](DateTime.md) | Deadline for undo (24h from resolution) | [optional] 
**learnedRuleId** | **String** | Rule ID if learning was triggered (ACCEPT_AND_LEARN actions). Use this to deep-link to the rule management page. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


