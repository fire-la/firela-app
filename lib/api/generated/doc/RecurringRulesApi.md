# firela_api.api.RecurringRulesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recurringRuleControllerCreate**](RecurringRulesApi.md#recurringrulecontrollercreate) | **POST** /api/v1/{region}/bean/recurring-rules | Create a new recurring rule
[**recurringRuleControllerCreateFromTransaction**](RecurringRulesApi.md#recurringrulecontrollercreatefromtransaction) | **POST** /api/v1/{region}/bean/recurring-rules/from-transaction/{transactionId} | Create recurring rule from transaction
[**recurringRuleControllerDelete**](RecurringRulesApi.md#recurringrulecontrollerdelete) | **DELETE** /api/v1/{region}/bean/recurring-rules/{id} | Delete recurring rule
[**recurringRuleControllerFindAll**](RecurringRulesApi.md#recurringrulecontrollerfindall) | **GET** /api/v1/{region}/bean/recurring-rules | List recurring rules
[**recurringRuleControllerFindOne**](RecurringRulesApi.md#recurringrulecontrollerfindone) | **GET** /api/v1/{region}/bean/recurring-rules/{id} | Get recurring rule by ID
[**recurringRuleControllerGetWithStats**](RecurringRulesApi.md#recurringrulecontrollergetwithstats) | **GET** /api/v1/{region}/bean/recurring-rules/{id}/stats | Get rule with statistics
[**recurringRuleControllerUpdate**](RecurringRulesApi.md#recurringrulecontrollerupdate) | **PATCH** /api/v1/{region}/bean/recurring-rules/{id} | Update recurring rule


# **recurringRuleControllerCreate**
> RecurringRuleResponseDto recurringRuleControllerCreate(region, createRecurringRuleDto)

Create a new recurring rule

Creates a new recurring transaction rule for the authenticated user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String region = region_example; // String | Region code for tenant context
final CreateRecurringRuleDto createRecurringRuleDto = ; // CreateRecurringRuleDto | 

try {
    final response = api.recurringRuleControllerCreate(region, createRecurringRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createRecurringRuleDto** | [**CreateRecurringRuleDto**](CreateRecurringRuleDto.md)|  | 

### Return type

[**RecurringRuleResponseDto**](RecurringRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleControllerCreateFromTransaction**
> RecurringRuleResponseDto recurringRuleControllerCreateFromTransaction(transactionId, region, createRuleFromTransactionDto)

Create recurring rule from transaction

Auto-creates a recurring rule using transaction data. User only confirms frequency.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String transactionId = transactionId_example; // String | Source transaction ID
final String region = region_example; // String | Region code for tenant context
final CreateRuleFromTransactionDto createRuleFromTransactionDto = ; // CreateRuleFromTransactionDto | 

try {
    final response = api.recurringRuleControllerCreateFromTransaction(transactionId, region, createRuleFromTransactionDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerCreateFromTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionId** | **String**| Source transaction ID | 
 **region** | **String**| Region code for tenant context | 
 **createRuleFromTransactionDto** | [**CreateRuleFromTransactionDto**](CreateRuleFromTransactionDto.md)|  | 

### Return type

[**RecurringRuleResponseDto**](RecurringRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleControllerDelete**
> recurringRuleControllerDelete(id, region)

Delete recurring rule

Soft deletes a recurring rule (sets isActive to false)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String id = id_example; // String | Rule ID
final String region = region_example; // String | Region code for tenant context

try {
    api.recurringRuleControllerDelete(id, region);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Rule ID | 
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

### Return type

[**RecurringRuleWithStatsResponseDto**](RecurringRuleWithStatsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recurringRuleControllerUpdate**
> RecurringRuleResponseDto recurringRuleControllerUpdate(id, region, updateRecurringRuleDto)

Update recurring rule

Updates an existing recurring rule

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringRulesApi();
final String id = id_example; // String | Rule ID
final String region = region_example; // String | Region code for tenant context
final UpdateRecurringRuleDto updateRecurringRuleDto = ; // UpdateRecurringRuleDto | 

try {
    final response = api.recurringRuleControllerUpdate(id, region, updateRecurringRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringRulesApi->recurringRuleControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Rule ID | 
 **region** | **String**| Region code for tenant context | 
 **updateRecurringRuleDto** | [**UpdateRecurringRuleDto**](UpdateRecurringRuleDto.md)|  | 

### Return type

[**RecurringRuleResponseDto**](RecurringRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

