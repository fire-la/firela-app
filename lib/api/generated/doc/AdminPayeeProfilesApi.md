# firela_api.api.AdminPayeeProfilesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payeeProfileAdminController**](AdminPayeeProfilesApi.md#payeeprofileadmincontroller) | **POST** /api/v1/admin/payee-profiles | 
[**payeeProfileAdminControllerFindAll**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerfindall) | **GET** /api/v1/admin/payee-profiles | List payee profiles (Admin only)
[**payeeProfileAdminControllerFindOne**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerfindone) | **GET** /api/v1/admin/payee-profiles/{id} | Get payee profile by ID (Admin only)
[**payeeProfileAdminController_0**](AdminPayeeProfilesApi.md#payeeprofileadmincontroller_0) | **PUT** /api/v1/admin/payee-profiles/{id} | 
[**payeeProfileAdminController_1**](AdminPayeeProfilesApi.md#payeeprofileadmincontroller_1) | **DELETE** /api/v1/admin/payee-profiles/{id} | 
[**payeeProfileAdminController_2**](AdminPayeeProfilesApi.md#payeeprofileadmincontroller_2) | **POST** /api/v1/admin/payee-profiles/{id}/verify | 
[**payeeProfileAdminController_3**](AdminPayeeProfilesApi.md#payeeprofileadmincontroller_3) | **DELETE** /api/v1/admin/payee-profiles/{id}/verify | 


# **payeeProfileAdminController**
> payeeProfileAdminController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeProfileAdminController(region);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminController: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerFindAll**
> PayeeProfileListResponseDto payeeProfileAdminControllerFindAll(region, search, category, country, isActive, verified, dataSource)

List payee profiles (Admin only)

Returns all payee profiles with optional filtering by category, country, verification status, etc.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)
final String search = starbucks; // String | Search term for canonical name and aliases (case-insensitive)
final String category = CAFE; // String | Filter by category
final String country = US; // String | Filter by country (ISO 3166-1 alpha-2)
final bool isActive = true; // bool | Filter by active status (default: true - show only active)
final bool verified = true; // bool | Filter by verification status. true = verified only, false = unverified only
final String dataSource = MANUAL; // String | Filter by data source

try {
    final response = api.payeeProfileAdminControllerFindAll(region, search, category, country, isActive, verified, dataSource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **search** | **String**| Search term for canonical name and aliases (case-insensitive) | [optional] 
 **category** | **String**| Filter by category | [optional] 
 **country** | **String**| Filter by country (ISO 3166-1 alpha-2) | [optional] 
 **isActive** | **bool**| Filter by active status (default: true - show only active) | [optional] 
 **verified** | **bool**| Filter by verification status. true = verified only, false = unverified only | [optional] 
 **dataSource** | **String**| Filter by data source | [optional] 

### Return type

[**PayeeProfileListResponseDto**](PayeeProfileListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerFindOne**
> PayeeProfileResponseDto payeeProfileAdminControllerFindOne(id, region)

Get payee profile by ID (Admin only)

Returns a single payee profile by its ID.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.payeeProfileAdminControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminController_0**
> payeeProfileAdminController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeProfileAdminController_0(region);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminController_0: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminController_1**
> payeeProfileAdminController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeProfileAdminController_1(region);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminController_1: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminController_2**
> payeeProfileAdminController_2(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeProfileAdminController_2(region);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminController_2: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminController_3**
> payeeProfileAdminController_3(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeProfileAdminController_3(region);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminController_3: $e\n');
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

