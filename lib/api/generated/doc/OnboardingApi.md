# firela_api.api.OnboardingApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**onboardingControllerBootstrap**](OnboardingApi.md#onboardingcontrollerbootstrap) | **POST** /api/v1/{region}/bean/onboarding | Bootstrap core accounts + register asset accounts with opening balances (ADR-0113)


# **onboardingControllerBootstrap**
> onboardingControllerBootstrap(region, onboardingDto)

Bootstrap core accounts + register asset accounts with opening balances (ADR-0113)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getOnboardingApi();
final String region = region_example; // String | Region code for tenant context
final OnboardingDto onboardingDto = ; // OnboardingDto | 

try {
    api.onboardingControllerBootstrap(region, onboardingDto);
} catch on DioException (e) {
    print('Exception when calling OnboardingApi->onboardingControllerBootstrap: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **onboardingDto** | [**OnboardingDto**](OnboardingDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

