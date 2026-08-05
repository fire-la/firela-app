# firela_api.model.MapperDefaultsDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceAccount** | **String** | Source account for transactions (Beancount format) | 
**currency** | **String** | Default currency (ISO 4217 code) | 
**expenseAccount** | **String** | Default expense account | [optional] 
**incomeAccount** | **String** | Default income account | [optional] 
**accountMapping** | [**JsonObject**](.md) | Filename prefix to account mapping (for HK importers). Maps filename prefix to Beancount account path. | [optional] 
**useCnh** | **bool** | Convert CNY to CNH (offshore RMB) (for HK importers). Default: false. | [optional] 
**methodAccountMapping** | [**JsonObject**](.md) | Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


