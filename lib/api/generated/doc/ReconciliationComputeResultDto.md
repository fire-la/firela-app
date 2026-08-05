# firela_api.model.ReconciliationComputeResultDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** |  | 
**asOfDate** | **String** |  | 
**bookBalance** | **String** | System-computed book balance (decimal string). | 
**actualBalance** | **String** | User-entered actual balance (decimal string). | 
**currency** | **String** |  | 
**diff** | **String** | Diff = book − actual (decimal string). | 
**tolerance** | **String** | Applied tolerance (decimal string). | 
**withinTolerance** | **bool** | true when |diff| ≤ tolerance. | 
**suggestedAction** | **String** | Suggested next action: assert when within tolerance, pad otherwise. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


