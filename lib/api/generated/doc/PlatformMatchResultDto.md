# firela_api.model.PlatformMatchResultDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Global platform ID | 
**name** | **String** | Platform name (e.g., \"ICBC\") | 
**canonical** | **String** | Canonical identifier in ACCOUNT_RE format (e.g., \"icbc\") | 
**type** | **String** | Platform type | 
**suggestedSegment** | **String** | Suggested path segment — canonical, already in ACCOUNT_RE format | 
**logoUrl** | **String** | Logo URL | 
**matchType** | **String** | How this row matched: 'exact' > 'prefix' > 'substring' | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


