# firela_api.api.BeanTransactionsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionControllerCorrect**](BeanTransactionsApi.md#transactioncontrollercorrect) | **POST** /api/v1/{region}/bean/transactions/{id}/correct | Correct (supersede) a transaction
[**transactionControllerCreate**](BeanTransactionsApi.md#transactioncontrollercreate) | **POST** /api/v1/{region}/bean/transactions | Create transaction (DEPRECATED)
[**transactionControllerCreateBatch**](BeanTransactionsApi.md#transactioncontrollercreatebatch) | **POST** /api/v1/{region}/bean/transactions/batch | Batch create transactions (DEPRECATED)
[**transactionControllerDelete**](BeanTransactionsApi.md#transactioncontrollerdelete) | **DELETE** /api/v1/{region}/bean/transactions/{id} | Void transaction
[**transactionControllerGetDetail**](BeanTransactionsApi.md#transactioncontrollergetdetail) | **GET** /api/v1/{region}/bean/transactions/{id} | Get transaction detail
[**transactionControllerList**](BeanTransactionsApi.md#transactioncontrollerlist) | **GET** /api/v1/{region}/bean/transactions | List transactions
[**transactionControllerSuggestTags**](BeanTransactionsApi.md#transactioncontrollersuggesttags) | **GET** /api/v1/{region}/bean/transactions/tags | Suggest transaction tags
[**transactionControllerUpdate**](BeanTransactionsApi.md#transactioncontrollerupdate) | **PATCH** /api/v1/{region}/bean/transactions/{id} | Update transaction metadata


# **transactionControllerCorrect**
> TransactionDetailDto transactionControllerCorrect(id, region, correctTransactionDto)

Correct (supersede) a transaction

Atomically voids the original (SUPERSEDED) and creates a replacement through the full validation pipeline.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String id = id_example; // String | Original transaction ID to correct
final String region = region_example; // String | Region code for tenant context
final CorrectTransactionDto correctTransactionDto = ; // CorrectTransactionDto | 

try {
    final response = api.transactionControllerCorrect(id, region, correctTransactionDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerCorrect: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Original transaction ID to correct | 
 **region** | **String**| Region code for tenant context | 
 **correctTransactionDto** | [**CorrectTransactionDto**](CorrectTransactionDto.md)|  | 

### Return type

[**TransactionDetailDto**](TransactionDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerCreate**
> TransactionResponseDto transactionControllerCreate(region, createTransactionDto)

Create transaction (DEPRECATED)

DEPRECATED: Use POST /:region/bean/import/provider/:name/sync instead. This endpoint skips dedup, rule matching, and review branching.

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

# **transactionControllerCreateBatch**
> BatchTransactionResponseDto transactionControllerCreateBatch(region, batchCreateTransactionDto)

Batch create transactions (DEPRECATED)

DEPRECATED: Use POST /:region/bean/import/provider/:name/sync instead. This endpoint skips dedup, rule matching, and review branching.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context
final BatchCreateTransactionDto batchCreateTransactionDto = ; // BatchCreateTransactionDto | 

try {
    final response = api.transactionControllerCreateBatch(region, batchCreateTransactionDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerCreateBatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **batchCreateTransactionDto** | [**BatchCreateTransactionDto**](BatchCreateTransactionDto.md)|  | 

### Return type

[**BatchTransactionResponseDto**](BatchTransactionResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerDelete**
> transactionControllerDelete(id, region)

Void transaction

Soft-deletes a transaction by marking it as VOIDED

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String id = id_example; // String | Transaction ID
final String region = region_example; // String | Region code for tenant context

try {
    api.transactionControllerDelete(id, region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Transaction ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
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
> TransactionListResponseDto transactionControllerList(region, limit, offset, dateFrom, dateTo, status, search, accountId, category)

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
final String category = Food; // String | Filter by ADR-0075 functional category (Group segment); matches any posting to an Expenses/Income account whose derived Group segment equals this value

try {
    final response = api.transactionControllerList(region, limit, offset, dateFrom, dateTo, status, search, accountId, category);
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
 **category** | **String**| Filter by ADR-0075 functional category (Group segment); matches any posting to an Expenses/Income account whose derived Group segment equals this value | [optional] 

### Return type

[**TransactionListResponseDto**](TransactionListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionControllerSuggestTags**
> TagSuggestionsResponseDto transactionControllerSuggestTags(region, q, sort, limit)

Suggest transaction tags

Returns distinct tags from the user ACTIVE transactions, sorted by usage, for autocomplete. Optional q performs a case-insensitive prefix match.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionsApi();
final String region = region_example; // String | Region code for tenant context
final String q = mo; // String | Prefix match, case-insensitive (max 50 chars)
final String sort = sort_example; // String | usage (default) or name
final num limit = 10; // num | Max suggestions (1-100, default 10)

try {
    final response = api.transactionControllerSuggestTags(region, q, sort, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionsApi->transactionControllerSuggestTags: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **q** | **String**| Prefix match, case-insensitive (max 50 chars) | [optional] 
 **sort** | **String**| usage (default) or name | [optional] 
 **limit** | **num**| Max suggestions (1-100, default 10) | [optional] [default to 10]

### Return type

[**TagSuggestionsResponseDto**](TagSuggestionsResponseDto.md)

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

