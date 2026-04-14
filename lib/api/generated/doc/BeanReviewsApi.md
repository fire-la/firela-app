# firela_api.api.BeanReviewsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reviewController**](BeanReviewsApi.md#reviewcontroller) | **POST** /api/v1/{region}/bean/reviews/{id}/resolve | 
[**reviewControllerFindAll**](BeanReviewsApi.md#reviewcontrollerfindall) | **GET** /api/v1/{region}/bean/reviews | List pending reviews
[**reviewControllerFindOne**](BeanReviewsApi.md#reviewcontrollerfindone) | **GET** /api/v1/{region}/bean/reviews/{id} | Get review by ID
[**reviewControllerGetStats**](BeanReviewsApi.md#reviewcontrollergetstats) | **GET** /api/v1/{region}/bean/reviews/stats | Get review statistics
[**reviewController_0**](BeanReviewsApi.md#reviewcontroller_0) | **POST** /api/v1/{region}/bean/reviews/{id}/undo | 
[**reviewController_1**](BeanReviewsApi.md#reviewcontroller_1) | **POST** /api/v1/{region}/bean/reviews/batch-resolve | 


# **reviewController**
> reviewController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.reviewController(region);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewController: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewControllerFindAll**
> ReviewListResponseDto reviewControllerFindAll(region, type, confidenceLevel, sortBy, page, limit)

List pending reviews

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code (cn, us, de)
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
 **region** | **String**| Region code (cn, us, de) | 
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
final String region = region_example; // String | Region code (cn, us, de)

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
 **region** | **String**| Region code (cn, us, de) | 

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
final String region = region_example; // String | Region code (cn, us, de)

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
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**ReviewStatsDto**](ReviewStatsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewController_0**
> reviewController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.reviewController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewController_0: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reviewController_1**
> reviewController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanReviewsApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.reviewController_1(region);
} catch on DioException (e) {
    print('Exception when calling BeanReviewsApi->reviewController_1: $e\n');
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
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

