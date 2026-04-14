# firela_api.api.ReportingApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportingControllerBackfillSnapshots**](ReportingApi.md#reportingcontrollerbackfillsnapshots) | **POST** /api/v1/{region}/reporting/snapshots/backfill | Backfill portfolio snapshots
[**reportingControllerGenerateSnapshot**](ReportingApi.md#reportingcontrollergeneratesnapshot) | **POST** /api/v1/{region}/reporting/snapshots/generate | Generate portfolio snapshot
[**reportingControllerGetPortfolioTrends**](ReportingApi.md#reportingcontrollergetportfoliotrends) | **GET** /api/v1/{region}/reporting/portfolio/trends | Get portfolio value trends


# **reportingControllerBackfillSnapshots**
> JsonObject reportingControllerBackfillSnapshots(region, body)

Backfill portfolio snapshots

 Generate snapshots for a date range (historical data backfill).  **Multi-currency Support:** - Each snapshot includes multi-currency data - Uses exchange rates available at generation time - Warnings stored for missing exchange rates  **Best Practices:** - Use for initial setup after account configuration - Run during low-traffic periods for large date ranges - Existing snapshots are skipped (not regenerated)     

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getReportingApi();
final String region = region_example; // String | Region code (cn, us, de)
final JsonObject body = {"startDate":"2024-01-01","endDate":"2024-06-30"}; // JsonObject | 

try {
    final response = api.reportingControllerBackfillSnapshots(region, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportingApi->reportingControllerBackfillSnapshots: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **body** | **JsonObject**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportingControllerGenerateSnapshot**
> JsonObject reportingControllerGenerateSnapshot(region, body)

Generate portfolio snapshot

 Manually generate a portfolio snapshot for a specific date.  **Multi-currency Support:** - Fetches balances grouped by currency - Uses user's baseCurrency setting for conversion - Stores exchange rates and warnings  **Use Cases:** - Testing snapshot generation - Force regeneration after data correction - Initial setup for new users     

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getReportingApi();
final String region = region_example; // String | Region code (cn, us, de)
final JsonObject body = {}; // JsonObject | Optional date (defaults to today)

try {
    final response = api.reportingControllerGenerateSnapshot(region, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportingApi->reportingControllerGenerateSnapshot: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **body** | **JsonObject**| Optional date (defaults to today) | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportingControllerGetPortfolioTrends**
> PortfolioTrendsResponseDto reportingControllerGetPortfolioTrends(region, period, granularity)

Get portfolio value trends

 Returns time series data of portfolio net worth.  **Multi-currency Support:** - `series[].byCurrency` - Currency breakdown for each data point - `byCurrency` - Separate time series grouped by currency - `warnings` - Exchange rate warnings if conversion failed  **Parameters:** - `period`: Time period (1m, 3m, 6m, 1y) - `granularity`: Data granularity (day, week, month)     

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getReportingApi();
final String region = region_example; // String | Region code (cn, us, de)
final String period = period_example; // String | Time period
final String granularity = granularity_example; // String | Data granularity

try {
    final response = api.reportingControllerGetPortfolioTrends(region, period, granularity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ReportingApi->reportingControllerGetPortfolioTrends: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **period** | **String**| Time period | [optional] [default to '6m']
 **granularity** | **String**| Data granularity | [optional] [default to 'month']

### Return type

[**PortfolioTrendsResponseDto**](PortfolioTrendsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

