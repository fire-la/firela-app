# firela_api.api.UsersApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userControllerDeleteOwnUser**](UsersApi.md#usercontrollerdeleteownuser) | **DELETE** /api/v1/users | Delete own user account
[**userControllerDeleteUser**](UsersApi.md#usercontrollerdeleteuser) | **DELETE** /api/v1/users/{id} | Delete user by ID (admin only)
[**userControllerGetAllUserSettingsByPage**](UsersApi.md#usercontrollergetallusersettingsbypage) | **GET** /api/v1/users/settings-by-page | Get all user settings paginated (admin only)
[**userControllerGetAssetLiabilitySummary**](UsersApi.md#usercontrollergetassetliabilitysummary) | **GET** /api/v1/users/asset-liability-summary | Get asset and liability summary for current user
[**userControllerGetUser**](UsersApi.md#usercontrollergetuser) | **GET** /api/v1/users | Get current authenticated user
[**userControllerGetUserInfo**](UsersApi.md#usercontrollergetuserinfo) | **GET** /api/v1/users/{id}/info | Get user info by user ID
[**userControllerSignupUser**](UsersApi.md#usercontrollersignupuser) | **POST** /api/v1/users | Sign up new user
[**userControllerUpdateUserSetting**](UsersApi.md#usercontrollerupdateusersetting) | **PUT** /api/v1/users/setting | Update user settings


# **userControllerDeleteOwnUser**
> userControllerDeleteOwnUser(deleteOwnUserDto)

Delete own user account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final DeleteOwnUserDto deleteOwnUserDto = ; // DeleteOwnUserDto | 

try {
    api.userControllerDeleteOwnUser(deleteOwnUserDto);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerDeleteOwnUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteOwnUserDto** | [**DeleteOwnUserDto**](DeleteOwnUserDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerDeleteUser**
> userControllerDeleteUser(id)

Delete user by ID (admin only)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String id = id_example; // String | User ID to delete

try {
    api.userControllerDeleteUser(id);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerDeleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetAllUserSettingsByPage**
> userControllerGetAllUserSettingsByPage(pageNo, pageSize)

Get all user settings paginated (admin only)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final num pageNo = 8.14; // num | Page number
final num pageSize = 8.14; // num | Page size

try {
    api.userControllerGetAllUserSettingsByPage(pageNo, pageSize);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetAllUserSettingsByPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNo** | **num**| Page number | 
 **pageSize** | **num**| Page size | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetAssetLiabilitySummary**
> userControllerGetAssetLiabilitySummary()

Get asset and liability summary for current user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();

try {
    api.userControllerGetAssetLiabilitySummary();
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetAssetLiabilitySummary: $e\n');
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

# **userControllerGetUser**
> userControllerGetUser(acceptLanguage)

Get current authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String acceptLanguage = acceptLanguage_example; // String | 

try {
    api.userControllerGetUser(acceptLanguage);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptLanguage** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetUserInfo**
> userControllerGetUserInfo(id)

Get user info by user ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String id = id_example; // String | User ID

try {
    api.userControllerGetUserInfo(id);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetUserInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerSignupUser**
> SignupResponseDto userControllerSignupUser(signupDto)

Sign up new user

Create a new account with auto-generated access token. Protected by Cloudflare Turnstile to prevent automated signup (when enabled).

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final SignupDto signupDto = ; // SignupDto | 

try {
    final response = api.userControllerSignupUser(signupDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerSignupUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signupDto** | [**SignupDto**](SignupDto.md)|  | 

### Return type

[**SignupResponseDto**](SignupResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerUpdateUserSetting**
> userControllerUpdateUserSetting(updateUserSettingDto)

Update user settings

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final UpdateUserSettingDto updateUserSettingDto = ; // UpdateUserSettingDto | 

try {
    api.userControllerUpdateUserSetting(updateUserSettingDto);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerUpdateUserSetting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **updateUserSettingDto** | [**UpdateUserSettingDto**](UpdateUserSettingDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

