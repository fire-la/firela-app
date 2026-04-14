# firela_api.api.PropertiesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**propertyController**](PropertiesApi.md#propertycontroller) | **PUT** /api/v1/admin/properties/{key} | 
[**propertyControllerGetAll**](PropertiesApi.md#propertycontrollergetall) | **GET** /api/v1/admin/properties | Get all system properties
[**propertyControllerGetByKey**](PropertiesApi.md#propertycontrollergetbykey) | **GET** /api/v1/admin/properties/{key} | Get property by key
[**propertyController_0**](PropertiesApi.md#propertycontroller_0) | **DELETE** /api/v1/admin/properties/{key} | 


# **propertyController**
> propertyController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.propertyController(region);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyController: $e\n');
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

# **propertyControllerGetAll**
> propertyControllerGetAll(region)

Get all system properties

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.propertyControllerGetAll(region);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerGetAll: $e\n');
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

# **propertyControllerGetByKey**
> propertyControllerGetByKey(key, region)

Get property by key

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String key = key_example; // String | Property key
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.propertyControllerGetByKey(key, region);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerGetByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Property key | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **propertyController_0**
> propertyController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.propertyController_0(region);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyController_0: $e\n');
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

