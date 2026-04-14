# firela_api.api.RecurringForecastApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**forecastControllerGetForecast**](RecurringForecastApi.md#forecastcontrollergetforecast) | **GET** /api/v1/{region}/bean/recurring/forecast | Get cash flow forecast


# **forecastControllerGetForecast**
> ForecastResponseDto forecastControllerGetForecast(region, months)

Get cash flow forecast

Returns predicted outflows for the next N months based on active recurring rules

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getRecurringForecastApi();
final String region = region_example; // String | Region code (cn, us, de)
final num months = 3; // num | Number of months to forecast (1-12, default 3)

try {
    final response = api.forecastControllerGetForecast(region, months);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RecurringForecastApi->forecastControllerGetForecast: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **months** | **num**| Number of months to forecast (1-12, default 3) | [optional] 

### Return type

[**ForecastResponseDto**](ForecastResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

