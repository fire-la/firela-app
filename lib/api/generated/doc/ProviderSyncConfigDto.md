# firela_api.model.ProviderSyncConfigDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceAccount** | **String** | Source account for the first posting | 
**defaultCurrency** | **String** | Default currency for transactions | 
**defaultExpenseAccount** | **String** | Default expense account for the second posting | 
**defaultIncomeAccount** | **String** | Default income account for the second posting | 
**filterPending** | **bool** | Filter pending transactions | [optional] [default to true]
**externalAccountId** | **String** | External account ID for per-batch providers (e.g. GoCardless). Overrides sourceAccount when an ExternalAccountLink mapping exists. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


