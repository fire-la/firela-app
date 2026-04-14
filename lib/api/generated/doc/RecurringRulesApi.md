# firela_api.api.RecurringRulesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recurringRuleController**](RecurringRulesApi.md#recurringrulecontroller) | **POST** /api/v1/{region}/bean/recurring-rules | 
[**recurringRuleControllerFindAll**](RecurringRulesApi.md#recurringrulecontrollerfindall) | **GET** /api/v1/{region}/bean/recurring-rules | List recurring rules
[**recurringRuleControllerFindOne**](RecurringRulesApi.md#recurringrulecontrollerfindone) | **GET** /api/v1/{region}/bean/recurring-rules/{id} | Get recurring rule by ID
[**recurringRuleControllerGetWithStats**](RecurringRulesApi.md#recurringrulecontrollergetwithstats) | **GET** /api/v1/{region}/bean/recurring-rules/{id}/stats | Get rule with statistics
[**recurringRuleController_0**](RecurringRulesApi.md#recurringrulecontroller_0) | **POST** /api/v1/{region}/bean/recurring-rules/from-transaction/{transactionId} | 
[**recurringRuleController_1**](RecurringRulesApi.md#recurringrulecontroller_1) | **DELETE** /api/v1/{region}/bean/recurring-rules/{id} | 
[**recurringRuleController_2**](RecurringRulesApi.md#recurringrulecontroller_2) | **PATCH** /api/v1/{region}/bean/recurring-rules/{id} | 


# **recurringRuleController**
> recurringRuleController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.recurringRuleController(region);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleController: $e\n');
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

# **recurringRuleControllerFindAll**
> BuiltList<RecurringRuleResponseDto> recurringRuleControllerFindAll(region, isActive, frequency, hasAutoCreate)

List recurring rules

Returns all recurring rules for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code (cn, us, de)
final bool isActive = true; // bool | Filter by active status
final String frequency = frequency_example; // String | Filter by frequency (WEEKLY, MONTHLY, etc.)
final bool hasAutoCreate = true; // bool | Filter by autoCreate enabled

try {
    final response = api.recurringRuleControllerFindAll(region, isActive, frequency, hasAutoCreate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **isActive** | **bool**| Filter by active status | [optional] 
 **frequency** | **String**| Filter by frequency (WEEKLY, MONTHLY, etc.) | [optional] 
 **hasAutoCreate** | **bool**| Filter by autoCreate enabled | [optional] 

### Return type

[**BuiltList&lt;RecurringRuleResponseDto&gt;**](RecurringRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleControllerFindOne**
> RecurringRuleResponseDto recurringRuleControllerFindOne(id, region)

Get recurring rule by ID

Returns a specific recurring rule with its details

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String id = id_example; // String | Rule ID
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.recurringRuleControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Rule ID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**RecurringRuleResponseDto**](RecurringRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleControllerGetWithStats**
> RecurringRuleWithStatsResponseDto recurringRuleControllerGetWithStats(id, region)

Get rule with statistics

Returns a rule with pending/overdue counts and next expected date

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String id = id_example; // String | Rule ID
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.recurringRuleControllerGetWithStats(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerGetWithStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Rule ID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**RecurringRuleWithStatsResponseDto**](RecurringRuleWithStatsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleController_0**
> recurringRuleController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.recurringRuleController_0(region);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleController_0: $e\n');
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

# **recurringRuleController_1**
> recurringRuleController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.recurringRuleController_1(region);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleController_1: $e\n');
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

# **recurringRuleController_2**
> recurringRuleController_2(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.recurringRuleController_2(region);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleController_2: $e\n');
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

