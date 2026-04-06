# firela_api.api.TransactionApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost:3333/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTransaction**](TransactionApi.md#createtransaction) | **POST** /{region}/bean/transactions | Create transaction
[**getTransaction**](TransactionApi.md#gettransaction) | **GET** /{region}/bean/transactions/{id} | Get transaction
[**listTransactions**](TransactionApi.md#listtransactions) | **GET** /{region}/bean/transactions | List transactions
[**updateTransaction**](TransactionApi.md#updatetransaction) | **PATCH** /{region}/bean/transactions/{id} | Update transaction metadata
[**voidTransaction**](TransactionApi.md#voidtransaction) | **DELETE** /{region}/bean/transactions/{id} | Void transaction


# **createTransaction**
> TransactionResponse createTransaction(region, createTransactionRequest)

Create transaction

Create a new double-entry transaction.   A transaction must have at least 2 postings that balance (debits = credits). The system will automatically interpolate missing amounts if possible. 

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getTransactionApi();
final String region = region_example; // String | Region code for tenant context
final CreateTransactionRequest createTransactionRequest = ; // CreateTransactionRequest | 

try {
    final response = api.createTransaction(region, createTransactionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TransactionApi->createTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createTransactionRequest** | [**CreateTransactionRequest**](CreateTransactionRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransaction**
> TransactionDetail getTransaction(region, id)

Get transaction

Retrieve a specific transaction by ID with full details

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getTransactionApi();
final String region = region_example; // String | Region code for tenant context
final String id = id_example; // String | Transaction ID (CUID format)

try {
    final response = api.getTransaction(region, id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TransactionApi->getTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Transaction ID (CUID format) | 

### Return type

[**TransactionDetail**](TransactionDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTransactions**
> TransactionListResponse listTransactions(region, limit, offset, dateFrom, dateTo, status, search, accountId)

List transactions

Retrieve a paginated list of transactions for the specified region

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getTransactionApi();
final String region = region_example; // String | Region code for tenant context
final int limit = 56; // int | Maximum number of results (1-100)
final int offset = 56; // int | Number of items to skip
final Date dateFrom = 2013-10-20; // Date | Filter from date (inclusive, ISO 8601)
final Date dateTo = 2013-10-20; // Date | Filter to date (inclusive, ISO 8601)
final TxnStatus status = ; // TxnStatus | Filter by transaction status
final String search = search_example; // String | Search in narration and payee fields
final String accountId = accountId_example; // String | Filter by account ID

try {
    final response = api.listTransactions(region, limit, offset, dateFrom, dateTo, status, search, accountId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TransactionApi->listTransactions: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **limit** | **int**| Maximum number of results (1-100) | [optional] [default to 20]
 **offset** | **int**| Number of items to skip | [optional] [default to 0]
 **dateFrom** | **Date**| Filter from date (inclusive, ISO 8601) | [optional] 
 **dateTo** | **Date**| Filter to date (inclusive, ISO 8601) | [optional] 
 **status** | [**TxnStatus**](.md)| Filter by transaction status | [optional] 
 **search** | **String**| Search in narration and payee fields | [optional] 
 **accountId** | **String**| Filter by account ID | [optional] 

### Return type

[**TransactionListResponse**](TransactionListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTransaction**
> TransactionDetail updateTransaction(region, id, updateTransactionRequest)

Update transaction metadata

Update transaction metadata fields (does not change postings)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getTransactionApi();
final String region = region_example; // String | Region code for tenant context
final String id = id_example; // String | Transaction ID (CUID format)
final UpdateTransactionRequest updateTransactionRequest = ; // UpdateTransactionRequest | 

try {
    final response = api.updateTransaction(region, id, updateTransactionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling TransactionApi->updateTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Transaction ID (CUID format) | 
 **updateTransactionRequest** | [**UpdateTransactionRequest**](UpdateTransactionRequest.md)|  | 

### Return type

[**TransactionDetail**](TransactionDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **voidTransaction**
> voidTransaction(region, id)

Void transaction

Mark a transaction as voided (soft delete)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getTransactionApi();
final String region = region_example; // String | Region code for tenant context
final String id = id_example; // String | Transaction ID (CUID format)

try {
    api.voidTransaction(region, id);
} catch on DioException (e) {
    print('Exception when calling TransactionApi->voidTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **id** | **String**| Transaction ID (CUID format) | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

