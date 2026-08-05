# firela_api.api.BeanPricesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**priceControllerBulkCreate**](BeanPricesApi.md#pricecontrollerbulkcreate) | **POST** /api/v1/{region}/bean/prices/bulk | Bulk create prices
[**priceControllerCreate**](BeanPricesApi.md#pricecontrollercreate) | **POST** /api/v1/{region}/bean/prices | Create a new price
[**priceControllerDelete**](BeanPricesApi.md#pricecontrollerdelete) | **DELETE** /api/v1/{region}/bean/prices/{id} | Delete a price
[**priceControllerFindAll**](BeanPricesApi.md#pricecontrollerfindall) | **GET** /api/v1/{region}/bean/prices | List user prices
[**priceControllerFindOne**](BeanPricesApi.md#pricecontrollerfindone) | **GET** /api/v1/{region}/bean/prices/{id} | Get price by ID
[**priceControllerUpdate**](BeanPricesApi.md#pricecontrollerupdate) | **PUT** /api/v1/{region}/bean/prices/{id} | Update a price


# **priceControllerBulkCreate**
> BuiltList<PriceResponseDto> priceControllerBulkCreate(region, requestBody)

Bulk create prices

Creates multiple price entries at once (skips duplicates)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String region = region_example; // String | Region code for tenant context
final BuiltList<String> requestBody = ; // BuiltList<String> | 

try {
    final response = api.priceControllerBulkCreate(region, requestBody);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerBulkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **requestBody** | [**BuiltList&lt;String&gt;**](String.md)|  | 

### Return type

[**BuiltList&lt;PriceResponseDto&gt;**](PriceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceControllerCreate**
> PriceResponseDto priceControllerCreate(region, createBeanPriceDto)

Create a new price

Creates a new price entry for the authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String region = region_example; // String | Region code for tenant context
final CreateBeanPriceDto createBeanPriceDto = ; // CreateBeanPriceDto | 

try {
    final response = api.priceControllerCreate(region, createBeanPriceDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createBeanPriceDto** | [**CreateBeanPriceDto**](CreateBeanPriceDto.md)|  | 

### Return type

[**PriceResponseDto**](PriceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceControllerDelete**
> priceControllerDelete(id, region)

Delete a price

Deletes a price entry (hard delete)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String id = id_example; // String | Price ID
final String region = region_example; // String | Region code for tenant context

try {
    api.priceControllerDelete(id, region);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Price ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceControllerFindAll**
> PriceListResponseDto priceControllerFindAll(region, currency, quoteCurrency, dateFrom, dateTo, search, page, limit)

List user prices

Returns all price entries for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String region = region_example; // String | Region code for tenant context
final String currency = BTC; // String | Filter by currency (e.g., BTC, AAPL, USD)
final String quoteCurrency = USD; // String | Filter by quote currency (pricing currency, e.g., USD, CNY)
final String dateFrom = 2024-01-01; // String | Filter prices from this date (ISO 8601 format)
final String dateTo = 2024-12-31; // String | Filter prices to this date (ISO 8601 format)
final String search = BTC; // String | Search term for currency or quoteCurrency (case-insensitive partial match)
final num page = 1; // num | Page number for pagination (default: 1)
final num limit = 20; // num | Number of items per page (default: 20, max: 100)

try {
    final response = api.priceControllerFindAll(region, currency, quoteCurrency, dateFrom, dateTo, search, page, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **currency** | **String**| Filter by currency (e.g., BTC, AAPL, USD) | [optional] 
 **quoteCurrency** | **String**| Filter by quote currency (pricing currency, e.g., USD, CNY) | [optional] 
 **dateFrom** | **String**| Filter prices from this date (ISO 8601 format) | [optional] 
 **dateTo** | **String**| Filter prices to this date (ISO 8601 format) | [optional] 
 **search** | **String**| Search term for currency or quoteCurrency (case-insensitive partial match) | [optional] 
 **page** | **num**| Page number for pagination (default: 1) | [optional] 
 **limit** | **num**| Number of items per page (default: 20, max: 100) | [optional] 

### Return type

[**PriceListResponseDto**](PriceListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceControllerFindOne**
> PriceResponseDto priceControllerFindOne(id, region)

Get price by ID

Returns a single price entry by its ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String id = id_example; // String | Price ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.priceControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Price ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**PriceResponseDto**](PriceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **priceControllerUpdate**
> PriceResponseDto priceControllerUpdate(id, region, updateBeanPriceDto)

Update a price

Updates an existing price entry

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPricesApi();
final String id = id_example; // String | Price ID
final String region = region_example; // String | Region code for tenant context
final UpdateBeanPriceDto updateBeanPriceDto = ; // UpdateBeanPriceDto | 

try {
    final response = api.priceControllerUpdate(id, region, updateBeanPriceDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPricesApi->priceControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Price ID | 
 **region** | **String**| Region code for tenant context | 
 **updateBeanPriceDto** | [**UpdateBeanPriceDto**](UpdateBeanPriceDto.md)|  | 

### Return type

[**PriceResponseDto**](PriceResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

