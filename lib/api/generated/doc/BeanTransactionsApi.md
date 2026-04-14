# firela_api.api.BeanTransactionsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionController**](BeanTransactionsApi.md#transactioncontroller) | **POST** /api/v1/{region}/bean/transactions/batch | Batch create transactions (DEPRECATED)
[**transactionControllerCreate**](BeanTransactionsApi.md#transactioncontrollercreate) | **POST** /api/v1/{region}/bean/transactions | Create transaction (DEPRECATED)
[**transactionControllerGetDetail**](BeanTransactionsApi.md#transactioncontrollergetdetail) | **GET** /api/v1/{region}/bean/transactions/{id} | Get transaction detail
[**transactionControllerList**](BeanTransactionsApi.md#transactioncontrollerlist) | **GET** /api/v1/{region}/bean/transactions | List transactions
[**transactionControllerUpdate**](BeanTransactionsApi.md#transactioncontrollerupdate) | **PATCH** /api/v1/{region}/bean/transactions/{id} | Update transaction metadata
[**transactionController_0**](BeanTransactionsApi.md#transactioncontroller_0) | **DELETE** /api/v1/{region}/bean/transactions/{id} | 


# **transactionController**
> transactionController(region)

Batch create transactions (DEPRECATED)

DEPRECATED: Use POST /api/v1/{region}/bean/import/provider/{name}/sync instead. This endpoint skips dedup, rule matching, and review branching.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context

try {
    api.transactionController(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionController: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerCreate**
> TransactionResponseDto transactionControllerCreate(region, createTransactionDto)

Create transaction (DEPRECATED)

DEPRECATED: Use POST /api/v1/{region}/bean/import/provider/{name}/sync instead. This endpoint skips dedup, rule matching, and review branching.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context
final CreateTransactionDto createTransactionDto = ; // CreateTransactionDto | Transaction data with postings

try {
    final response = api.transactionControllerCreate(region, createTransactionDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createTransactionDto** | [**CreateTransactionDto**](CreateTransactionDto.md)| Transaction data with postings | 

### Return type

[**TransactionResponseDto**](TransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerGetDetail**
> TransactionDetailDto transactionControllerGetDetail(id, region)

Get transaction detail

Returns transaction details including all postings

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String id = id_example; // String | Transaction ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.transactionControllerGetDetail(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerGetDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**TransactionDetailDto**](TransactionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerList**
> TransactionListResponseDto transactionControllerList(region, limit, offset, dateFrom, dateTo, status, search, accountId)

List transactions

Returns a paginated list of transactions with optional filters

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context
final num limit = 20; // num | Number of items per page (1-100, default: 20)
final num offset = 0; // num | Number of items to skip (default: 0)
final String dateFrom = 2024-01-01; // String | Filter by start date (inclusive), format: YYYY-MM-DD
final String dateTo = 2024-12-31; // String | Filter by end date (inclusive), format: YYYY-MM-DD
final String status = status_example; // String | Filter by transaction status
final String search = grocery; // String | Search in narration and payee fields (max 200 chars)
final String accountId = clh1234567890abcdef; // String | Filter by account ID (transactions with postings to this account)

try {
    final response = api.transactionControllerList(region, limit, offset, dateFrom, dateTo, status, search, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **limit** | **num**| Number of items per page (1-100, default: 20) | [optional] [default to 20]
 **offset** | **num**| Number of items to skip (default: 0) | [optional] [default to 0]
 **dateFrom** | **String**| Filter by start date (inclusive), format: YYYY-MM-DD | [optional] 
 **dateTo** | **String**| Filter by end date (inclusive), format: YYYY-MM-DD | [optional] 
 **status** | **String**| Filter by transaction status | [optional] 
 **search** | **String**| Search in narration and payee fields (max 200 chars) | [optional] 
 **accountId** | **String**| Filter by account ID (transactions with postings to this account) | [optional] 

### Return type

[**TransactionListResponseDto**](TransactionListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerUpdate**
> TransactionDetailDto transactionControllerUpdate(id, region, updateTransactionDto)

Update transaction metadata

Updates transaction metadata (flag, payee, narration, tags, links, meta). Postings cannot be modified.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String id = id_example; // String | Transaction ID
final String region = region_example; // String | Region code for tenant context
final UpdateTransactionDto updateTransactionDto = ; // UpdateTransactionDto | Fields to update (all optional)

try {
    final response = api.transactionControllerUpdate(id, region, updateTransactionDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | 
 **region** | **String**| Region code for tenant context | 
 **updateTransactionDto** | [**UpdateTransactionDto**](UpdateTransactionDto.md)| Fields to update (all optional) | 

### Return type

[**TransactionDetailDto**](TransactionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionController_0**
> transactionController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context

try {
    api.transactionController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionController_0: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

