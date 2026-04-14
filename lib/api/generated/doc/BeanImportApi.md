# firela_api.api.BeanImportApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileImportControllerIdentifyFile**](BeanImportApi.md#fileimportcontrolleridentifyfile) | **POST** /api/v1/{region}/bean/import/identify | Identify file type
[**fileImportControllerImportFile**](BeanImportApi.md#fileimportcontrollerimportfile) | **POST** /api/v1/{region}/bean/import/file | Import a bill file
[**importerConfigController**](BeanImportApi.md#importerconfigcontroller) | **PUT** /api/v1/{region}/bean/import/config/{importerId} | 
[**importerConfigControllerGetConfig**](BeanImportApi.md#importerconfigcontrollergetconfig) | **GET** /api/v1/{region}/bean/import/config/{importerId} | Get importer configuration
[**importerConfigController_0**](BeanImportApi.md#importerconfigcontroller_0) | **POST** /api/v1/{region}/bean/import/config/{importerId}/reset | 


# **fileImportControllerIdentifyFile**
> IdentifyResultDto fileImportControllerIdentifyFile(region, file)

Identify file type

Upload a file to check if it can be processed by any registered importer. Does not perform actual import - useful for pre-validation. Uses user-specific importer configuration.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code (cn, us, de)
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Bill file to import (CSV, PDF, OFX, etc.)

try {
    final response = api.fileImportControllerIdentifyFile(region, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->fileImportControllerIdentifyFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **file** | **MultipartFile**| Bill file to import (CSV, PDF, OFX, etc.) | 

### Return type

[**IdentifyResultDto**](IdentifyResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileImportControllerImportFile**
> ImportResultDto fileImportControllerImportFile(region, file)

Import a bill file

Upload and process a bill file (CSV, PDF, OFX, etc.). The system automatically identifies the file type, extracts transactions, validates them, and stores only validated transactions to the database. Maximum file size: 50MB. Only 1 import per user at a time (concurrent imports rejected with 429).

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code (cn, us, de)
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Bill file to import (CSV, PDF, OFX, etc.)

try {
    final response = api.fileImportControllerImportFile(region, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->fileImportControllerImportFile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **file** | **MultipartFile**| Bill file to import (CSV, PDF, OFX, etc.) | 

### Return type

[**ImportResultDto**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importerConfigController**
> importerConfigController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.importerConfigController(region);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->importerConfigController: $e\n');
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

# **importerConfigControllerGetConfig**
> ImporterConfigDto importerConfigControllerGetConfig(importerId, region)

Get importer configuration

Returns the current configuration for the specified importer. Creates default configuration if none exists.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String importerId = alipay; // String | Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.importerConfigControllerGetConfig(importerId, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->importerConfigControllerGetConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importerId** | **String**| Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**ImporterConfigDto**](ImporterConfigDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importerConfigController_0**
> importerConfigController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.importerConfigController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->importerConfigController_0: $e\n');
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

