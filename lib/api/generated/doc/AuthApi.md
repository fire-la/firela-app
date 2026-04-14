# firela_api.api.AuthApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authControllerAccessTokenLogin**](AuthApi.md#authcontrolleraccesstokenlogin) | **POST** /api/v1/auth/sessions/anonymous | Anonymous login with access token


# **authControllerAccessTokenLogin**
> authControllerAccessTokenLogin(region, anonymousLoginDto)

Anonymous login with access token

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAuthApi();
final String region = region_example; // String | Region code (cn, us, de)
final AnonymousLoginDto anonymousLoginDto = ; // AnonymousLoginDto | 

try {
    api.authControllerAccessTokenLogin(region, anonymousLoginDto);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerAccessTokenLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **anonymousLoginDto** | [**AnonymousLoginDto**](AnonymousLoginDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

