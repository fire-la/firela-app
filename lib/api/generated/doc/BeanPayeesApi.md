# firela_api.api.BeanPayeesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**payeeControllerAutocomplete**](BeanPayeesApi.md#payeecontrollerautocomplete) | **GET** /api/v1/bean/payees/autocomplete | Get payee autocomplete suggestions
[**payeeControllerCreate**](BeanPayeesApi.md#payeecontrollercreate) | **POST** /api/v1/bean/payees | Create a new payee
[**payeeControllerDelete**](BeanPayeesApi.md#payeecontrollerdelete) | **DELETE** /api/v1/bean/payees/{id} | Delete payee
[**payeeControllerFindAll**](BeanPayeesApi.md#payeecontrollerfindall) | **GET** /api/v1/bean/payees | List user payees
[**payeeControllerFindOne**](BeanPayeesApi.md#payeecontrollerfindone) | **GET** /api/v1/bean/payees/{id} | Get payee by ID
[**payeeControllerGetTopPayees**](BeanPayeesApi.md#payeecontrollergettoppayees) | **GET** /api/v1/bean/payees/top | Get top payees by usage
[**payeeControllerUpdate**](BeanPayeesApi.md#payeecontrollerupdate) | **PUT** /api/v1/bean/payees/{id} | Update payee


# **payeeControllerAutocomplete**
> PayeeAutocompleteResponseDto payeeControllerAutocomplete(q, limit)

Get payee autocomplete suggestions

Returns active payee names matching the query, sorted by recent usage. Used for transaction input autocomplete.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String q = Star; // String | Search query for payee name (partial match, case-insensitive)
final num limit = 10; // num | Maximum number of suggestions

try {
    final response = api.payeeControllerAutocomplete(q, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerAutocomplete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search query for payee name (partial match, case-insensitive) | 
 **limit** | **num**| Maximum number of suggestions | [optional] 

### Return type

[**PayeeAutocompleteResponseDto**](PayeeAutocompleteResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerCreate**
> PayeeResponseDto payeeControllerCreate(createPayeeDto)

Create a new payee

Creates a new payee mapping for the authenticated user. The payee name must be unique within the user's account.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final CreatePayeeDto createPayeeDto = ; // CreatePayeeDto | 

try {
    final response = api.payeeControllerCreate(createPayeeDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPayeeDto** | [**CreatePayeeDto**](CreatePayeeDto.md)|  | 

### Return type

[**PayeeResponseDto**](PayeeResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerDelete**
> payeeControllerDelete(id)

Delete payee

Soft deletes a payee by marking it as inactive. Inactive payees will not appear in autocomplete suggestions.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String id = uuid-123-456; // String | Payee UUID

try {
    api.payeeControllerDelete(id);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee UUID | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerFindAll**
> PayeeListResponseDto payeeControllerFindAll(search, payee, category, tag, isActive)

List user payees

Returns all payee mappings for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String search = Star; // String | Search term for payee name (partial match, case-insensitive). Useful for autocomplete.
final String payee = Starbucks; // String | Filter by exact payee name match
final String category = Dining:Coffee; // String | Filter by custom category
final String tag = favorite; // String | Filter by custom tag (returns payees that have this tag)
final bool isActive = true; // bool | Filter by active status. Defaults to true (show only active payees).

try {
    final response = api.payeeControllerFindAll(search, payee, category, tag, isActive);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
> PayeeResponseDto payeeControllerFindOne(id)

Get payee by ID

Returns a specific payee mapping by its UUID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String id = uuid-123-456; // String | Payee UUID

try {
    final response = api.payeeControllerFindOne(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee UUID | 

### Return type

[**PayeeResponseDto**](PayeeResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerGetTopPayees**
> BuiltList<PayeeStatsResponseDto> payeeControllerGetTopPayees(limit)

Get top payees by usage

Returns the most frequently used payees, sorted by use count. Used for statistics and analytics.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final num limit = 10; // num | Maximum number of results

try {
    final response = api.payeeControllerGetTopPayees(limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerGetTopPayees: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **num**| Maximum number of results | [optional] 

### Return type

[**BuiltList&lt;PayeeStatsResponseDto&gt;**](PayeeStatsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **payeeControllerUpdate**
> PayeeResponseDto payeeControllerUpdate(id, updatePayeeDto)

Update payee

Updates a payee mapping. The payee name cannot be changed after creation.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanPayeesApi();
final String id = uuid-123-456; // String | Payee UUID
final UpdatePayeeDto updatePayeeDto = ; // UpdatePayeeDto | 

try {
    final response = api.payeeControllerUpdate(id, updatePayeeDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanPayeesApi->payeeControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Payee UUID | 
 **updatePayeeDto** | [**UpdatePayeeDto**](UpdatePayeeDto.md)|  | 

### Return type

[**PayeeResponseDto**](PayeeResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

