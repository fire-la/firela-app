# firela_api.model.ProviderSyncResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**imported** | **num** | Number of transactions successfully imported | 
**skipped** | **num** | Number of transactions skipped (duplicates) | 
**pendingReview** | **num** | Number of transactions pending review | 
**failed** | **num** | Number of transactions that failed to import | 
**importedTransactionIds** | **BuiltList&lt;String&gt;** | IDs of successfully imported transactions | [optional] 
**reviewItemIds** | **BuiltList&lt;String&gt;** | IDs of review items created for branched transactions | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


