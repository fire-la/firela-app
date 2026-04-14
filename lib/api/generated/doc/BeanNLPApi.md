# firela_api.api.BeanNLPApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**nlpControllerClearSession**](BeanNLPApi.md#nlpcontrollerclearsession) | **DELETE** /api/v1/{region}/bean/nlp/session | Clear dialogue session
[**nlpControllerGetSession**](BeanNLPApi.md#nlpcontrollergetsession) | **GET** /api/v1/{region}/bean/nlp/session | Get current session state
[**nlpControllerProcessNaturalLanguage**](BeanNLPApi.md#nlpcontrollerprocessnaturallanguage) | **POST** /api/v1/{region}/bean/nlp/process | Process natural language input


# **nlpControllerClearSession**
> nlpControllerClearSession(region, sessionId)

Clear dialogue session

Clear the current NLP dialogue session. Use this to cancel an ongoing multi-turn dialogue.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanNLPApi();
final String region = region_example; // String | Region code (cn, us, de)
final String sessionId = sessionId_example; // String | Specific session ID to clear (defaults to user session)

try {
    api.nlpControllerClearSession(region, sessionId);
} catch on DioException (e) {
    print('Exception when calling BeanNLPApi->nlpControllerClearSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **sessionId** | **String**| Specific session ID to clear (defaults to user session) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nlpControllerGetSession**
> nlpControllerGetSession(region, sessionId)

Get current session state

Get the current NLP dialogue session state. Useful for debugging and displaying session context in UI.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanNLPApi();
final String region = region_example; // String | Region code (cn, us, de)
final String sessionId = sessionId_example; // String | Specific session ID to get (defaults to user session)

try {
    api.nlpControllerGetSession(region, sessionId);
} catch on DioException (e) {
    print('Exception when calling BeanNLPApi->nlpControllerGetSession: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **sessionId** | **String**| Specific session ID to get (defaults to user session) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **nlpControllerProcessNaturalLanguage**
> NlpResponseDto nlpControllerProcessNaturalLanguage(region, processNlpDto)

Process natural language input

Parse natural language text (Chinese/English) describing a transaction. Supports multi-turn dialogue for collecting missing information. When confidence < 0.75, returns \"confirm\" action requiring user verification. User can reply with confirmation words (确认/yes/ok) or provide corrections. Examples: \"yesterday Starbucks spent 35 yuan\", \"today lunch 28 yuan\", \"spent $50 at Walmart\"

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanNLPApi();
final String region = region_example; // String | Region code (cn, us, de)
final ProcessNlpDto processNlpDto = ; // ProcessNlpDto | Natural language transaction input with optional session ID

try {
    final response = api.nlpControllerProcessNaturalLanguage(region, processNlpDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanNLPApi->nlpControllerProcessNaturalLanguage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **processNlpDto** | [**ProcessNlpDto**](ProcessNlpDto.md)| Natural language transaction input with optional session ID | 

### Return type

[**NlpResponseDto**](NlpResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

