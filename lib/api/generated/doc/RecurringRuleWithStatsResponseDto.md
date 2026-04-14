# firela_api.model.RecurringRuleWithStatsResponseDto

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
**frequency** | **String** | Recurring frequency | 
**expectedAmount** | **num** | Expected amount | 
**currency** | **String** | Currency code | 
**matchAmountTolerance** | **num** | Amount tolerance percentage | 
**isActive** | **bool** | Whether rule is active | 
**startDate** | **String** | Rule start date (YYYY-MM-DD) | 
**autoCreate** | **bool** | Auto-create transaction on expected date | 
**totalCount** | **num** | Total matched transactions count | 
**createdAt** | [**DateTime**](DateTime.md) | Created at timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Updated at timestamp | 
**pendingCount** | **num** | Number of pending expected transactions | 
**overdueCount** | **num** | Number of overdue expected transactions | 
**totalAmount** | **num** | Total amount of all matched transactions | 
**averageAmount** | **num** | Average amount per transaction | 
**transactionCount** | **num** | Number of matched transactions | 
**variance** | **num** | Amount variance (standard deviation squared) | 
**upcomingCount** | **num** | Number of upcoming expected transactions | 
**icon** | [**JsonObject**](.md) | Icon emoji | [optional] 
**expectedDay** | [**JsonObject**](.md) | Expected day of month | [optional] 
**customIntervalDays** | [**JsonObject**](.md) | Custom interval in days | [optional] 
**matchPayeePattern** | [**JsonObject**](.md) | Payee matching pattern | [optional] 
**defaultExpenseAccount** | [**JsonObject**](.md) | Default expense account | [optional] 
**defaultPaymentAccount** | [**JsonObject**](.md) | Default payment account | [optional] 
**defaultPayee** | [**JsonObject**](.md) | Default payee | [optional] 
**endDate** | [**JsonObject**](.md) | Rule end date (YYYY-MM-DD) | [optional] 
**lastOccurrence** | [**JsonObject**](.md) | Last matched occurrence date (YYYY-MM-DD) | [optional] 
**nextExpectedDate** | [**JsonObject**](.md) | Next expected date (YYYY-MM-DD) | [optional] 
**firstDate** | [**JsonObject**](.md) | First matched transaction date (YYYY-MM-DD) | [optional] 
**lastDate** | [**JsonObject**](.md) | Last matched transaction date (YYYY-MM-DD) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


