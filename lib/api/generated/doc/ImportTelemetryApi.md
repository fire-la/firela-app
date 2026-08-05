# firela_api.api.ImportTelemetryApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**telemetryControllerGetCoverageMetrics**](ImportTelemetryApi.md#telemetrycontrollergetcoveragemetrics) | **GET** /api/v1/{region}/bean/import/parser-coverage-metrics | Coverage metrics (uncovered format aggregation)
[**telemetryControllerReportCoverageMiss**](ImportTelemetryApi.md#telemetrycontrollerreportcoveragemiss) | **POST** /api/v1/{region}/bean/import/parser-coverage-miss | Receive anonymous zero-hit coverage miss report
[**telemetryControllerReportTelemetry**](ImportTelemetryApi.md#telemetrycontrollerreporttelemetry) | **POST** /api/v1/{region}/bean/import/parser-telemetry | Receive anonymous parser failure telemetry


# **telemetryControllerGetCoverageMetrics**
> telemetryControllerGetCoverageMetrics(region, topN)

Coverage metrics (uncovered format aggregation)

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getImportTelemetryApi();
final String region = region_example; // String | Region code for tenant context
final JsonObject topN = ; // JsonObject | Top-N uncovered formats (default 10)

try {
    api.telemetryControllerGetCoverageMetrics(region, topN);
} catch on DioException (e) {
    print('Exception when calling ImportTelemetryApi->telemetryControllerGetCoverageMetrics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **topN** | [**JsonObject**](.md)| Top-N uncovered formats (default 10) | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetryControllerReportCoverageMiss**
> telemetryControllerReportCoverageMiss(region, body)

Receive anonymous zero-hit coverage miss report

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getImportTelemetryApi();
final String region = region_example; // String | Region code for tenant context
final JsonObject body = Object; // JsonObject | 

try {
    api.telemetryControllerReportCoverageMiss(region, body);
} catch on DioException (e) {
    print('Exception when calling ImportTelemetryApi->telemetryControllerReportCoverageMiss: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **telemetryControllerReportTelemetry**
> telemetryControllerReportTelemetry(region, body)

Receive anonymous parser failure telemetry

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getImportTelemetryApi();
final String region = region_example; // String | Region code for tenant context
final JsonObject body = Object; // JsonObject | 

try {
    api.telemetryControllerReportTelemetry(region, body);
} catch on DioException (e) {
    print('Exception when calling ImportTelemetryApi->telemetryControllerReportTelemetry: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **body** | **JsonObject**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

