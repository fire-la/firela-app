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
> userControllerDeleteOwnUser(region, deleteOwnUserDto)

Delete own user account

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String region = region_example; // String | Region code (cn, us, de)
final DeleteOwnUserDto deleteOwnUserDto = ; // DeleteOwnUserDto | 

try {
    api.userControllerDeleteOwnUser(region, deleteOwnUserDto);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerDeleteOwnUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
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
> userControllerDeleteUser(id, region)

Delete user by ID (admin only)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String id = id_example; // String | User ID to delete
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.userControllerDeleteUser(id, region);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerDeleteUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID to delete | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetAllUserSettingsByPage**
> userControllerGetAllUserSettingsByPage(pageNo, pageSize, region)

Get all user settings paginated (admin only)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final num pageNo = 8.14; // num | Page number
final num pageSize = 8.14; // num | Page size
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.userControllerGetAllUserSettingsByPage(pageNo, pageSize, region);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetAllUserSettingsByPage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNo** | **num**| Page number | 
 **pageSize** | **num**| Page size | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetAssetLiabilitySummary**
> userControllerGetAssetLiabilitySummary(region)

Get asset and liability summary for current user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.userControllerGetAssetLiabilitySummary(region);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetAssetLiabilitySummary: $e\n');
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

# **userControllerGetUser**
> userControllerGetUser(acceptLanguage, region)

Get current authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String acceptLanguage = acceptLanguage_example; // String | 
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.userControllerGetUser(acceptLanguage, region);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptLanguage** | **String**|  | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerGetUserInfo**
> userControllerGetUserInfo(id, region)

Get user info by user ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String id = id_example; // String | User ID
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.userControllerGetUserInfo(id, region);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerGetUserInfo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| User ID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerSignupUser**
> userControllerSignupUser(region, signupDto)

Sign up new user

Create a new account with auto-generated access token. Protected by Cloudflare Turnstile to prevent automated signup (when enabled).

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String region = region_example; // String | Region code (cn, us, de)
final SignupDto signupDto = ; // SignupDto | 

try {
    api.userControllerSignupUser(region, signupDto);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerSignupUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **signupDto** | [**SignupDto**](SignupDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userControllerUpdateUserSetting**
> userControllerUpdateUserSetting(region, updateUserSettingDto)

Update user settings

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getUsersApi();
final String region = region_example; // String | Region code (cn, us, de)
final UpdateUserSettingDto updateUserSettingDto = ; // UpdateUserSettingDto | 

try {
    api.userControllerUpdateUserSetting(region, updateUserSettingDto);
} catch on DioException (e) {
    print('Exception when calling UsersApi->userControllerUpdateUserSetting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **updateUserSettingDto** | [**UpdateUserSettingDto**](UpdateUserSettingDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

