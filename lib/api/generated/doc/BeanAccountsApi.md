# firela_api.api.BeanAccountsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountControllerClose**](BeanAccountsApi.md#accountcontrollerclose) | **POST** /api/v1/{region}/bean/accounts/{id}/close | Close account
[**accountControllerCreate**](BeanAccountsApi.md#accountcontrollercreate) | **POST** /api/v1/{region}/bean/accounts | Create a new account
[**accountControllerDelete**](BeanAccountsApi.md#accountcontrollerdelete) | **DELETE** /api/v1/{region}/bean/accounts/{id} | Delete account
[**accountControllerFindAll**](BeanAccountsApi.md#accountcontrollerfindall) | **GET** /api/v1/{region}/bean/accounts | List accounts
[**accountControllerFindOne**](BeanAccountsApi.md#accountcontrollerfindone) | **GET** /api/v1/{region}/bean/accounts/{id} | Get account by ID
[**accountControllerReopen**](BeanAccountsApi.md#accountcontrollerreopen) | **POST** /api/v1/{region}/bean/accounts/{id}/reopen | Reopen account
[**accountControllerUpdate**](BeanAccountsApi.md#accountcontrollerupdate) | **PUT** /api/v1/{region}/bean/accounts/{id} | Update account


# **accountControllerClose**
> AccountResponseDto accountControllerClose(id, region, closeAccountDto)

Close account

Closes an account (Beancount Close directive)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String id = id_example; // String | Account UUID
final String region = region_example; // String | Region code for tenant context
final CloseAccountDto closeAccountDto = ; // CloseAccountDto | 

try {
    final response = api.accountControllerClose(id, region, closeAccountDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerClose: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account UUID | 
 **region** | **String**| Region code for tenant context | 
 **closeAccountDto** | [**CloseAccountDto**](CloseAccountDto.md)|  | 

### Return type

[**AccountResponseDto**](AccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerCreate**
> AccountResponseDto accountControllerCreate(region, createAccountDto)

Create a new account

Creates a new account (Beancount Open directive)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String region = region_example; // String | Region code for tenant context
final CreateAccountDto createAccountDto = ; // CreateAccountDto | 

try {
    final response = api.accountControllerCreate(region, createAccountDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createAccountDto** | [**CreateAccountDto**](CreateAccountDto.md)|  | 

### Return type

[**AccountResponseDto**](AccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerDelete**
> accountControllerDelete(id, region)

Delete account

Deletes an account (only if no transactions)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String id = id_example; // String | Account UUID
final String region = region_example; // String | Region code for tenant context

try {
    api.accountControllerDelete(id, region);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account UUID | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerFindAll**
> AccountListResponseDto accountControllerFindAll(region, type, status, isCustom, search, limit, offset)

List accounts

Returns all accounts with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String region = region_example; // String | Region code for tenant context
final String type = type_example; // String | Filter by account type
final String status = status_example; // String | Filter by status
final bool isCustom = true; // bool | Filter by custom (user-created) accounts only
final String search = search_example; // String | Search term for path or i18nKey
final num limit = 8.14; // num | Maximum number of results
final num offset = 8.14; // num | Number of results to skip

try {
    final response = api.accountControllerFindAll(region, type, status, isCustom, search, limit, offset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **type** | **String**| Filter by account type | [optional] 
 **status** | **String**| Filter by status | [optional] [default to 'OPEN']
 **isCustom** | **bool**| Filter by custom (user-created) accounts only | [optional] 
 **search** | **String**| Search term for path or i18nKey | [optional] 
 **limit** | **num**| Maximum number of results | [optional] [default to 100]
 **offset** | **num**| Number of results to skip | [optional] [default to 0]

### Return type

[**AccountListResponseDto**](AccountListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerFindOne**
> AccountResponseDto accountControllerFindOne(id, region)

Get account by ID

Returns a specific account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String id = 550e8400-e29b-41d4-a716-446655440000; // String | Account UUID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.accountControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account UUID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**AccountResponseDto**](AccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerReopen**
> AccountResponseDto accountControllerReopen(id, region, reopenAccountDto)

Reopen account

Reopens a previously closed account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String id = id_example; // String | Account UUID
final String region = region_example; // String | Region code for tenant context
final ReopenAccountDto reopenAccountDto = ; // ReopenAccountDto | 

try {
    final response = api.accountControllerReopen(id, region, reopenAccountDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerReopen: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account UUID | 
 **region** | **String**| Region code for tenant context | 
 **reopenAccountDto** | [**ReopenAccountDto**](ReopenAccountDto.md)|  | 

### Return type

[**AccountResponseDto**](AccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountControllerUpdate**
> AccountResponseDto accountControllerUpdate(id, region, updateAccountDto)

Update account

Updates account metadata (path cannot be changed)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanAccountsApi();
final String id = id_example; // String | Account UUID
final String region = region_example; // String | Region code for tenant context
final UpdateAccountDto updateAccountDto = ; // UpdateAccountDto | 

try {
    final response = api.accountControllerUpdate(id, region, updateAccountDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanAccountsApi->accountControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Account UUID | 
 **region** | **String**| Region code for tenant context | 
 **updateAccountDto** | [**UpdateAccountDto**](UpdateAccountDto.md)|  | 

### Return type

[**AccountResponseDto**](AccountResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

