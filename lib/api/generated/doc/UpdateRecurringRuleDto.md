# firela_api.model.UpdateRecurringRuleDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Rule name | [optional] 
**icon** | **String** | Icon emoji | [optional] 
**frequency** | **String** | Recurring frequency | [optional] 
**expectedAmount** | **num** | Expected amount | [optional] 
**expectedDay** | **num** | Expected day of month (1-31) | [optional] 
**customIntervalDays** | **num** | Custom interval in days | [optional] 
**currency** | **String** | Currency code | [optional] 
**matchPayeePattern** | **String** | Payee matching pattern | [optional] 
**matchAmountTolerance** | **num** | Amount tolerance percentage (0-1) | [optional] 
**defaultExpenseAccount** | **String** | Default expense account | [optional] 
**defaultPaymentAccount** | **String** | Default payment account | [optional] 
**defaultPayee** | **String** | Default payee | [optional] 
**autoCreate** | **bool** | Auto-create transaction | [optional] 
**isActive** | **bool** | Rule active status | [optional] 
**endDate** | **String** | Rule end date (ISO format) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


