# firela_api.api.ExpectedTransactionsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expectedTransactionController**](ExpectedTransactionsApi.md#expectedtransactioncontroller) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/skip | 
[**expectedTransactionControllerFindAll**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindall) | **GET** /api/v1/{region}/bean/expected-transactions | List expected transactions
[**expectedTransactionControllerFindOne**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindone) | **GET** /api/v1/{region}/bean/expected-transactions/{id} | Get expected transaction by ID
[**expectedTransactionControllerFindOverdue**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindoverdue) | **GET** /api/v1/{region}/bean/expected-transactions/overdue | List overdue expected transactions
[**expectedTransactionController_0**](ExpectedTransactionsApi.md#expectedtransactioncontroller_0) | **DELETE** /api/v1/{region}/bean/expected-transactions/{id}/skip | 
[**expectedTransactionController_1**](ExpectedTransactionsApi.md#expectedtransactioncontroller_1) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/match | 
[**expectedTransactionController_2**](ExpectedTransactionsApi.md#expectedtransactioncontroller_2) | **DELETE** /api/v1/{region}/bean/expected-transactions/{id}/match | 
[**expectedTransactionController_3**](ExpectedTransactionsApi.md#expectedtransactioncontroller_3) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/enter | 


# **expectedTransactionController**
> expectedTransactionController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.expectedTransactionController(region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionController: $e\n');
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

# **expectedTransactionControllerFindAll**
> ExpectedTransactionListResponseDto expectedTransactionControllerFindAll(region, ruleId, status, fromDate, toDate)

List expected transactions

Returns expected transactions for the authenticated user with optional filtering

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)
final String ruleId = ruleId_example; // String | Filter by recurring rule ID
final String status = status_example; // String | Filter by status (PENDING, COMPLETED, SKIPPED)
final String fromDate = fromDate_example; // String | Filter by date range start (YYYY-MM-DD)
final String toDate = toDate_example; // String | Filter by date range end (YYYY-MM-DD)

try {
    final response = api.expectedTransactionControllerFindAll(region, ruleId, status, fromDate, toDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **ruleId** | **String**| Filter by recurring rule ID | [optional] 
 **status** | **String**| Filter by status (PENDING, COMPLETED, SKIPPED) | [optional] 
 **fromDate** | **String**| Filter by date range start (YYYY-MM-DD) | [optional] 
 **toDate** | **String**| Filter by date range end (YYYY-MM-DD) | [optional] 

### Return type

[**ExpectedTransactionListResponseDto**](ExpectedTransactionListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerFindOne**
> ExpectedTransactionResponseDto expectedTransactionControllerFindOne(id, region)

Get expected transaction by ID

Returns a specific expected transaction with rule details

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.expectedTransactionControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**ExpectedTransactionResponseDto**](ExpectedTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerFindOverdue**
> ExpectedTransactionListResponseDto expectedTransactionControllerFindOverdue(region)

List overdue expected transactions

Returns all overdue expected transactions (PENDING past tolerance)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.expectedTransactionControllerFindOverdue(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerFindOverdue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**ExpectedTransactionListResponseDto**](ExpectedTransactionListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionController_0**
> expectedTransactionController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.expectedTransactionController_0(region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionController_0: $e\n');
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

# **expectedTransactionController_1**
> expectedTransactionController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.expectedTransactionController_1(region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionController_1: $e\n');
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

# **expectedTransactionController_2**
> expectedTransactionController_2(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.expectedTransactionController_2(region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionController_2: $e\n');
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

# **expectedTransactionController_3**
> expectedTransactionController_3(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.expectedTransactionController_3(region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionController_3: $e\n');
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

