# firela_api.api.AccountApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost:3333/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**closeAccount**](AccountApi.md#closeaccount) | **POST** /{region}/bean/accounts/{id}/close | Close account
[**createAccount**](AccountApi.md#createaccount) | **POST** /{region}/bean/accounts | Create account
[**deleteAccount**](AccountApi.md#deleteaccount) | **DELETE** /{region}/bean/accounts/{id} | Delete account
[**getAccount**](AccountApi.md#getaccount) | **GET** /{region}/bean/accounts/{id} | Get account
[**listAccounts**](AccountApi.md#listaccounts) | **GET** /{region}/bean/accounts | List accounts
[**reopenAccount**](AccountApi.md#reopenaccount) | **POST** /{region}/bean/accounts/{id}/reopen | Reopen account
[**updateAccount**](AccountApi.md#updateaccount) | **PUT** /{region}/bean/accounts/{id} | Update account


# **closeAccount**
> AccountResponse closeAccount(region, id)

Close account

Mark an account as closed

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Account ID (UUID format)

try {
    final response = api.closeAccount(region, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->closeAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Account ID (UUID format) | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccount**
> AccountResponse createAccount(region, createAccountRequest)

Create account

Create a new Beancount account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final CreateAccountRequest createAccountRequest = ; // CreateAccountRequest | 

try {
    final response = api.createAccount(region, createAccountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->createAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createAccountRequest** | [**CreateAccountRequest**](CreateAccountRequest.md)|  | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccount**
> deleteAccount(region, id)

Delete account

Delete an account (only if no postings reference it)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Account ID (UUID format)

try {
    api.deleteAccount(region, id);
} catch on DioException (e) {
    print('Exception when calling AccountApi->deleteAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Account ID (UUID format) | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccount**
> AccountResponse getAccount(region, id)

Get account

Retrieve a specific account by ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Account ID (UUID format)

try {
    final response = api.getAccount(region, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->getAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Account ID (UUID format) | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**
> AccountListResponse listAccounts(region, type, status, isCustom, search, limit, offset)

List accounts

Retrieve all accounts for the specified region with optional filters

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final AccountType type = ; // AccountType | Filter by account type
final AccountStatus status = ; // AccountStatus | Filter by account status
final bool isCustom = true; // bool | Filter custom accounts only
final String search = search_example; // String | Search in path and i18nKey
final int limit = 56; // int | 
final int offset = 56; // int | 

try {
    final response = api.listAccounts(region, type, status, isCustom, search, limit, offset);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->listAccounts: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **type** | [**AccountType**](.md)| Filter by account type | [optional] 
 **status** | [**AccountStatus**](.md)| Filter by account status | [optional] 
 **isCustom** | **bool**| Filter custom accounts only | [optional] 
 **search** | **String**| Search in path and i18nKey | [optional] 
 **limit** | **int**|  | [optional] [default to 100]
 **offset** | **int**|  | [optional] [default to 0]

### Return type

[**AccountListResponse**](AccountListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reopenAccount**
> AccountResponse reopenAccount(region, id)

Reopen account

Reopen a previously closed account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Account ID (UUID format)

try {
    final response = api.reopenAccount(region, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->reopenAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Account ID (UUID format) | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**
> AccountResponse updateAccount(region, id, updateAccountRequest)

Update account

Update account properties

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAccountApi();
final String region = region_example; // String | Region code for tenant context
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Account ID (UUID format)
final UpdateAccountRequest updateAccountRequest = ; // UpdateAccountRequest | 

try {
    final response = api.updateAccount(region, id, updateAccountRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountApi->updateAccount: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Account ID (UUID format) | 
 **updateAccountRequest** | [**UpdateAccountRequest**](UpdateAccountRequest.md)|  | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

