# firela_api.api.ExpectedTransactionsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expectedTransactionControllerConfirmMatch**](ExpectedTransactionsApi.md#expectedtransactioncontrollerconfirmmatch) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/match | Confirm transaction match
[**expectedTransactionControllerEnterNow**](ExpectedTransactionsApi.md#expectedtransactioncontrollerenternow) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/enter | Enter Now
[**expectedTransactionControllerFindAll**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindall) | **GET** /api/v1/{region}/bean/expected-transactions | List expected transactions
[**expectedTransactionControllerFindOne**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindone) | **GET** /api/v1/{region}/bean/expected-transactions/{id} | Get expected transaction by ID
[**expectedTransactionControllerFindOverdue**](ExpectedTransactionsApi.md#expectedtransactioncontrollerfindoverdue) | **GET** /api/v1/{region}/bean/expected-transactions/overdue | List overdue expected transactions
[**expectedTransactionControllerSkip**](ExpectedTransactionsApi.md#expectedtransactioncontrollerskip) | **POST** /api/v1/{region}/bean/expected-transactions/{id}/skip | Skip expected transaction
[**expectedTransactionControllerUndoSkip**](ExpectedTransactionsApi.md#expectedtransactioncontrollerundoskip) | **DELETE** /api/v1/{region}/bean/expected-transactions/{id}/skip | Undo skip
[**expectedTransactionControllerUnmatch**](ExpectedTransactionsApi.md#expectedtransactioncontrollerunmatch) | **DELETE** /api/v1/{region}/bean/expected-transactions/{id}/match | Unmatch transaction


# **expectedTransactionControllerConfirmMatch**
> expectedTransactionControllerConfirmMatch(id, region, confirmMatchDto)

Confirm transaction match

Manually matches an expected transaction with an actual transaction

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code for tenant context
final ConfirmMatchDto confirmMatchDto = ; // ConfirmMatchDto | 

try {
    api.expectedTransactionControllerConfirmMatch(id, region, confirmMatchDto);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerConfirmMatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code for tenant context | 
 **confirmMatchDto** | [**ConfirmMatchDto**](ConfirmMatchDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerEnterNow**
> expectedTransactionControllerEnterNow(id, region, enterNowDto)

Enter Now

Creates an actual transaction for an expected transaction (YNAB-style Enter Now)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code for tenant context
final EnterNowDto enterNowDto = ; // EnterNowDto | 

try {
    api.expectedTransactionControllerEnterNow(id, region, enterNowDto);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerEnterNow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code for tenant context | 
 **enterNowDto** | [**EnterNowDto**](EnterNowDto.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

### Return type

[**ExpectedTransactionListResponseDto**](ExpectedTransactionListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerSkip**
> ExpectedTransactionResponseDto expectedTransactionControllerSkip(id, region)

Skip expected transaction

Marks an expected transaction as skipped (PENDING -> SKIPPED)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.expectedTransactionControllerSkip(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerSkip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ExpectedTransactionResponseDto**](ExpectedTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerUndoSkip**
> ExpectedTransactionResponseDto expectedTransactionControllerUndoSkip(id, region)

Undo skip

Reverses a skip operation (SKIPPED -> PENDING)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.expectedTransactionControllerUndoSkip(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerUndoSkip: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ExpectedTransactionResponseDto**](ExpectedTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expectedTransactionControllerUnmatch**
> expectedTransactionControllerUnmatch(id, region)

Unmatch transaction

Removes the match between expected and actual transaction (COMPLETED -> PENDING)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getExpectedTransactionsApi();
final String id = id_example; // String | Expected transaction ID
final String region = region_example; // String | Region code for tenant context

try {
    api.expectedTransactionControllerUnmatch(id, region);
} catch on DioException (e) {
    print('Exception when calling ExpectedTransactionsApi->expectedTransactionControllerUnmatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Expected transaction ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

