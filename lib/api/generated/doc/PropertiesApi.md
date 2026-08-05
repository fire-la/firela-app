# firela_api.api.PropertiesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**propertyControllerDelete**](PropertiesApi.md#propertycontrollerdelete) | **DELETE** /api/v1/admin/properties/{key} | Delete a system property
[**propertyControllerGetAll**](PropertiesApi.md#propertycontrollergetall) | **GET** /api/v1/admin/properties | Get all system properties
[**propertyControllerGetByKey**](PropertiesApi.md#propertycontrollergetbykey) | **GET** /api/v1/admin/properties/{key} | Get property by key
[**propertyControllerUpdate**](PropertiesApi.md#propertycontrollerupdate) | **PUT** /api/v1/admin/properties/{key} | Update a system property


# **propertyControllerDelete**
> propertyControllerDelete(key)

Delete a system property

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String key = key_example; // String | Property key

try {
    api.propertyControllerDelete(key);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Property key | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **propertyControllerGetAll**
> propertyControllerGetAll()

Get all system properties

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();

try {
    api.propertyControllerGetAll();
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerGetAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **propertyControllerGetByKey**
> propertyControllerGetByKey(key)

Get property by key

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String key = key_example; // String | Property key

try {
    api.propertyControllerGetByKey(key);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerGetByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Property key | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **propertyControllerUpdate**
> propertyControllerUpdate(key, updatePropertyDto)

Update a system property

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getPropertiesApi();
final String key = key_example; // String | Property key
final UpdatePropertyDto updatePropertyDto = ; // UpdatePropertyDto | 

try {
    api.propertyControllerUpdate(key, updatePropertyDto);
} catch on DioException (e) {
    print('Exception when calling PropertiesApi->propertyControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **String**| Property key | 
 **updatePropertyDto** | [**UpdatePropertyDto**](UpdatePropertyDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

