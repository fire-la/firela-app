# firela_api.api.InfoApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**infoControllerGetInfo**](InfoApi.md#infocontrollergetinfo) | **GET** /api/v1/system/info | Get system information


# **infoControllerGetInfo**
> infoControllerGetInfo(region)

Get system information

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getInfoApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.infoControllerGetInfo(region);
} catch on DioException (e) {
    print('Exception when calling InfoApi->infoControllerGetInfo: $e\n');
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

