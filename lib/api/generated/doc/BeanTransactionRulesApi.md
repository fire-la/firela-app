# firela_api.api.BeanTransactionRulesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionRuleController**](BeanTransactionRulesApi.md#transactionrulecontroller) | **POST** /api/v1/{region}/bean/transaction-rules | 
[**transactionRuleControllerExport**](BeanTransactionRulesApi.md#transactionrulecontrollerexport) | **GET** /api/v1/{region}/bean/transaction-rules/export/{format} | Export transaction rules
[**transactionRuleControllerGetDetail**](BeanTransactionRulesApi.md#transactionrulecontrollergetdetail) | **GET** /api/v1/{region}/bean/transaction-rules/{ruleId} | Get transaction rule detail
[**transactionRuleControllerGetStatistics**](BeanTransactionRulesApi.md#transactionrulecontrollergetstatistics) | **GET** /api/v1/{region}/bean/transaction-rules/statistics/{period} | Get transaction rule statistics
[**transactionRuleControllerList**](BeanTransactionRulesApi.md#transactionrulecontrollerlist) | **GET** /api/v1/{region}/bean/transaction-rules | Get all transaction rules for user
[**transactionRuleControllerTest**](BeanTransactionRulesApi.md#transactionrulecontrollertest) | **POST** /api/v1/{region}/bean/transaction-rules/{ruleId}/test | Test rule matching
[**transactionRuleControllerValidate**](BeanTransactionRulesApi.md#transactionrulecontrollervalidate) | **POST** /api/v1/{region}/bean/transaction-rules/validate | Validate transaction rule configuration
[**transactionRuleController_0**](BeanTransactionRulesApi.md#transactionrulecontroller_0) | **POST** /api/v1/{region}/bean/transaction-rules/bulk | 
[**transactionRuleController_1**](BeanTransactionRulesApi.md#transactionrulecontroller_1) | **PUT** /api/v1/{region}/bean/transaction-rules/{ruleId} | 
[**transactionRuleController_2**](BeanTransactionRulesApi.md#transactionrulecontroller_2) | **DELETE** /api/v1/{region}/bean/transaction-rules/{ruleId} | 


# **transactionRuleController**
> transactionRuleController(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.transactionRuleController(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleController: $e\n');
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

# **transactionRuleControllerExport**
> ExportRulesResponseDto transactionRuleControllerExport(format, region)

Export transaction rules

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String format = format_example; // String | Export format (currently only JSON supported)
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.transactionRuleControllerExport(format, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerExport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**| Export format (currently only JSON supported) | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**ExportRulesResponseDto**](ExportRulesResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerGetDetail**
> TransactionRuleResponseDto transactionRuleControllerGetDetail(ruleId, region)

Get transaction rule detail

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String ruleId = ruleId_example; // String | Rule ID
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.transactionRuleControllerGetDetail(ruleId, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerGetDetail: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Rule ID | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**TransactionRuleResponseDto**](TransactionRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerGetStatistics**
> RuleStatisticsResponseDto transactionRuleControllerGetStatistics(period, region)

Get transaction rule statistics

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String period = period_example; // String | Statistics time period
final String region = region_example; // String | Region code (cn, us, de)

try {
    final response = api.transactionRuleControllerGetStatistics(period, region);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerGetStatistics: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **String**| Statistics time period | 
 **region** | **String**| Region code (cn, us, de) | 

### Return type

[**RuleStatisticsResponseDto**](RuleStatisticsResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerList**
> TransactionRuleListResponseDto transactionRuleControllerList(region, limit, offset, enabled, learningSource, autoApplyEnabled)

Get all transaction rules for user

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)
final num limit = 8.14; // num | Max results per page (default: 20, max: 100)
final num offset = 8.14; // num | Pagination offset (default: 0)
final bool enabled = true; // bool | Filter by enabled status
final String learningSource = learningSource_example; // String | Filter by learning source. Omit this parameter or pass empty string to get manually created rules (learningSource is null in database).
final bool autoApplyEnabled = true; // bool | Filter by auto-apply status

try {
    final response = api.transactionRuleControllerList(region, limit, offset, enabled, learningSource, autoApplyEnabled);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerList: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **limit** | **num**| Max results per page (default: 20, max: 100) | [optional] 
 **offset** | **num**| Pagination offset (default: 0) | [optional] 
 **enabled** | **bool**| Filter by enabled status | [optional] 
 **learningSource** | **String**| Filter by learning source. Omit this parameter or pass empty string to get manually created rules (learningSource is null in database). | [optional] 
 **autoApplyEnabled** | **bool**| Filter by auto-apply status | [optional] 

### Return type

[**TransactionRuleListResponseDto**](TransactionRuleListResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerTest**
> TestRuleResponseDto transactionRuleControllerTest(ruleId, region, testRuleDto)

Test rule matching

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String ruleId = ruleId_example; // String | Rule ID to test
final String region = region_example; // String | Region code (cn, us, de)
final TestRuleDto testRuleDto = ; // TestRuleDto | 

try {
    final response = api.transactionRuleControllerTest(ruleId, region, testRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerTest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Rule ID to test | 
 **region** | **String**| Region code (cn, us, de) | 
 **testRuleDto** | [**TestRuleDto**](TestRuleDto.md)|  | 

### Return type

[**TestRuleResponseDto**](TestRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerValidate**
> ValidateRuleResponseDto transactionRuleControllerValidate(region, validateRuleDto)

Validate transaction rule configuration

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)
final ValidateRuleDto validateRuleDto = ; // ValidateRuleDto | 

try {
    final response = api.transactionRuleControllerValidate(region, validateRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerValidate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code (cn, us, de) | 
 **validateRuleDto** | [**ValidateRuleDto**](ValidateRuleDto.md)|  | 

### Return type

[**ValidateRuleResponseDto**](ValidateRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleController_0**
> transactionRuleController_0(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.transactionRuleController_0(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleController_0: $e\n');
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

# **transactionRuleController_1**
> transactionRuleController_1(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.transactionRuleController_1(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleController_1: $e\n');
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

# **transactionRuleController_2**
> transactionRuleController_2(region)



### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code (cn, us, de)

try {
    api.transactionRuleController_2(region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleController_2: $e\n');
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

