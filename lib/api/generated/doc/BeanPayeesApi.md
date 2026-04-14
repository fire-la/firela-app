# firela_api.api.BeanPayeesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payeeController**](BeanPayeesApi.md#payeecontroller) | **POST** /api/v1/bean/payees | 
[**payeeControllerAutocomplete**](BeanPayeesApi.md#payeecontrollerautocomplete) | **GET** /api/v1/bean/payees/autocomplete | Get payee autocomplete suggestions
[**payeeControllerFindAll**](BeanPayeesApi.md#payeecontrollerfindall) | **GET** /api/v1/bean/payees | List user payees
[**payeeControllerFindOne**](BeanPayeesApi.md#payeecontrollerfindone) | **GET** /api/v1/bean/payees/{id} | Get payee by ID
[**payeeControllerGetTopPayees**](BeanPayeesApi.md#payeecontrollergettoppayees) | **GET** /api/v1/bean/payees/top | Get top payees by usage
[**payeeController_0**](BeanPayeesApi.md#payeecontroller_0) | **PUT** /api/v1/bean/payees/{id} | 
[**payeeController_1**](BeanPayeesApi.md#payeecontroller_1) | **DELETE** /api/v1/bean/payees/{id} | 


# **payeeController**
> payeeController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeController(region);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeController: $e\n');
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

# **payeeControllerAutocomplete**
> PayeeAutocompleteResponseDto payeeControllerAutocomplete(q, region, limit)

Get payee autocomplete suggestions

Returns active payee names matching the query, sorted by recent usage. Used for transaction input autocomplete.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String q = Star; // String | Search query for payee name (partial match, case-insensitive)
final String region = region_example; // String | Region code (cn, us, de)
final num limit = 10; // num | Maximum number of suggestions

try {
    final response = api.payeeControllerAutocomplete(q, region, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerAutocomplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search query for payee name (partial match, case-insensitive) | 
 **region** | **String**| Region code (cn, us, de) | 
 **limit** | **num**| Maximum number of suggestions | [optional] 

### Return type

[**PayeeAutocompleteResponseDto**](PayeeAutocompleteResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerFindAll**
> PayeeListResponseDto payeeControllerFindAll(region, search, payee, category, tag, isActive)

List user payees

Returns all payee mappings for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String region = region_example; // String | Region code (cn, us, de)
final String search = Star; // String | Search term for payee name (partial match, case-insensitive). Useful for autocomplete.
final String payee = Starbucks; // String | Filter by exact payee name match
final String category = Dining:Coffee; // String | Filter by custom category
final String tag = favorite; // String | Filter by custom tag (returns payees that have this tag)
final bool isActive = true; // bool | Filter by active status. Defaults to true (show only active payees).

try {
    final response = api.payeeControllerFindAll(region, search, payee, category, tag, isActive);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **search** | **String**| Search term for payee name (partial match, case-insensitive). Useful for autocomplete. | [optional] 
 **payee** | **String**| Filter by exact payee name match | [optional] 
 **category** | **String**| Filter by custom category | [optional] 
 **tag** | **String**| Filter by custom tag (returns payees that have this tag) | [optional] 
 **isActive** | **bool**| Filter by active status. Defaults to true (show only active payees). | [optional] [default to true]

### Return type

[**PayeeListResponseDto**](PayeeListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerFindOne**
> PayeeResponseDto payeeControllerFindOne(id, region)

Get payee by ID

Returns a specific payee mapping by its UUID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String id = uuid-123-456; // String | Payee UUID
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.payeeControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee UUID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**PayeeResponseDto**](PayeeResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerGetTopPayees**
> BuiltList<PayeeStatsResponseDto> payeeControllerGetTopPayees(region, limit)

Get top payees by usage

Returns the most frequently used payees, sorted by use count. Used for statistics and analytics.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String region = region_example; // String | Region code (cn, us, de)
final num limit = 10; // num | Maximum number of results

try {
    final response = api.payeeControllerGetTopPayees(region, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerGetTopPayees: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **limit** | **num**| Maximum number of results | [optional] 

### Return type

[**BuiltList&lt;PayeeStatsResponseDto&gt;**](PayeeStatsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeController_0**
> payeeController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeController_0: $e\n');
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

# **payeeController_1**
> payeeController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.payeeController_1(region);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeController_1: $e\n');
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

