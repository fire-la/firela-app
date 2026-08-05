# firela_api.api.BeanPlatformsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**platformControllerCreate**](BeanPlatformsApi.md#platformcontrollercreate) | **POST** /api/v1/bean/platforms | Create a new platform
[**platformControllerDelete**](BeanPlatformsApi.md#platformcontrollerdelete) | **DELETE** /api/v1/bean/platforms/{id} | Delete a platform
[**platformControllerFindAll**](BeanPlatformsApi.md#platformcontrollerfindall) | **GET** /api/v1/bean/platforms | Get all platforms with statistics
[**platformControllerGetPlatformList**](BeanPlatformsApi.md#platformcontrollergetplatformlist) | **GET** /api/v1/bean/platforms/list | Get platform list for current user
[**platformControllerMatchPlatforms**](BeanPlatformsApi.md#platformcontrollermatchplatforms) | **GET** /api/v1/bean/platforms/match | Match platforms by name or alias
[**platformControllerUpdate**](BeanPlatformsApi.md#platformcontrollerupdate) | **PUT** /api/v1/bean/platforms/{id} | Update a platform


# **platformControllerCreate**
> platformControllerCreate(createPlatformDto)

Create a new platform

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final CreatePlatformDto createPlatformDto = ; // CreatePlatformDto | 

try {
    api.platformControllerCreate(createPlatformDto);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPlatformDto** | [**CreatePlatformDto**](CreatePlatformDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformControllerDelete**
> platformControllerDelete(id)

Delete a platform

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String id = id_example; // String | Platform ID

try {
    api.platformControllerDelete(id);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform ID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformControllerFindAll**
> platformControllerFindAll()

Get all platforms with statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();

try {
    api.platformControllerFindAll();
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerFindAll: $e\n');
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

# **platformControllerGetPlatformList**
> BuiltList<PlatformListItemDto> platformControllerGetPlatformList()

Get platform list for current user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();

try {
    final response = api.platformControllerGetPlatformList();
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerGetPlatformList: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;PlatformListItemDto&gt;**](PlatformListItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformControllerMatchPlatforms**
> PlatformMatchResponseDto platformControllerMatchPlatforms(q, region)

Match platforms by name or alias

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String q = ICBC; // String | Search query — Chinese name, English name, or abbreviation
final String region = CN; // String | Region code for category override lookup

try {
    final response = api.platformControllerMatchPlatforms(q, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerMatchPlatforms: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search query — Chinese name, English name, or abbreviation | 
 **region** | **String**| Region code for category override lookup | [optional] 

### Return type

[**PlatformMatchResponseDto**](PlatformMatchResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **platformControllerUpdate**
> platformControllerUpdate(id, updatePlatformDto)

Update a platform

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPlatformsApi();
final String id = id_example; // String | Platform ID
final UpdatePlatformDto updatePlatformDto = ; // UpdatePlatformDto | 

try {
    api.platformControllerUpdate(id, updatePlatformDto);
} catch on DioException (e) {
    print('Exception when calling BeanPlatformsApi->platformControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Platform ID | 
 **updatePlatformDto** | [**UpdatePlatformDto**](UpdatePlatformDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

