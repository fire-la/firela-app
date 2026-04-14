# firela_api.model.ImportResultDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**imported** | **num** | Number of successfully imported transactions | 
**failed** | **num** | Number of failed transactions | 
**skipped** | **num** | Number of skipped transactions (high confidence duplicates, auto-skipped) | 
**pendingReview** | **num** | Number of transactions pending review (medium confidence duplicates) | 
**errors** | [**BuiltList&lt;ImportErrorDto&gt;**](ImportErrorDto.md) | Array of error details for failed transactions | 
**reviewItems** | [**BuiltList&lt;ReviewItemPreviewDto&gt;**](ReviewItemPreviewDto.md) | Array of transactions pending review with preview data. Contains essential information for displaying in the import preview UI. | [optional] 
**transactions** | [**JsonObject**](.md) | Array of imported transactions (optional, for debugging) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


