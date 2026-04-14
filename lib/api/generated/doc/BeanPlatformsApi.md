# firela_api.api.BeanPlatformsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**platformController**](BeanPlatformsApi.md#platformcontroller) | **POST** /api/v1/bean/platforms | 
[**platformControllerFindAll**](BeanPlatformsApi.md#platformcontrollerfindall) | **GET** /api/v1/bean/platforms | Get all platforms with statistics
[**platformControllerGetPlatformList**](BeanPlatformsApi.md#platformcontrollergetplatformlist) | **GET** /api/v1/bean/platforms/list | Get platform list for current user
[**platformController_0**](BeanPlatformsApi.md#platformcontroller_0) | **PUT** /api/v1/bean/platforms/{id} | 
[**platformController_1**](BeanPlatformsApi.md#platformcontroller_1) | **DELETE** /api/v1/bean/platforms/{id} | 


# **platformController**
> platformController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.platformController(region);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformController: $e\n');
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

# **platformControllerFindAll**
> platformControllerFindAll(region)

Get all platforms with statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.platformControllerFindAll(region);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerFindAll: $e\n');
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

# **platformControllerGetPlatformList**
> platformControllerGetPlatformList(region)

Get platform list for current user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.platformControllerGetPlatformList(region);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerGetPlatformList: $e\n');
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

# **platformController_0**
> platformController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.platformController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformController_0: $e\n');
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

# **platformController_1**
> platformController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.platformController_1(region);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformController_1: $e\n');
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

