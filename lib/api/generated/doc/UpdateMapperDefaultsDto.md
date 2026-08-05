# firela_api.model.UpdateMapperDefaultsDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sourceAccount** | **String** | Source account for transactions (Beancount format) | [optional] 
**currency** | **String** | Default currency (ISO 4217 code) | [optional] 
**expenseAccount** | **String** | Default expense account (optional) | [optional] 
**incomeAccount** | **String** | Default income account (optional) | [optional] 
**methodAccountMapping** | [**JsonObject**](.md) | Payment method to source account mapping. Maps payment method keywords to Beancount account paths. Used by Alipay/WeChat importers to determine sourceAccount based on payment method (e.g., HuaBei, CreditCard). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


