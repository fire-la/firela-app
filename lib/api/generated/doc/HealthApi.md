# firela_api.api.HealthApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthControllerCheckDataProviders**](HealthApi.md#healthcontrollercheckdataproviders) | **GET** /api/v1/health/data-providers | Check health of all data providers
[**healthControllerCheckDatabase**](HealthApi.md#healthcontrollercheckdatabase) | **GET** /api/v1/health/database | Check database connection health
[**healthControllerCheckRedis**](HealthApi.md#healthcontrollercheckredis) | **GET** /api/v1/health/redis | Check Redis connection health
[**healthControllerGetCircuitBreakersHealth**](HealthApi.md#healthcontrollergetcircuitbreakershealth) | **GET** /api/v1/health/circuit-breakers | Get status of all circuit breakers
[**healthControllerGetHealth**](HealthApi.md#healthcontrollergethealth) | **GET** /api/v1/health | Basic health check for K8s/load balancer probes
[**healthControllerGetHealthOfDataEnhancer**](HealthApi.md#healthcontrollergethealthofdataenhancer) | **GET** /api/v1/health/data-enhancer/{name} | Check health of a specific data enhancer
[**healthControllerGetHealthOfDataProvider**](HealthApi.md#healthcontrollergethealthofdataprovider) | **GET** /api/v1/health/data-provider/{dataSource} | Check health of a specific data provider
[**healthControllerGetMetrics**](HealthApi.md#healthcontrollergetmetrics) | **GET** /api/v1/health/metrics | Get health check metrics and statistics
[**healthControllerResetCircuitBreaker**](HealthApi.md#healthcontrollerresetcircuitbreaker) | **POST** /api/v1/health/circuit-breakers/{name}/reset | Reset a circuit breaker to CLOSED state


# **healthControllerCheckDataProviders**
> healthControllerCheckDataProviders(region)

Check health of all data providers

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerCheckDataProviders(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckDataProviders: $e\n');
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

# **healthControllerCheckDatabase**
> healthControllerCheckDatabase(region)

Check database connection health

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerCheckDatabase(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckDatabase: $e\n');
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

# **healthControllerCheckRedis**
> healthControllerCheckRedis(region)

Check Redis connection health

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerCheckRedis(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckRedis: $e\n');
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

# **healthControllerGetCircuitBreakersHealth**
> healthControllerGetCircuitBreakersHealth(region)

Get status of all circuit breakers

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerGetCircuitBreakersHealth(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetCircuitBreakersHealth: $e\n');
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

# **healthControllerGetHealth**
> healthControllerGetHealth(region)

Basic health check for K8s/load balancer probes

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerGetHealth(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetHealth: $e\n');
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

# **healthControllerGetHealthOfDataEnhancer**
> healthControllerGetHealthOfDataEnhancer(name, region)

Check health of a specific data enhancer

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String name = name_example; // String | Data enhancer name
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerGetHealthOfDataEnhancer(name, region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetHealthOfDataEnhancer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Data enhancer name | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerGetHealthOfDataProvider**
> healthControllerGetHealthOfDataProvider(dataSource, region)

Check health of a specific data provider

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String dataSource = dataSource_example; // String | Data source identifier
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerGetHealthOfDataProvider(dataSource, region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetHealthOfDataProvider: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataSource** | **String**| Data source identifier | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerGetMetrics**
> healthControllerGetMetrics(region)

Get health check metrics and statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerGetMetrics(region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetMetrics: $e\n');
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

# **healthControllerResetCircuitBreaker**
> healthControllerResetCircuitBreaker(name, region)

Reset a circuit breaker to CLOSED state

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String name = name_example; // String | Circuit breaker name to reset
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.healthControllerResetCircuitBreaker(name, region);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerResetCircuitBreaker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Circuit breaker name to reset | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

