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
> AnonymousLoginResponseDto authControllerAccessTokenLogin(anonymousLoginDto)

Anonymous login with access token

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAuthApi();
final AnonymousLoginDto anonymousLoginDto = ; // AnonymousLoginDto | 

try {
    final response = api.authControllerAccessTokenLogin(anonymousLoginDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthApi->authControllerAccessTokenLogin: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **anonymousLoginDto** | [**AnonymousLoginDto**](AnonymousLoginDto.md)|  | 

### Return type

[**AnonymousLoginResponseDto**](AnonymousLoginResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

