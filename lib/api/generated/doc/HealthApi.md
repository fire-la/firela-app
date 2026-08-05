# firela_api.api.HealthApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthControllerCheckDatabase**](HealthApi.md#healthcontrollercheckdatabase) | **GET** /api/v1/health/database | Check database connection health
[**healthControllerCheckOpenBB**](HealthApi.md#healthcontrollercheckopenbb) | **GET** /api/v1/health/openbb | Check OpenBB schema status
[**healthControllerCheckRedis**](HealthApi.md#healthcontrollercheckredis) | **GET** /api/v1/health/redis | Check Redis connection health
[**healthControllerGetCircuitBreakersHealth**](HealthApi.md#healthcontrollergetcircuitbreakershealth) | **GET** /api/v1/health/circuit-breakers | Get status of all circuit breakers
[**healthControllerGetHealth**](HealthApi.md#healthcontrollergethealth) | **GET** /api/v1/health | Basic health check for K8s/load balancer probes
[**healthControllerGetMetrics**](HealthApi.md#healthcontrollergetmetrics) | **GET** /api/v1/health/metrics | Get health check metrics and statistics
[**healthControllerResetCircuitBreaker**](HealthApi.md#healthcontrollerresetcircuitbreaker) | **POST** /api/v1/health/circuit-breakers/{name}/reset | Reset a circuit breaker to CLOSED state


# **healthControllerCheckDatabase**
> healthControllerCheckDatabase()

Check database connection health

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerCheckDatabase();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckDatabase: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerCheckOpenBB**
> healthControllerCheckOpenBB()

Check OpenBB schema status

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerCheckOpenBB();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckOpenBB: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerCheckRedis**
> healthControllerCheckRedis()

Check Redis connection health

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerCheckRedis();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerCheckRedis: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerGetCircuitBreakersHealth**
> healthControllerGetCircuitBreakersHealth()

Get status of all circuit breakers

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerGetCircuitBreakersHealth();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetCircuitBreakersHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerGetHealth**
> healthControllerGetHealth()

Basic health check for K8s/load balancer probes

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerGetHealth();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerGetMetrics**
> healthControllerGetMetrics()

Get health check metrics and statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();

try {
    api.healthControllerGetMetrics();
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerGetMetrics: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **healthControllerResetCircuitBreaker**
> healthControllerResetCircuitBreaker(name)

Reset a circuit breaker to CLOSED state

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getHealthApi();
final String name = name_example; // String | Circuit breaker name to reset

try {
    api.healthControllerResetCircuitBreaker(name);
} catch on DioException (e) {
    print('Exception when calling HealthApi->healthControllerResetCircuitBreaker: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Circuit breaker name to reset | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

