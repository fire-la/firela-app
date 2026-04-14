# firela_api.api.LogosApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**logoControllerGetLogoByDataSourceAndSymbol**](LogosApi.md#logocontrollergetlogobydatasourceandsymbol) | **GET** /api/v1/market/logos/{dataSource}/{symbol} | Get asset logo by data source and symbol
[**logoControllerGetLogoByUrl**](LogosApi.md#logocontrollergetlogobyurl) | **GET** /api/v1/market/logos | Get website favicon by URL


# **logoControllerGetLogoByDataSourceAndSymbol**
> logoControllerGetLogoByDataSourceAndSymbol(dataSource, symbol, region)

Get asset logo by data source and symbol

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLogosApi();
final String dataSource = dataSource_example; // String | Data source identifier (e.g., YAHOO, COINGECKO)
final String symbol = symbol_example; // String | Asset symbol (e.g., AAPL, BTC)
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.logoControllerGetLogoByDataSourceAndSymbol(dataSource, symbol, region);
} catch on DioException (e) {
    print('Exception when calling LogosApi->logoControllerGetLogoByDataSourceAndSymbol: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSource** | **String**| Data source identifier (e.g., YAHOO, COINGECKO) | 
 **symbol** | **String**| Asset symbol (e.g., AAPL, BTC) | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logoControllerGetLogoByUrl**
> logoControllerGetLogoByUrl(url, region)

Get website favicon by URL

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLogosApi();
final String url = https://example.com; // String | Website URL to fetch favicon from
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.logoControllerGetLogoByUrl(url, region);
} catch on DioException (e) {
    print('Exception when calling LogosApi->logoControllerGetLogoByUrl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **url** | **String**| Website URL to fetch favicon from | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

