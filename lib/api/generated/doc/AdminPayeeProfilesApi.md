# firela_api.api.AdminPayeeProfilesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payeeProfileAdminControllerCreate**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollercreate) | **POST** /api/v1/admin/payee-profiles | Create payee profile (Admin only)
[**payeeProfileAdminControllerDelete**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerdelete) | **DELETE** /api/v1/admin/payee-profiles/{id} | Soft delete payee profile (Admin only)
[**payeeProfileAdminControllerFindAll**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerfindall) | **GET** /api/v1/admin/payee-profiles | List payee profiles (Admin only)
[**payeeProfileAdminControllerFindOne**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerfindone) | **GET** /api/v1/admin/payee-profiles/{id} | Get payee profile by ID (Admin only)
[**payeeProfileAdminControllerUnverify**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerunverify) | **DELETE** /api/v1/admin/payee-profiles/{id}/verify | Unverify payee profile (Admin only)
[**payeeProfileAdminControllerUpdate**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerupdate) | **PUT** /api/v1/admin/payee-profiles/{id} | Update payee profile (Admin only)
[**payeeProfileAdminControllerVerify**](AdminPayeeProfilesApi.md#payeeprofileadmincontrollerverify) | **POST** /api/v1/admin/payee-profiles/{id}/verify | Verify payee profile (Admin only)


# **payeeProfileAdminControllerCreate**
> PayeeProfileResponseDto payeeProfileAdminControllerCreate(createPayeeProfileDto)

Create payee profile (Admin only)

Creates a new global payee profile. The canonical name must be unique (case-insensitive).

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final CreatePayeeProfileDto createPayeeProfileDto = ; // CreatePayeeProfileDto | 

try {
    final response = api.payeeProfileAdminControllerCreate(createPayeeProfileDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPayeeProfileDto** | [**CreatePayeeProfileDto**](CreatePayeeProfileDto.md)|  | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerDelete**
> payeeProfileAdminControllerDelete(id)

Soft delete payee profile (Admin only)

Marks a payee profile as inactive (soft delete). The profile cannot be deleted if it is referenced by user payees.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)

try {
    api.payeeProfileAdminControllerDelete(id);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerFindAll**
> PayeeProfileListResponseDto payeeProfileAdminControllerFindAll(search, category, country, isActive, verified, dataSource)

List payee profiles (Admin only)

Returns all payee profiles with optional filtering by category, country, verification status, etc.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String search = starbucks; // String | Search term for canonical name and aliases (case-insensitive)
final String category = CAFE; // String | Filter by category
final String country = US; // String | Filter by country (ISO 3166-1 alpha-2)
final bool isActive = true; // bool | Filter by active status (default: true - show only active)
final bool verified = true; // bool | Filter by verification status. true = verified only, false = unverified only
final String dataSource = MANUAL; // String | Filter by data source

try {
    final response = api.payeeProfileAdminControllerFindAll(search, category, country, isActive, verified, dataSource);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> PayeeProfileResponseDto payeeProfileAdminControllerFindOne(id)

Get payee profile by ID (Admin only)

Returns a single payee profile by its ID.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)

try {
    final response = api.payeeProfileAdminControllerFindOne(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerUnverify**
> PayeeProfileResponseDto payeeProfileAdminControllerUnverify(id)

Unverify payee profile (Admin only)

Removes verification status by setting verifiedAt to null.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)

try {
    final response = api.payeeProfileAdminControllerUnverify(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerUnverify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerUpdate**
> PayeeProfileResponseDto payeeProfileAdminControllerUpdate(id, updatePayeeProfileDto)

Update payee profile (Admin only)

Updates an existing payee profile. The canonical name cannot be changed.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)
final UpdatePayeeProfileDto updatePayeeProfileDto = ; // UpdatePayeeProfileDto | 

try {
    final response = api.payeeProfileAdminControllerUpdate(id, updatePayeeProfileDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 
 **updatePayeeProfileDto** | [**UpdatePayeeProfileDto**](UpdatePayeeProfileDto.md)|  | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeProfileAdminControllerVerify**
> PayeeProfileResponseDto payeeProfileAdminControllerVerify(id)

Verify payee profile (Admin only)

Marks a payee profile as verified by setting verifiedAt to current timestamp.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAdminPayeeProfilesApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Payee profile ID (UUID)

try {
    final response = api.payeeProfileAdminControllerVerify(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AdminPayeeProfilesApi->payeeProfileAdminControllerVerify: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee profile ID (UUID) | 

### Return type

[**PayeeProfileResponseDto**](PayeeProfileResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

