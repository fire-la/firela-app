# firela_api.api.BalanceApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost:3333/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getBalance**](BalanceApi.md#getbalance) | **GET** /{region}/bean/balances | Query balance
[**getMultiCurrencyBalance**](BalanceApi.md#getmulticurrencybalance) | **GET** /{region}/bean/balances/multi-currency | Query multi-currency balance


# **getBalance**
> BalanceResponse getBalance(region, account, currency, date)

Query balance

Get the balance of an account in a specific currency

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceApi();
final String region = region_example; // String | Region code for tenant context
final String account = account_example; // String | Account path (e.g., \"Assets:Bank:Checking\")
final String currency = currency_example; // String | Currency code (e.g., \"USD\")
final Date date = 2013-10-20; // Date | Query date (defaults to today)

try {
    final response = api.getBalance(region, account, currency, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceApi->getBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **account** | **String**| Account path (e.g., \"Assets:Bank:Checking\") | 
 **currency** | **String**| Currency code (e.g., \"USD\") | 
 **date** | **Date**| Query date (defaults to today) | [optional] 

### Return type

[**BalanceResponse**](BalanceResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMultiCurrencyBalance**
> MultiCurrencyBalanceResponse getMultiCurrencyBalance(region, account, date)

Query multi-currency balance

Get the balance of an account across all currencies

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceApi();
final String region = region_example; // String | Region code for tenant context
final String account = account_example; // String | Account path (e.g., \"Assets:Bank:Checking\")
final Date date = 2013-10-20; // Date | Query date (defaults to today)

try {
    final response = api.getMultiCurrencyBalance(region, account, date);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceApi->getMultiCurrencyBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **account** | **String**| Account path (e.g., \"Assets:Bank:Checking\") | 
 **date** | **Date**| Query date (defaults to today) | [optional] 

### Return type

[**MultiCurrencyBalanceResponse**](MultiCurrencyBalanceResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

