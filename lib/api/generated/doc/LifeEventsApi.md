# firela_api.api.LifeEventsApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eventControllerCreate**](LifeEventsApi.md#eventcontrollercreate) | **POST** /api/v1/{region}/bean/events | Create a new life event
[**eventControllerDelete**](LifeEventsApi.md#eventcontrollerdelete) | **DELETE** /api/v1/{region}/bean/events/{id} | Delete a life event
[**eventControllerFindAll**](LifeEventsApi.md#eventcontrollerfindall) | **GET** /api/v1/{region}/bean/events | List user life events
[**eventControllerFindOne**](LifeEventsApi.md#eventcontrollerfindone) | **GET** /api/v1/{region}/bean/events/{id} | Get life event by ID
[**eventControllerGetSlice**](LifeEventsApi.md#eventcontrollergetslice) | **GET** /api/v1/{region}/bean/events/{id}/slice | Slice time-series by a life event (Phase 79)
[**eventControllerUpdate**](LifeEventsApi.md#eventcontrollerupdate) | **PUT** /api/v1/{region}/bean/events/{id} | Update a life event


# **eventControllerCreate**
> EventResponseDto eventControllerCreate(region, createBeanEventDto)

Create a new life event

Creates a new life event entry for the authenticated user. Returns ETag header carrying the row updatedAt.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String region = region_example; // String | Region code for tenant context (decorative for life events)
final CreateBeanEventDto createBeanEventDto = ; // CreateBeanEventDto | 

try {
    final response = api.eventControllerCreate(region, createBeanEventDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context (decorative for life events) | 
 **createBeanEventDto** | [**CreateBeanEventDto**](CreateBeanEventDto.md)|  | 

### Return type

[**EventResponseDto**](EventResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventControllerDelete**
> eventControllerDelete(id, region)

Delete a life event

Deletes a life event entry (hard delete). Returns 204.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String id = id_example; // String | Life event ID
final String region = region_example; // String | Region code for tenant context (decorative for life events)

try {
    api.eventControllerDelete(id, region);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Life event ID | 
 **region** | **String**| Region code for tenant context (decorative for life events) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventControllerFindAll**
> EventListResponseDto eventControllerFindAll(region, type, q, from, to, page, limit)

List user life events

Returns life events for the authenticated user with optional filtering by type, description search, and date range.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String region = region_example; // String | Region code for tenant context (decorative for life events)
final String type = employer; // String | Filter by life event type (exact match)
final String q = Acme; // String | Search term for description (case-insensitive partial match)
final String from = 2024-01-01; // String | Filter life events from this date (ISO 8601 format)
final String to = 2024-12-31; // String | Filter life events to this date (ISO 8601 format)
final num page = 1; // num | Page number for pagination (default: 1)
final num limit = 20; // num | Number of items per page (default: 20, max: 100)

try {
    final response = api.eventControllerFindAll(region, type, q, from, to, page, limit);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerFindAll: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context (decorative for life events) | 
 **type** | **String**| Filter by life event type (exact match) | [optional] 
 **q** | **String**| Search term for description (case-insensitive partial match) | [optional] 
 **from** | **String**| Filter life events from this date (ISO 8601 format) | [optional] 
 **to** | **String**| Filter life events to this date (ISO 8601 format) | [optional] 
 **page** | **num**| Page number for pagination (default: 1) | [optional] 
 **limit** | **num**| Number of items per page (default: 20, max: 100) | [optional] 

### Return type

[**EventListResponseDto**](EventListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventControllerFindOne**
> EventResponseDto eventControllerFindOne(id, region)

Get life event by ID

Returns a single life event by its ID. Returns ETag header.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String id = id_example; // String | Life event ID
final String region = region_example; // String | Region code for tenant context (decorative for life events)

try {
    final response = api.eventControllerFindOne(id, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Life event ID | 
 **region** | **String**| Region code for tenant context (decorative for life events) | 

### Return type

[**EventResponseDto**](EventResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventControllerGetSlice**
> eventControllerGetSlice(id, accountPattern, granularity, region)

Slice time-series by a life event (Phase 79)

Returns aggregated time-series for postings matching accountPattern within the half-open date range of the given life event.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String id = id_example; // String | Life event ID
final String accountPattern = accountPattern_example; // String | 
final String granularity = granularity_example; // String | 
final String region = region_example; // String | Region code for tenant context (decorative for life events)

try {
    api.eventControllerGetSlice(id, accountPattern, granularity, region);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerGetSlice: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Life event ID | 
 **accountPattern** | **String**|  | 
 **granularity** | **String**|  | 
 **region** | **String**| Region code for tenant context (decorative for life events) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eventControllerUpdate**
> EventResponseDto eventControllerUpdate(id, region, updateBeanEventDto)

Update a life event

Updates an existing life event. If If-Match header is provided, performs optimistic concurrency check; mismatched updatedAt returns 412.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getLifeEventsApi();
final String id = id_example; // String | Life event ID
final String region = region_example; // String | Region code for tenant context (decorative for life events)
final UpdateBeanEventDto updateBeanEventDto = ; // UpdateBeanEventDto | 

try {
    final response = api.eventControllerUpdate(id, region, updateBeanEventDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling LifeEventsApi->eventControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Life event ID | 
 **region** | **String**| Region code for tenant context (decorative for life events) | 
 **updateBeanEventDto** | [**UpdateBeanEventDto**](UpdateBeanEventDto.md)|  | 

### Return type

[**EventResponseDto**](EventResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

