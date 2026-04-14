# firela_api.model.NlpParsedDataDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **num** | Extracted amount | [optional] 
**currency** | **String** | Currency code | [optional] [default to 'CNY']
**date** | **String** | Transaction date (ISO format) | [optional] 
**payee** | **String** | Payee name | [optional] 
**narration** | **String** | Transaction narration | [optional] 
**category** | **String** | Category | [optional] 
**incomeType** | **String** | Income type (e.g., Salary, Bonus, Dividend, Interest) | [optional] 
**incomeSource** | **String** | Income source (e.g., company name) | [optional] 
**symbol** | **String** | Security symbol code (e.g., 600519, AAPL) | [optional] 
**quantity** | **num** | Quantity of shares/units | [optional] 
**price** | **num** | Unit price per share/unit | [optional] 
**investmentAction** | **String** | Investment action | [optional] 
**paymentSource** | **String** | Payment source: asset (default) or liability (credit card) | [optional] 
**liabilityHint** | **String** | Liability account hint (CreditCard/Huabei/Baitiao) | [optional] 
**warning** | **String** | Warning message for special scenarios (e.g., cross-currency settlement) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


