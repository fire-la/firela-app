# firela_api.api.APIKeysApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiKeysControllerCreateApiKey**](APIKeysApi.md#apikeyscontrollercreateapikey) | **POST** /api/v1/auth/api-keys | Create API key


# **apiKeysControllerCreateApiKey**
> apiKeysControllerCreateApiKey()

Create API key

Generates a new API key for the authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getAPIKeysApi();

try {
    api.apiKeysControllerCreateApiKey();
} catch on DioException (e) {
    print('Exception when calling APIKeysApi->apiKeysControllerCreateApiKey: $e\n');
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

