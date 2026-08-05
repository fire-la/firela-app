# firela_api.model.RecurringRuleResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Rule ID | 
**userId** | **String** | User ID | 
**name** | **String** | Rule name | 
**icon** | [**JsonObject**](.md) | Icon emoji | [optional] 
**frequency** | **String** | Recurring frequency | 
**expectedAmount** | **num** | Expected amount | 
**expectedDay** | [**JsonObject**](.md) | Expected day of month | [optional] 
**customIntervalDays** | [**JsonObject**](.md) | Custom interval in days | [optional] 
**currency** | **String** | Currency code | 
**matchPayeePattern** | [**JsonObject**](.md) | Payee matching pattern | [optional] 
**matchAmountTolerance** | **num** | Amount tolerance percentage | 
**defaultExpenseAccount** | [**JsonObject**](.md) | Default expense account | [optional] 
**defaultPaymentAccount** | [**JsonObject**](.md) | Default payment account | [optional] 
**defaultPayee** | [**JsonObject**](.md) | Default payee | [optional] 
**isActive** | **bool** | Whether rule is active | 
**startDate** | **String** | Rule start date (YYYY-MM-DD) | 
**endDate** | [**JsonObject**](.md) | Rule end date (YYYY-MM-DD) | [optional] 
**autoCreate** | **bool** | Auto-create transaction on expected date | 
**lastOccurrence** | [**JsonObject**](.md) | Last matched occurrence date (YYYY-MM-DD) | [optional] 
**totalCount** | **num** | Total matched transactions count | 
**createdAt** | [**DateTime**](DateTime.md) | Created at timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Updated at timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


