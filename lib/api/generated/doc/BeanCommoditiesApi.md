# firela_api.api.BeanCommoditiesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commodityControllerBulkCreate**](BeanCommoditiesApi.md#commoditycontrollerbulkcreate) | **POST** /api/v1/{region}/bean/commodities/bulk | Bulk create commodities
[**commodityControllerCreate**](BeanCommoditiesApi.md#commoditycontrollercreate) | **POST** /api/v1/{region}/bean/commodities | Create a new commodity
[**commodityControllerDelete**](BeanCommoditiesApi.md#commoditycontrollerdelete) | **DELETE** /api/v1/{region}/bean/commodities/{symbol} | Delete commodity
[**commodityControllerFindAll**](BeanCommoditiesApi.md#commoditycontrollerfindall) | **GET** /api/v1/{region}/bean/commodities | List user commodities
[**commodityControllerFindOne**](BeanCommoditiesApi.md#commoditycontrollerfindone) | **GET** /api/v1/{region}/bean/commodities/{symbol} | Get commodity by symbol
[**commodityControllerGetOrCreate**](BeanCommoditiesApi.md#commoditycontrollergetorcreate) | **POST** /api/v1/{region}/bean/commodities/{symbol}/ensure | Ensure commodity exists
[**commodityControllerUpdate**](BeanCommoditiesApi.md#commoditycontrollerupdate) | **PUT** /api/v1/{region}/bean/commodities/{symbol} | Update commodity


# **commodityControllerBulkCreate**
> BuiltList<CommodityResponseDto> commodityControllerBulkCreate(region)

Bulk create commodities

Creates multiple commodities from a list of symbols, useful for initialization

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.commodityControllerBulkCreate(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerBulkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

[**BuiltList&lt;CommodityResponseDto&gt;**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerCreate**
> CommodityResponseDto commodityControllerCreate(region, createCommodityDto)

Create a new commodity

Creates a new commodity definition for the authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code for tenant context
final CreateCommodityDto createCommodityDto = ; // CreateCommodityDto | 

try {
    final response = api.commodityControllerCreate(region, createCommodityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createCommodityDto** | [**CreateCommodityDto**](CreateCommodityDto.md)|  | 

### Return type

[**CommodityResponseDto**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerDelete**
> commodityControllerDelete(symbol, region)

Delete commodity

Deletes a commodity definition

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String symbol = AAPL; // String | Commodity symbol
final String region = region_example; // String | Region code for tenant context

try {
    api.commodityControllerDelete(symbol, region);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Commodity symbol | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerFindAll**
> CommodityListResponseDto commodityControllerFindAll(region, search, symbol)

List user commodities

Returns all commodity definitions for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

### Return type

[**CommodityResponseDto**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerGetOrCreate**
> CommodityResponseDto commodityControllerGetOrCreate(symbol, region)

Ensure commodity exists

Gets existing commodity or creates it with automatic initialization from OpenBB

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String symbol = AAPL; // String | Commodity symbol
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.commodityControllerGetOrCreate(symbol, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerGetOrCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Commodity symbol | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**CommodityResponseDto**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **commodityControllerUpdate**
> CommodityResponseDto commodityControllerUpdate(symbol, region, updateCommodityDto)

Update commodity

Updates an existing commodity definition. Symbol cannot be changed.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanCommoditiesApi();
final String symbol = AAPL; // String | Commodity symbol
final String region = region_example; // String | Region code for tenant context
final UpdateCommodityDto updateCommodityDto = ; // UpdateCommodityDto | 

try {
    final response = api.commodityControllerUpdate(symbol, region, updateCommodityDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanCommoditiesApi->commodityControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**| Commodity symbol | 
 **region** | **String**| Region code for tenant context | 
 **updateCommodityDto** | [**UpdateCommodityDto**](UpdateCommodityDto.md)|  | 

### Return type

[**CommodityResponseDto**](CommodityResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

