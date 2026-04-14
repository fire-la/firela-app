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
[**dashboardControllerGetNetWorth**](DashboardApi.md#dashboardcontrollergetnetworth) | **GET** /api/v1/{region}/dashboard/net-worth | Get net worth overview


# **dashboardControllerGetAccounts**
> DashboardControllerGetAccounts200Response dashboardControllerGetAccounts(region, groupBy, date)

Get accounts grouped by platform

Returns accounts with balances grouped by financial platform

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDashboardApi();
final String region = region_example; // String | Region code (cn, us, de)
final String groupBy = groupBy_example; // String | Grouping strategy
final String date = 2024-06-15; // String | Date for balance calculation (ISO 8601 format)

try {
    final response = api.dashboardControllerGetAccounts(region, groupBy, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DashboardApi->dashboardControllerGetAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **groupBy** | **String**| Grouping strategy | [optional] 
 **date** | **String**| Date for balance calculation (ISO 8601 format) | [optional] 

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
final String region = region_example; // String | Region code (cn, us, de)

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
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**CashFlowResponseDto**](CashFlowResponseDto.md)

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
final String region = region_example; // String | Region code (cn, us, de)
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
 **region** | **String**| Region code (cn, us, de) | 
 **date** | **String**| Date for balance calculation (ISO 8601 format) | [optional] 

### Return type

[**NetWorthResponseDto**](NetWorthResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

