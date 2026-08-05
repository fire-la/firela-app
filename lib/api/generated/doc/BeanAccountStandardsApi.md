# firela_api.api.BeanAccountStandardsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountStandardsControllerGetRegions**](BeanAccountStandardsApi.md#accountstandardscontrollergetregions) | **GET** /api/v1/{region}/bean/account-standards/regions | Get available regions with hierarchy
[**accountStandardsControllerGetTemplateMetadata**](BeanAccountStandardsApi.md#accountstandardscontrollergettemplatemetadata) | **GET** /api/v1/{region}/bean/account-standards/template-metadata | Get template metadata for an account path
[**accountStandardsControllerGetTemplates**](BeanAccountStandardsApi.md#accountstandardscontrollergettemplates) | **GET** /api/v1/{region}/bean/account-standards | Get account templates


# **accountStandardsControllerGetRegions**
> RegionsMetadataResponseDto accountStandardsControllerGetRegions(region)

Get available regions with hierarchy

Returns supported regions with inheritance metadata

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountStandardsApi();
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.accountStandardsControllerGetRegions(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountStandardsApi->accountStandardsControllerGetRegions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

[**RegionsMetadataResponseDto**](RegionsMetadataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountStandardsControllerGetTemplateMetadata**
> TemplateMetadataResponseDto accountStandardsControllerGetTemplateMetadata(region, path)

Get template metadata for an account path

Returns root type for a template path.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountStandardsApi();
final String region = region_example; // String | Region code for tenant context
final String path = Assets:CN:Checking; // String | Account path to check

try {
    final response = api.accountStandardsControllerGetTemplateMetadata(region, path);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountStandardsApi->accountStandardsControllerGetTemplateMetadata: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **path** | **String**| Account path to check | 

### Return type

[**TemplateMetadataResponseDto**](TemplateMetadataResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountStandardsControllerGetTemplates**
> AccountStandardListResponseDto accountStandardsControllerGetTemplates(region, type, search)

Get account templates

Returns predefined account templates for a region. Supports filtering by account type and search term.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountStandardsApi();
final String region = region_example; // String | Region code (cn, us, de)
final String type = Assets; // String | Filter by account type
final String search = Bank; // String | Search term for path or description

try {
    final response = api.accountStandardsControllerGetTemplates(region, type, search);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountStandardsApi->accountStandardsControllerGetTemplates: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **type** | **String**| Filter by account type | [optional] 
 **search** | **String**| Search term for path or description | [optional] 

### Return type

[**AccountStandardListResponseDto**](AccountStandardListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

