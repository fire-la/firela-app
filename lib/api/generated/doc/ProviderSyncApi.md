# firela_api.api.ProviderSyncApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**providerSyncControllerGetSupportedProviders**](ProviderSyncApi.md#providersynccontrollergetsupportedproviders) | **GET** /api/v1/{region}/bean/import/provider/supported | Get supported providers
[**providerSyncControllerIsProviderSupported**](ProviderSyncApi.md#providersynccontrollerisprovidersupported) | **GET** /api/v1/{region}/bean/import/provider/{providerName}/supported | Check if provider is supported
[**providerSyncControllerSync**](ProviderSyncApi.md#providersynccontrollersync) | **POST** /api/v1/{region}/bean/import/provider/{providerName}/sync | Sync transactions from financial data provider


# **providerSyncControllerGetSupportedProviders**
> SupportedProvidersResponseDto providerSyncControllerGetSupportedProviders(region)

Get supported providers

Returns a list of all providers supported by the sync endpoint.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getProviderSyncApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.providerSyncControllerGetSupportedProviders(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProviderSyncApi->providerSyncControllerGetSupportedProviders: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**SupportedProvidersResponseDto**](SupportedProvidersResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerSyncControllerIsProviderSupported**
> providerSyncControllerIsProviderSupported(providerName, region)

Check if provider is supported

Returns whether a specific provider is supported.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getProviderSyncApi();
final String providerName = plaid; // String | Provider name to check
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.providerSyncControllerIsProviderSupported(providerName, region);
} catch on DioException (e) {
    print('Exception when calling ProviderSyncApi->providerSyncControllerIsProviderSupported: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerName** | **String**| Provider name to check | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **providerSyncControllerSync**
> ProviderSyncResponseDto providerSyncControllerSync(providerName, region, providerSyncDto)

Sync transactions from financial data provider

 Accepts raw transactions from external financial data providers, transforms them to Beancount format, and processes them through the ingestion pipeline.  **Supported Providers:** - **plaid**: Plaid API (US, Canada, Europe) - **teller**: Teller API (US) - **truelayer**: TrueLayer Open Banking (UK, Europe) - **gocardless**: GoCardless Bank Account Data (Europe) - **simplefin**: SimpleFIN (Self-hosted) - **yodlee**: Yodlee (Global) - **beancount-direct**: Beancount format transactions  **Processing Flow:** 1. Transform raw data via provider adapter 2. Validate transaction format 3. Deduplicate using originalId 4. Classify using rule engine 5. Route low-confidence to Review Center 6. Persist validated transactions   

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getProviderSyncApi();
final String providerName = providerName_example; // String | Provider name
final JsonObject region = us; // JsonObject | Region code
final ProviderSyncDto providerSyncDto = ; // ProviderSyncDto | 

try {
    final response = api.providerSyncControllerSync(providerName, region, providerSyncDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProviderSyncApi->providerSyncControllerSync: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerName** | **String**| Provider name | 
 **region** | [**JsonObject**](.md)| Region code | 
 **providerSyncDto** | [**ProviderSyncDto**](ProviderSyncDto.md)|  | 

### Return type

[**ProviderSyncResponseDto**](ProviderSyncResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

