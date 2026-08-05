# firela_api.api.BalanceReconciliationApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reconciliationControllerAssert**](BalanceReconciliationApi.md#reconciliationcontrollerassert) | **POST** /api/v1/{region}/bean/reconciliations/assert | Record a balance assertion
[**reconciliationControllerCompute**](BalanceReconciliationApi.md#reconciliationcontrollercompute) | **POST** /api/v1/{region}/bean/reconciliations | Preview reconciliation (book vs actual)
[**reconciliationControllerHistory**](BalanceReconciliationApi.md#reconciliationcontrollerhistory) | **GET** /api/v1/{region}/bean/accounts/{accountId}/reconciliations | List reconciliation history for an account
[**reconciliationControllerPad**](BalanceReconciliationApi.md#reconciliationcontrollerpad) | **POST** /api/v1/{region}/bean/reconciliations/pad | Generate a pad adjusting entry


# **reconciliationControllerAssert**
> ReconciliationRecordDto reconciliationControllerAssert(region, assertReconciliationDto)

Record a balance assertion

Persists the reconciliation as a BeanBalance assertion (amount = actual, diffAmount = book − actual). Re-reconciling the same day/currency upserts.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceReconciliationApi();
final String region = region_example; // String | Region code for tenant context (decorative for reconciliation)
final AssertReconciliationDto assertReconciliationDto = ; // AssertReconciliationDto | 

try {
    final response = api.reconciliationControllerAssert(region, assertReconciliationDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceReconciliationApi->reconciliationControllerAssert: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context (decorative for reconciliation) | 
 **assertReconciliationDto** | [**AssertReconciliationDto**](AssertReconciliationDto.md)|  | 

### Return type

[**ReconciliationRecordDto**](ReconciliationRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconciliationControllerCompute**
> ReconciliationComputeResultDto reconciliationControllerCompute(region, computeReconciliationDto)

Preview reconciliation (book vs actual)

Computes book balance, diff, Beancount-inferred tolerance, and suggested action without persisting.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceReconciliationApi();
final String region = region_example; // String | Region code for tenant context (decorative for reconciliation)
final ComputeReconciliationDto computeReconciliationDto = ; // ComputeReconciliationDto | 

try {
    final response = api.reconciliationControllerCompute(region, computeReconciliationDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceReconciliationApi->reconciliationControllerCompute: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context (decorative for reconciliation) | 
 **computeReconciliationDto** | [**ComputeReconciliationDto**](ComputeReconciliationDto.md)|  | 

### Return type

[**ReconciliationComputeResultDto**](ReconciliationComputeResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconciliationControllerHistory**
> BuiltList<ReconciliationRecordDto> reconciliationControllerHistory(accountId, region)

List reconciliation history for an account

Returns recorded balance assertions (most recent first). The latest drives the account-detail \"Last <date>\" badge.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceReconciliationApi();
final String accountId = accountId_example; // String | BeanAccount id
final String region = region_example; // String | Region code for tenant context (decorative for reconciliation)

try {
    final response = api.reconciliationControllerHistory(accountId, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceReconciliationApi->reconciliationControllerHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String**| BeanAccount id | 
 **region** | **String**| Region code for tenant context (decorative for reconciliation) | 

### Return type

[**BuiltList&lt;ReconciliationRecordDto&gt;**](ReconciliationRecordDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconciliationControllerPad**
> PadResultDto reconciliationControllerPad(region, padReconciliationDto)

Generate a pad adjusting entry

When book is outside tolerance, synthesizes a Beancount pad transaction (flag P) booking the diff from source_account and persists it. Source defaults to Equity:Opening-Balances.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBalanceReconciliationApi();
final String region = region_example; // String | Region code for tenant context (decorative for reconciliation)
final PadReconciliationDto padReconciliationDto = ; // PadReconciliationDto | 

try {
    final response = api.reconciliationControllerPad(region, padReconciliationDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BalanceReconciliationApi->reconciliationControllerPad: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context (decorative for reconciliation) | 
 **padReconciliationDto** | [**PadReconciliationDto**](PadReconciliationDto.md)|  | 

### Return type

[**PadResultDto**](PadResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

