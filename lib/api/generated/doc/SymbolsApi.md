# firela_api.api.SymbolsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbolController**](SymbolsApi.md#symbolcontroller) | **PUT** /api/v1/market/symbols/yahoo/batch-update | 
[**symbolControllerGatherSymbolForDate**](SymbolsApi.md#symbolcontrollergathersymbolfordate) | **GET** /api/v1/market/symbols/{dataSource}/{symbol}/{dateString} | Gather symbol data for specific date
[**symbolControllerGetSymbolData**](SymbolsApi.md#symbolcontrollergetsymboldata) | **GET** /api/v1/market/symbols/{dataSource}/{symbol} | Get symbol data
[**symbolControllerLookupSymbol**](SymbolsApi.md#symbolcontrollerlookupsymbol) | **GET** /api/v1/market/symbols/lookup | Search for symbols


# **symbolController**
> symbolController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getSymbolsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.symbolController(region);
} catch on DioException (e) {
    print('Exception when calling SymbolsApi->symbolController: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbolControllerGatherSymbolForDate**
> symbolControllerGatherSymbolForDate(dataSource, dateString, symbol, region)

Gather symbol data for specific date

Retrieve historical symbol data for a specific date

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getSymbolsApi();
final String dataSource = dataSource_example; // String | Data source provider
final String dateString = dateString_example; // String | Date in ISO 8601 format (YYYY-MM-DD)
final String symbol = symbol_example; // String | Symbol identifier (e.g., ticker code)
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.symbolControllerGatherSymbolForDate(dataSource, dateString, symbol, region);
} catch on DioException (e) {
    print('Exception when calling SymbolsApi->symbolControllerGatherSymbolForDate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSource** | **String**| Data source provider | 
 **dateString** | **String**| Date in ISO 8601 format (YYYY-MM-DD) | 
 **symbol** | **String**| Symbol identifier (e.g., ticker code) | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbolControllerGetSymbolData**
> symbolControllerGetSymbolData(dataSource, symbol, region, includeHistoricalData)

Get symbol data

Retrieve detailed symbol information including optional historical data

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getSymbolsApi();
final String dataSource = dataSource_example; // String | Data source provider
final String symbol = symbol_example; // String | Symbol identifier (e.g., ticker code)
final String region = region_example; // String | Region code (cn, us, de)
final JsonObject includeHistoricalData = ; // JsonObject | Include historical price data (0 or 1)

try {
    api.symbolControllerGetSymbolData(dataSource, symbol, region, includeHistoricalData);
} catch on DioException (e) {
    print('Exception when calling SymbolsApi->symbolControllerGetSymbolData: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSource** | **String**| Data source provider | 
 **symbol** | **String**| Symbol identifier (e.g., ticker code) | 
 **region** | **String**| Region code (cn, us, de) | 
 **includeHistoricalData** | [**JsonObject**](.md)| Include historical price data (0 or 1) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbolControllerLookupSymbol**
> symbolControllerLookupSymbol(region, includeIndices, assetSubClass, assetClass, area, query)

Search for symbols

Search symbols by query with optional filters for asset class, area, and indices

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getSymbolsApi();
final String region = region_example; // String | Region code (cn, us, de)
final JsonObject includeIndices = ; // JsonObject | Include index symbols in results
final JsonObject assetSubClass = ; // JsonObject | Asset sub-class filter
final JsonObject assetClass = ; // JsonObject | Asset class filter
final JsonObject area = ; // JsonObject | Geographic area filter (e.g., CN, US)
final JsonObject query = ; // JsonObject | Search query string

try {
    api.symbolControllerLookupSymbol(region, includeIndices, assetSubClass, assetClass, area, query);
} catch on DioException (e) {
    print('Exception when calling SymbolsApi->symbolControllerLookupSymbol: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **includeIndices** | [**JsonObject**](.md)| Include index symbols in results | [optional] 
 **assetSubClass** | [**JsonObject**](.md)| Asset sub-class filter | [optional] 
 **assetClass** | [**JsonObject**](.md)| Asset class filter | [optional] 
 **area** | [**JsonObject**](.md)| Geographic area filter (e.g., CN, US) | [optional] 
 **query** | [**JsonObject**](.md)| Search query string | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

