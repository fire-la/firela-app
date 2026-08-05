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
> infoControllerGetInfo()

Get system information

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getInfoApi();

try {
    api.infoControllerGetInfo();
} catch on DioException (e) {
    print('Exception when calling InfoApi->infoControllerGetInfo: $e\n');
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

