# firela_api.model.NlpAccountConfirmationDataDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invalidAccount** | **String** | The invalid account name | 
**suggestedAccount** | **String** | Suggested replacement account | 
**similarAccounts** | **BuiltList&lt;String&gt;** | Similar accounts for user selection | 
**errorMessage** | **String** | Error message explaining the issue | 
**transactionContext** | [**JsonObject**](.md) | Transaction context for reference | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


