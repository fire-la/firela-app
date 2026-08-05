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
**pendingCount** | **num** | Number of pending expected transactions | 
**overdueCount** | **num** | Number of overdue expected transactions | 
**nextExpectedDate** | [**JsonObject**](.md) | Next expected date (YYYY-MM-DD) | [optional] 
**totalAmount** | **num** | Total amount of all matched transactions | 
**averageAmount** | **num** | Average amount per transaction | 
**transactionCount** | **num** | Number of matched transactions | 
**firstDate** | [**JsonObject**](.md) | First matched transaction date (YYYY-MM-DD) | [optional] 
**lastDate** | [**JsonObject**](.md) | Last matched transaction date (YYYY-MM-DD) | [optional] 
**variance** | **num** | Amount variance (standard deviation squared) | 
**upcomingCount** | **num** | Number of upcoming expected transactions | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


