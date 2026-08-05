# firela_api.api.ExternalAccountLinksApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**externalAccountLinkControllerCreate**](ExternalAccountLinksApi.md#externalaccountlinkcontrollercreate) | **POST** /api/v1/{region}/bean/external-account-links | Create an external account → BeanAccount mapping (ADR-0113)
[**externalAccountLinkControllerFindAll**](ExternalAccountLinksApi.md#externalaccountlinkcontrollerfindall) | **GET** /api/v1/{region}/bean/external-account-links | List the user&#39;s active external account links
[**externalAccountLinkControllerFindOne**](ExternalAccountLinksApi.md#externalaccountlinkcontrollerfindone) | **GET** /api/v1/{region}/bean/external-account-links/{id} | Get a single external account link
[**externalAccountLinkControllerRemove**](ExternalAccountLinksApi.md#externalaccountlinkcontrollerremove) | **DELETE** /api/v1/{region}/bean/external-account-links/{id} | Soft-delete (disconnect) an external account link


# **externalAccountLinkControllerCreate**
> ExternalAccountLinkResponseDto externalAccountLinkControllerCreate(region, createExternalAccountLinkDto)

Create an external account → BeanAccount mapping (ADR-0113)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExternalAccountLinksApi();
final String region = region_example; // String | Region code for tenant context
final CreateExternalAccountLinkDto createExternalAccountLinkDto = ; // CreateExternalAccountLinkDto | 

try {
    final response = api.externalAccountLinkControllerCreate(region, createExternalAccountLinkDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalAccountLinksApi->externalAccountLinkControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createExternalAccountLinkDto** | [**CreateExternalAccountLinkDto**](CreateExternalAccountLinkDto.md)|  | 

### Return type

[**ExternalAccountLinkResponseDto**](ExternalAccountLinkResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalAccountLinkControllerFindAll**
> ExternalAccountLinkListResponseDto externalAccountLinkControllerFindAll(provider, region)

List the user's active external account links

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExternalAccountLinksApi();
final String provider = provider_example; // String | 
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.externalAccountLinkControllerFindAll(provider, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalAccountLinksApi->externalAccountLinkControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provider** | **String**|  | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ExternalAccountLinkListResponseDto**](ExternalAccountLinkListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalAccountLinkControllerFindOne**
> ExternalAccountLinkResponseDto externalAccountLinkControllerFindOne(id, region)

Get a single external account link

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExternalAccountLinksApi();
final String id = id_example; // String | 
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.externalAccountLinkControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExternalAccountLinksApi->externalAccountLinkControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ExternalAccountLinkResponseDto**](ExternalAccountLinkResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **externalAccountLinkControllerRemove**
> externalAccountLinkControllerRemove(id, region)

Soft-delete (disconnect) an external account link

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExternalAccountLinksApi();
final String id = id_example; // String | 
final String region = region_example; // String | Region code for tenant context

try {
    api.externalAccountLinkControllerRemove(id, region);
} catch on DioException (e) {
    print('Exception when calling ExternalAccountLinksApi->externalAccountLinkControllerRemove: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

