# firela_api.api.BeanImportApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileImportControllerIdentifyFile**](BeanImportApi.md#fileimportcontrolleridentifyfile) | **POST** /api/v1/{region}/bean/import/identify | Identify file type
[**fileImportControllerImportBeancount**](BeanImportApi.md#fileimportcontrollerimportbeancount) | **POST** /api/v1/{region}/bean/import/beancount | Import a Beancount file in community format
[**fileImportControllerImportFile**](BeanImportApi.md#fileimportcontrollerimportfile) | **POST** /api/v1/{region}/bean/import/file | Import a bill file
[**importerConfigControllerGetConfig**](BeanImportApi.md#importerconfigcontrollergetconfig) | **GET** /api/v1/{region}/bean/import/config/{importerId} | Get importer configuration
[**importerConfigControllerResetConfig**](BeanImportApi.md#importerconfigcontrollerresetconfig) | **POST** /api/v1/{region}/bean/import/config/{importerId}/reset | Reset configuration to default
[**importerConfigControllerUpdateConfig**](BeanImportApi.md#importerconfigcontrollerupdateconfig) | **PUT** /api/v1/{region}/bean/import/config/{importerId} | Update importer configuration


# **fileImportControllerIdentifyFile**
> IdentifyResultDto fileImportControllerIdentifyFile(region, file)

Identify file type

Upload a file to check if it can be processed by any registered importer. Does not perform actual import - useful for pre-validation. Uses user-specific importer configuration.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
 **file** | **MultipartFile**| Bill file to import (CSV, PDF, OFX, etc.) | 

### Return type

[**IdentifyResultDto**](IdentifyResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileImportControllerImportBeancount**
> FileImportControllerImportBeancount200Response fileImportControllerImportBeancount(region, file)

Import a Beancount file in community format

Upload a .beancount file to import. The system parses community-format paths, converts to internal format using category metadata, auto-creates accounts, and imports transactions with deduplication. Maximum file size: 50MB. Only 1 import per user at a time.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String region = region_example; // String | Region code for tenant context
final MultipartFile file = BINARY_DATA_HERE; // MultipartFile | Bill file to import (CSV, PDF, OFX, etc.)

try {
    final response = api.fileImportControllerImportBeancount(region, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->fileImportControllerImportBeancount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **file** | **MultipartFile**| Bill file to import (CSV, PDF, OFX, etc.) | 

### Return type

[**FileImportControllerImportBeancount200Response**](FileImportControllerImportBeancount200Response.md)

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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
 **file** | **MultipartFile**| Bill file to import (CSV, PDF, OFX, etc.) | 

### Return type

[**ImportResultDto**](ImportResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importerConfigControllerGetConfig**
> ImporterConfigDto importerConfigControllerGetConfig(importerId, region)

Get importer configuration

Returns the current configuration for the specified importer. Creates default configuration if none exists.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String importerId = alipay; // String | Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit
final String region = region_example; // String | Region code for tenant context

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
 **importerId** | **String**| Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ImporterConfigDto**](ImporterConfigDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importerConfigControllerResetConfig**
> ImporterConfigDto importerConfigControllerResetConfig(importerId, region)

Reset configuration to default

Resets the configuration for the specified importer to default values. This operation overwrites all existing configuration.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String importerId = alipay; // String | Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.importerConfigControllerResetConfig(importerId, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->importerConfigControllerResetConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importerId** | **String**| Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ImporterConfigDto**](ImporterConfigDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importerConfigControllerUpdateConfig**
> ImporterConfigDto importerConfigControllerUpdateConfig(importerId, region, updateImporterConfigDto)

Update importer configuration

Updates the configuration for the specified importer. Partial updates are supported.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanImportApi();
final String importerId = alipay; // String | Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit
final String region = region_example; // String | Region code for tenant context
final UpdateImporterConfigDto updateImporterConfigDto = ; // UpdateImporterConfigDto | Partial configuration update. Only provided fields will be updated.

try {
    final response = api.importerConfigControllerUpdateConfig(importerId, region, updateImporterConfigDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanImportApi->importerConfigControllerUpdateConfig: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **importerId** | **String**| Importer identifier. Supported importers: alipay, alipay-web, wechat, boc, boc-credit, ccb, cmb, cmbc, cmbc-credit, icbc, icbc-credit, hsbc-hk-credit, hsbc-hk-debit | 
 **region** | **String**| Region code for tenant context | 
 **updateImporterConfigDto** | [**UpdateImporterConfigDto**](UpdateImporterConfigDto.md)| Partial configuration update. Only provided fields will be updated. | 

### Return type

[**ImporterConfigDto**](ImporterConfigDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

