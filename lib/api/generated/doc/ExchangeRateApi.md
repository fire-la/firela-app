# firela_api.api.ExchangeRateApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchangeRateControllerGetExchangeRate**](ExchangeRateApi.md#exchangeratecontrollergetexchangerate) | **GET** /api/v1/market/exchange-rates/{symbol}/{dateString} | Get exchange rate for currency pair


# **exchangeRateControllerGetExchangeRate**
> exchangeRateControllerGetExchangeRate(symbol, dateString, region)

Get exchange rate for currency pair

Retrieves historical exchange rate for a specific date and currency pair

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExchangeRateApi();
final String symbol = USDCNY; // String | Currency pair symbol (e.g., USDCNY, EURUSD)
final String dateString = 2024-01-15; // String | Date in ISO format (YYYY-MM-DD)
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.exchangeRateControllerGetExchangeRate(symbol, dateString, region);
} catch on DioException (e) {
    print('Exception when calling ExchangeRateApi->exchangeRateControllerGetExchangeRate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Currency pair symbol (e.g., USDCNY, EURUSD) | 
 **dateString** | **String**| Date in ISO format (YYYY-MM-DD) | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

