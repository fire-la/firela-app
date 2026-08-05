# firela_api.api.DashboardApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dashboardControllerGetAccounts**](DashboardApi.md#dashboardcontrollergetaccounts) | **GET** /api/v1/{region}/dashboard/accounts | Get accounts grouped by platform
[**dashboardControllerGetCashFlow**](DashboardApi.md#dashboardcontrollergetcashflow) | **GET** /api/v1/{region}/dashboard/cash-flow | Get cash flow summary
[**dashboardControllerGetExpenses**](DashboardApi.md#dashboardcontrollergetexpenses) | **GET** /api/v1/{region}/dashboard/expenses | Get expenses/income grouped by functional category
[**dashboardControllerGetNetWorth**](DashboardApi.md#dashboardcontrollergetnetworth) | **GET** /api/v1/{region}/dashboard/net-worth | Get net worth overview


# **dashboardControllerGetAccounts**
> DashboardControllerGetAccounts200Response dashboardControllerGetAccounts(region, groupBy, date, accountId)

Get accounts grouped by platform

Returns accounts with balances grouped by financial platform

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDashboardApi();
final String region = region_example; // String | Region code for tenant context
final String groupBy = groupBy_example; // String | Grouping strategy
final String date = 2024-06-15; // String | Date for balance calculation (ISO 8601 format)
final String accountId = a1b2c3d4-e5f6-7890-abcd-ef1234567890; // String | Scope to a single account (only valid with groupBy=holdingAssetClass, ADR-0105 §6)

try {
    final response = api.dashboardControllerGetAccounts(region, groupBy, date, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardControllerGetAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **groupBy** | **String**| Grouping strategy | [optional] 
 **date** | **String**| Date for balance calculation (ISO 8601 format) | [optional] 
 **accountId** | **String**| Scope to a single account (only valid with groupBy=holdingAssetClass, ADR-0105 §6) | [optional] 

### Return type

[**DashboardControllerGetAccounts200Response**](DashboardControllerGetAccounts200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerGetCashFlow**
> CashFlowResponseDto dashboardControllerGetCashFlow(period, region)

Get cash flow summary

Returns income, expenses, and savings for a monthly period

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDashboardApi();
final String period = 2024-06; // String | Period in YYYY-MM format
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.dashboardControllerGetCashFlow(period, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardControllerGetCashFlow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Period in YYYY-MM format | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**CashFlowResponseDto**](CashFlowResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerGetExpenses**
> ExpensesByCategoryResponseDto dashboardControllerGetExpenses(region, groupBy, period, flow)

Get expenses/income grouped by functional category

Returns amounts pre-aggregated by functional category (account-path Group segment) with server-side multi-currency conversion. flow=expense (default) aggregates ^Expenses: accounts; flow=income aggregates ^Income: accounts (issue #518)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDashboardApi();
final String region = region_example; // String | Region code for tenant context
final String groupBy = groupBy_example; // String | Grouping strategy
final String period = period_example; // String | Time window (1m = current calendar month)
final String flow = flow_example; // String | Account root to aggregate (expense → ^Expenses:, income → ^Income:)

try {
    final response = api.dashboardControllerGetExpenses(region, groupBy, period, flow);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardControllerGetExpenses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **groupBy** | **String**| Grouping strategy | [optional] 
 **period** | **String**| Time window (1m = current calendar month) | [optional] 
 **flow** | **String**| Account root to aggregate (expense → ^Expenses:, income → ^Income:) | [optional] 

### Return type

[**ExpensesByCategoryResponseDto**](ExpensesByCategoryResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dashboardControllerGetNetWorth**
> NetWorthResponseDto dashboardControllerGetNetWorth(region, date)

Get net worth overview

Returns total net worth with breakdown of assets and liabilities

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDashboardApi();
final String region = region_example; // String | Region code for tenant context
final String date = 2024-06-15; // String | Date for balance calculation (ISO 8601 format)

try {
    final response = api.dashboardControllerGetNetWorth(region, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardControllerGetNetWorth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **date** | **String**| Date for balance calculation (ISO 8601 format) | [optional] 

### Return type

[**NetWorthResponseDto**](NetWorthResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

