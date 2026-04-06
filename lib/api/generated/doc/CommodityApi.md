# firela_api.api.CommodityApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost:3333/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkCreateCommodities**](CommodityApi.md#bulkcreatecommodities) | **POST** /{region}/bean/commodities/bulk | Bulk create commodities
[**createCommodity**](CommodityApi.md#createcommodity) | **POST** /{region}/bean/commodities | Create commodity
[**deleteCommodity**](CommodityApi.md#deletecommodity) | **DELETE** /{region}/bean/commodities/{symbol} | Delete commodity
[**ensureCommodity**](CommodityApi.md#ensurecommodity) | **POST** /{region}/bean/commodities/{symbol}/ensure | Get or create commodity
[**getCommodity**](CommodityApi.md#getcommodity) | **GET** /{region}/bean/commodities/{symbol} | Get commodity
[**listCommodities**](CommodityApi.md#listcommodities) | **GET** /{region}/bean/commodities | List commodities
[**updateCommodity**](CommodityApi.md#updatecommodity) | **PUT** /{region}/bean/commodities/{symbol} | Update commodity


# **bulkCreateCommodities**
> CommodityListResponse bulkCreateCommodities(region, bulkCreateCommoditiesRequest)

Bulk create commodities

Create multiple commodities at once

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final BulkCreateCommoditiesRequest bulkCreateCommoditiesRequest = ; // BulkCreateCommoditiesRequest | 

try {
    final response = api.bulkCreateCommodities(region, bulkCreateCommoditiesRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->bulkCreateCommodities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **bulkCreateCommoditiesRequest** | [**BulkCreateCommoditiesRequest**](BulkCreateCommoditiesRequest.md)|  | 

### Return type

[**CommodityListResponse**](CommodityListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCommodity**
> CommodityResponse createCommodity(region, createCommodityRequest)

Create commodity

Create a new commodity/currency definition

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final CreateCommodityRequest createCommodityRequest = ; // CreateCommodityRequest | 

try {
    final response = api.createCommodity(region, createCommodityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->createCommodity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createCommodityRequest** | [**CreateCommodityRequest**](CreateCommodityRequest.md)|  | 

### Return type

[**CommodityResponse**](CommodityResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCommodity**
> deleteCommodity(region, symbol)

Delete commodity

Delete a commodity definition

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final String symbol = symbol_example; // String | Commodity symbol (e.g., \"USD\", \"AAPL\")

try {
    api.deleteCommodity(region, symbol);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->deleteCommodity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **symbol** | **String**| Commodity symbol (e.g., \"USD\", \"AAPL\") | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ensureCommodity**
> CommodityResponse ensureCommodity(region, symbol, ensureCommodityRequest)

Get or create commodity

Get existing commodity or create if not exists

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final String symbol = symbol_example; // String | Commodity symbol (e.g., \"USD\", \"AAPL\")
final EnsureCommodityRequest ensureCommodityRequest = ; // EnsureCommodityRequest | 

try {
    final response = api.ensureCommodity(region, symbol, ensureCommodityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->ensureCommodity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **symbol** | **String**| Commodity symbol (e.g., \"USD\", \"AAPL\") | 
 **ensureCommodityRequest** | [**EnsureCommodityRequest**](EnsureCommodityRequest.md)|  | 

### Return type

[**CommodityResponse**](CommodityResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCommodity**
> CommodityResponse getCommodity(region, symbol)

Get commodity

Retrieve a specific commodity by symbol

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final String symbol = symbol_example; // String | Commodity symbol (e.g., \"USD\", \"AAPL\")

try {
    final response = api.getCommodity(region, symbol);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->getCommodity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **symbol** | **String**| Commodity symbol (e.g., \"USD\", \"AAPL\") | 

### Return type

[**CommodityResponse**](CommodityResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listCommodities**
> CommodityListResponse listCommodities(region)

List commodities

Retrieve all commodity definitions for the region

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.listCommodities(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->listCommodities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

[**CommodityListResponse**](CommodityListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCommodity**
> CommodityResponse updateCommodity(region, symbol, updateCommodityRequest)

Update commodity

Update commodity properties

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getCommodityApi();
final String region = region_example; // String | Region code for tenant context
final String symbol = symbol_example; // String | Commodity symbol (e.g., \"USD\", \"AAPL\")
final UpdateCommodityRequest updateCommodityRequest = ; // UpdateCommodityRequest | 

try {
    final response = api.updateCommodity(region, symbol, updateCommodityRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CommodityApi->updateCommodity: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **symbol** | **String**| Commodity symbol (e.g., \"USD\", \"AAPL\") | 
 **updateCommodityRequest** | [**UpdateCommodityRequest**](UpdateCommodityRequest.md)|  | 

### Return type

[**CommodityResponse**](CommodityResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

