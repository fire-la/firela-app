# firela_api.api.BeanReviewsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewControllerBatchResolve**](BeanReviewsApi.md#reviewcontrollerbatchresolve) | **POST** /api/v1/{region}/bean/reviews/batch-resolve | Batch resolve multiple reviews
[**reviewControllerFindAll**](BeanReviewsApi.md#reviewcontrollerfindall) | **GET** /api/v1/{region}/bean/reviews | List pending reviews
[**reviewControllerFindOne**](BeanReviewsApi.md#reviewcontrollerfindone) | **GET** /api/v1/{region}/bean/reviews/{id} | Get review by ID
[**reviewControllerGetStats**](BeanReviewsApi.md#reviewcontrollergetstats) | **GET** /api/v1/{region}/bean/reviews/stats | Get review statistics
[**reviewControllerResolve**](BeanReviewsApi.md#reviewcontrollerresolve) | **POST** /api/v1/{region}/bean/reviews/{id}/resolve | Resolve a review item
[**reviewControllerUndo**](BeanReviewsApi.md#reviewcontrollerundo) | **POST** /api/v1/{region}/bean/reviews/{id}/undo | Undo a resolution (within 24h)


# **reviewControllerBatchResolve**
> BatchResolveResultDto reviewControllerBatchResolve(region, batchResolveDto)

Batch resolve multiple reviews

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code for tenant context
final BatchResolveDto batchResolveDto = ; // BatchResolveDto | Batch resolution request containing review IDs and action

try {
    final response = api.reviewControllerBatchResolve(region, batchResolveDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerBatchResolve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **batchResolveDto** | [**BatchResolveDto**](BatchResolveDto.md)| Batch resolution request containing review IDs and action | 

### Return type

[**BatchResolveResultDto**](BatchResolveResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindAll**
> ReviewListResponseDto reviewControllerFindAll(region, type, confidenceLevel, sortBy, page, limit)

List pending reviews

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code for tenant context
final String type = type_example; // String | Filter by review type
final String confidenceLevel = confidenceLevel_example; // String | Filter by confidence level
final String sortBy = sortBy_example; // String | Sort order
final num page = 8.14; // num | Page number (default: 1)
final num limit = 8.14; // num | Items per page (1-100, default: 20)

try {
    final response = api.reviewControllerFindAll(region, type, confidenceLevel, sortBy, page, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **type** | **String**| Filter by review type | [optional] 
 **confidenceLevel** | **String**| Filter by confidence level | [optional] 
 **sortBy** | **String**| Sort order | [optional] 
 **page** | **num**| Page number (default: 1) | [optional] [default to 1]
 **limit** | **num**| Items per page (1-100, default: 20) | [optional] [default to 20]

### Return type

[**ReviewListResponseDto**](ReviewListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindOne**
> ReviewDetailDto reviewControllerFindOne(id, region)

Get review by ID

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String id = id_example; // String | Review ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.reviewControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Review ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**ReviewDetailDto**](ReviewDetailDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerGetStats**
> ReviewStatsDto reviewControllerGetStats(region)

Get review statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.reviewControllerGetStats(region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerGetStats: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 

### Return type

[**ReviewStatsDto**](ReviewStatsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerResolve**
> ResolveResultDto reviewControllerResolve(id, region, resolveReviewDto)

Resolve a review item

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String id = id_example; // String | Review ID
final String region = region_example; // String | Region code for tenant context
final ResolveReviewDto resolveReviewDto = ; // ResolveReviewDto | 

try {
    final response = api.reviewControllerResolve(id, region, resolveReviewDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerResolve: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Review ID | 
 **region** | **String**| Region code for tenant context | 
 **resolveReviewDto** | [**ResolveReviewDto**](ResolveReviewDto.md)|  | 

### Return type

[**ResolveResultDto**](ResolveResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerUndo**
> UndoResultDto reviewControllerUndo(id, region)

Undo a resolution (within 24h)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String id = id_example; // String | Review ID
final String region = region_example; // String | Region code for tenant context

try {
    final response = api.reviewControllerUndo(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewControllerUndo: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Review ID | 
 **region** | **String**| Region code for tenant context | 

### Return type

[**UndoResultDto**](UndoResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

