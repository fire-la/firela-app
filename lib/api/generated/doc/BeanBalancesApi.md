# firela_api.api.BeanBalancesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**balanceControllerGetBalance**](BeanBalancesApi.md#balancecontrollergetbalance) | **GET** /api/v1/{region}/bean/balances | Query account balance
[**balanceControllerGetMultiCurrencyBalance**](BeanBalancesApi.md#balancecontrollergetmulticurrencybalance) | **GET** /api/v1/{region}/bean/balances/multi-currency | Query multi-currency account balance


# **balanceControllerGetBalance**
> BalanceResponseDto balanceControllerGetBalance(account, region, date, currency)

Query account balance

Calculate account balance at a specific date for a single currency

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanBalancesApi();
final String account = Assets:Bank:Checking; // String | Account name (e.g., \"Assets:Bank:Checking\")
final String region = region_example; // String | Region code (cn, us, de)
final String date = 2024-12-31; // String | Date to calculate balance at (ISO 8601 format)
final String currency = USD; // String | Currency to query (e.g., \"USD\", \"CNY\")

try {
    final response = api.balanceControllerGetBalance(account, region, date, currency);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanBalancesApi->balanceControllerGetBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **account** | **String**| Account name (e.g., \"Assets:Bank:Checking\") | 
 **region** | **String**| Region code (cn, us, de) | 
 **date** | **String**| Date to calculate balance at (ISO 8601 format) | [optional] 
 **currency** | **String**| Currency to query (e.g., \"USD\", \"CNY\") | [optional] 

### Return type

[**BalanceResponseDto**](BalanceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **balanceControllerGetMultiCurrencyBalance**
> MultiCurrencyBalanceResponseDto balanceControllerGetMultiCurrencyBalance(region)

Query multi-currency account balance

Calculate account balances for all currencies at a specific date

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanBalancesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.balanceControllerGetMultiCurrencyBalance(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanBalancesApi->balanceControllerGetMultiCurrencyBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**MultiCurrencyBalanceResponseDto**](MultiCurrencyBalanceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

