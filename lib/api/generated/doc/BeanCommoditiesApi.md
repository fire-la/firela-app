# firela_api.api.BeanCommoditiesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commodityController**](BeanCommoditiesApi.md#commoditycontroller) | **POST** /api/v1/{region}/bean/commodities | 
[**commodityControllerFindAll**](BeanCommoditiesApi.md#commoditycontrollerfindall) | **GET** /api/v1/{region}/bean/commodities | List user commodities
[**commodityControllerFindOne**](BeanCommoditiesApi.md#commoditycontrollerfindone) | **GET** /api/v1/{region}/bean/commodities/{symbol} | Get commodity by symbol
[**commodityController_0**](BeanCommoditiesApi.md#commoditycontroller_0) | **PUT** /api/v1/{region}/bean/commodities/{symbol} | 
[**commodityController_1**](BeanCommoditiesApi.md#commoditycontroller_1) | **DELETE** /api/v1/{region}/bean/commodities/{symbol} | 
[**commodityController_2**](BeanCommoditiesApi.md#commoditycontroller_2) | **POST** /api/v1/{region}/bean/commodities/{symbol}/ensure | 
[**commodityController_3**](BeanCommoditiesApi.md#commoditycontroller_3) | **POST** /api/v1/{region}/bean/commodities/bulk | 


# **commodityController**
> commodityController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.commodityController(region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityController: $e\n');
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

# **commodityControllerFindAll**
> CommodityListResponseDto commodityControllerFindAll(region, search, symbol)

List user commodities

Returns all commodity definitions for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)
final String search = AAP; // String | Search term for symbol or metadata fields (partial match). Searches symbol and metadata.name.
final String symbol = AAPL; // String | Filter by exact symbol match

try {
    final response = api.commodityControllerFindAll(region, search, symbol);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **search** | **String**| Search term for symbol or metadata fields (partial match). Searches symbol and metadata.name. | [optional] 
 **symbol** | **String**| Filter by exact symbol match | [optional] 

### Return type

[**CommodityListResponseDto**](CommodityListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerFindOne**
> CommodityResponseDto commodityControllerFindOne(symbol, region)

Get commodity by symbol

Returns a specific commodity definition by its symbol

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String symbol = AAPL; // String | Commodity symbol
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.commodityControllerFindOne(symbol, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Commodity symbol | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**CommodityResponseDto**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityController_0**
> commodityController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.commodityController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityController_0: $e\n');
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

# **commodityController_1**
> commodityController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.commodityController_1(region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityController_1: $e\n');
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

# **commodityController_2**
> commodityController_2(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.commodityController_2(region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityController_2: $e\n');
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

# **commodityController_3**
> commodityController_3(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.commodityController_3(region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityController_3: $e\n');
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

