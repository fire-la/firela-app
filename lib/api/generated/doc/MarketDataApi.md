# firela_api.api.MarketDataApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**marketDataController**](MarketDataApi.md#marketdatacontroller) | **POST** /api/v1/market-data/{dataSource}/{symbol} | 
[**marketDataControllerGetMarketDataBySymbol**](MarketDataApi.md#marketdatacontrollergetmarketdatabysymbol) | **GET** /api/v1/market-data/{dataSource}/{symbol} | Get market data by symbol


# **marketDataController**
> marketDataController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getMarketDataApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.marketDataController(region);
} catch on DioException (e) {
    print('Exception when calling MarketDataApi->marketDataController: $e\n');
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

# **marketDataControllerGetMarketDataBySymbol**
> marketDataControllerGetMarketDataBySymbol(dataSource, symbol, region)

Get market data by symbol

Retrieves market data and asset profile for a given symbol and data source

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getMarketDataApi();
final String dataSource = dataSource_example; // String | Data source provider
final String symbol = symbol_example; // String | Symbol code
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.marketDataControllerGetMarketDataBySymbol(dataSource, symbol, region);
} catch on DioException (e) {
    print('Exception when calling MarketDataApi->marketDataControllerGetMarketDataBySymbol: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSource** | **String**| Data source provider | 
 **symbol** | **String**| Symbol code | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

