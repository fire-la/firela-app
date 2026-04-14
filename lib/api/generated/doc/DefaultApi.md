# firela_api.api.DefaultApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cacheControllerFlushCache**](DefaultApi.md#cachecontrollerflushcache) | **POST** /api/v1/cache/flush | 


# **cacheControllerFlushCache**
> cacheControllerFlushCache(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getDefaultApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.cacheControllerFlushCache(region);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->cacheControllerFlushCache: $e\n');
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

