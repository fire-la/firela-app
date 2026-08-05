# firela_api.model.CreateRecurringRuleDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Rule name (unique per user) | 
**icon** | **String** | Icon emoji | [optional] 
**frequency** | **String** | Recurring frequency | 
**expectedAmount** | **num** | Expected amount (positive number) | 
**expectedDay** | **num** | Expected day of month (1-31) | [optional] 
**customIntervalDays** | **num** | Custom interval in days (required for CUSTOM frequency) | [optional] 
**currency** | **String** | Currency code | [default to 'CNY']
**matchPayeePattern** | **String** | Payee matching pattern (supports wildcards) | [optional] 
**matchAmountTolerance** | **num** | Amount tolerance percentage (0-1) | [default to 0.075]
**defaultExpenseAccount** | **String** | Default expense account for auto-create | [optional] 
**defaultPaymentAccount** | **String** | Default payment account for auto-create | [optional] 
**defaultPayee** | **String** | Default payee for auto-create | [optional] 
**autoCreate** | **bool** | Auto-create transaction when expected date arrives | [default to false]
**startDate** | **String** | Rule start date (ISO format) | [optional] 
**endDate** | **String** | Rule end date (ISO format) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


