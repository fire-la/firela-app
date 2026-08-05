# firela_api.model.OnboardingAccountDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **String** | Account path (Assets/Liabilities only; format validated by the account service) | 
**currency** | **String** | ISO 4217 currency code (3 letters) | 
**openingBalance** | **String** | Opening balance as a non-negative Decimal string (e.g. \"1000.00\") | [optional] 
**platformId** | **String** | Platform ID to bind the account to (references Platform.id); omit for unbound | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


