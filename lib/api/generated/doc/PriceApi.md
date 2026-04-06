# firela_api.api.PriceApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost:3333/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreatePrices**](PriceApi.md#bulkcreateprices) | **POST** /{region}/bean/prices/bulk | Bulk create prices
[**createPrice**](PriceApi.md#createprice) | **POST** /{region}/bean/prices | Create price
[**deletePrice**](PriceApi.md#deleteprice) | **DELETE** /{region}/bean/prices/{id} | Delete price
[**getPrice**](PriceApi.md#getprice) | **GET** /{region}/bean/prices/{id} | Get price
[**listPrices**](PriceApi.md#listprices) | **GET** /{region}/bean/prices | List prices
[**updatePrice**](PriceApi.md#updateprice) | **PUT** /{region}/bean/prices/{id} | Update price


# **bulkCreatePrices**
> PriceListResponse bulkCreatePrices(region, bulkCreatePricesRequest)

Bulk create prices

Create multiple price quotes at once

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context
final BulkCreatePricesRequest bulkCreatePricesRequest = ; // BulkCreatePricesRequest | 

try {
    final response = api.bulkCreatePrices(region, bulkCreatePricesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PriceApi->bulkCreatePrices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **bulkCreatePricesRequest** | [**BulkCreatePricesRequest**](BulkCreatePricesRequest.md)|  | 

### Return type

[**PriceListResponse**](PriceListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPrice**
> PriceResponse createPrice(region, createPriceRequest)

Create price

Create a new price quote

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context
final CreatePriceRequest createPriceRequest = ; // CreatePriceRequest | 

try {
    final response = api.createPrice(region, createPriceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PriceApi->createPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createPriceRequest** | [**CreatePriceRequest**](CreatePriceRequest.md)|  | 

### Return type

[**PriceResponse**](PriceResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePrice**
> deletePrice(region, id)

Delete price

Delete a price quote

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Price ID (UUID format)

try {
    api.deletePrice(region, id);
} catch on DioException (e) {
    print('Exception when calling PriceApi->deletePrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Price ID (UUID format) | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPrice**
> PriceResponse getPrice(region, id)

Get price

Retrieve a specific price quote by ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Price ID (UUID format)

try {
    final response = api.getPrice(region, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PriceApi->getPrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Price ID (UUID format) | 

### Return type

[**PriceResponse**](PriceResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPrices**
> PriceListResponse listPrices(region)

List prices

Retrieve all price quotes for the region

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.listPrices(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PriceApi->listPrices: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

[**PriceListResponse**](PriceListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePrice**
> PriceResponse updatePrice(region, id, updatePriceRequest)

Update price

Update a price quote

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPriceApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Price ID (UUID format)
final UpdatePriceRequest updatePriceRequest = ; // UpdatePriceRequest | 

try {
    final response = api.updatePrice(region, id, updatePriceRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling PriceApi->updatePrice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Price ID (UUID format) | 
 **updatePriceRequest** | [**UpdatePriceRequest**](UpdatePriceRequest.md)|  | 

### Return type

[**PriceResponse**](PriceResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

