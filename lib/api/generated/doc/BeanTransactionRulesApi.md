# firela_api.api.BeanTransactionRulesApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**transactionRuleControllerBulkCreate**](BeanTransactionRulesApi.md#transactionrulecontrollerbulkcreate) | **POST** /api/v1/{region}/bean/transaction-rules/bulk | Bulk create transaction rules
[**transactionRuleControllerCreate**](BeanTransactionRulesApi.md#transactionrulecontrollercreate) | **POST** /api/v1/{region}/bean/transaction-rules | Create a new transaction rule (or upsert if upsertByPayee&#x3D;true)
[**transactionRuleControllerDelete**](BeanTransactionRulesApi.md#transactionrulecontrollerdelete) | **DELETE** /api/v1/{region}/bean/transaction-rules/{ruleId} | Delete a transaction rule
[**transactionRuleControllerExport**](BeanTransactionRulesApi.md#transactionrulecontrollerexport) | **GET** /api/v1/{region}/bean/transaction-rules/export/{format} | Export transaction rules
[**transactionRuleControllerGetDetail**](BeanTransactionRulesApi.md#transactionrulecontrollergetdetail) | **GET** /api/v1/{region}/bean/transaction-rules/{ruleId} | Get transaction rule detail
[**transactionRuleControllerGetStatistics**](BeanTransactionRulesApi.md#transactionrulecontrollergetstatistics) | **GET** /api/v1/{region}/bean/transaction-rules/statistics/{period} | Get transaction rule statistics
[**transactionRuleControllerList**](BeanTransactionRulesApi.md#transactionrulecontrollerlist) | **GET** /api/v1/{region}/bean/transaction-rules | Get all transaction rules for user
[**transactionRuleControllerTest**](BeanTransactionRulesApi.md#transactionrulecontrollertest) | **POST** /api/v1/{region}/bean/transaction-rules/{ruleId}/test | Test rule matching
[**transactionRuleControllerUpdate**](BeanTransactionRulesApi.md#transactionrulecontrollerupdate) | **PUT** /api/v1/{region}/bean/transaction-rules/{ruleId} | Update a transaction rule
[**transactionRuleControllerValidate**](BeanTransactionRulesApi.md#transactionrulecontrollervalidate) | **POST** /api/v1/{region}/bean/transaction-rules/validate | Validate transaction rule configuration


# **transactionRuleControllerBulkCreate**
> BulkCreateRulesResponseDto transactionRuleControllerBulkCreate(region, bulkCreateRulesDto)

Bulk create transaction rules

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code for tenant context
final BulkCreateRulesDto bulkCreateRulesDto = ; // BulkCreateRulesDto | 

try {
    final response = api.transactionRuleControllerBulkCreate(region, bulkCreateRulesDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerBulkCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **bulkCreateRulesDto** | [**BulkCreateRulesDto**](BulkCreateRulesDto.md)|  | 

### Return type

[**BulkCreateRulesResponseDto**](BulkCreateRulesResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerCreate**
> TransactionRuleResponseDto transactionRuleControllerCreate(region, createTransactionRuleDto)

Create a new transaction rule (or upsert if upsertByPayee=true)

Creates a new rule. If upsertByPayee=true, updates existing rule matching payeeKeywords[0] instead of creating duplicate.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String region = region_example; // String | Region code for tenant context
final CreateTransactionRuleDto createTransactionRuleDto = ; // CreateTransactionRuleDto | 

try {
    final response = api.transactionRuleControllerCreate(region, createTransactionRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerCreate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **createTransactionRuleDto** | [**CreateTransactionRuleDto**](CreateTransactionRuleDto.md)|  | 

### Return type

[**TransactionRuleResponseDto**](TransactionRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerDelete**
> transactionRuleControllerDelete(ruleId, region)

Delete a transaction rule

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String ruleId = ruleId_example; // String | Rule ID to delete
final String region = region_example; // String | Region code for tenant context

try {
    api.transactionRuleControllerDelete(ruleId, region);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Rule ID to delete | 
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context

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
 **region** | **String**| Region code for tenant context | 

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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
 **testRuleDto** | [**TestRuleDto**](TestRuleDto.md)|  | 

### Return type

[**TestRuleResponseDto**](TestRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionRuleControllerUpdate**
> TransactionRuleResponseDto transactionRuleControllerUpdate(ruleId, region, updateTransactionRuleDto)

Update a transaction rule

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanTransactionRulesApi();
final String ruleId = ruleId_example; // String | Rule ID to update
final String region = region_example; // String | Region code for tenant context
final UpdateTransactionRuleDto updateTransactionRuleDto = ; // UpdateTransactionRuleDto | 

try {
    final response = api.transactionRuleControllerUpdate(ruleId, region, updateTransactionRuleDto);
    print(response);
} catch on DioException (e) {
    print('Exception when calling BeanTransactionRulesApi->transactionRuleControllerUpdate: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ruleId** | **String**| Rule ID to update | 
 **region** | **String**| Region code for tenant context | 
 **updateTransactionRuleDto** | [**UpdateTransactionRuleDto**](UpdateTransactionRuleDto.md)|  | 

### Return type

[**TransactionRuleResponseDto**](TransactionRuleResponseDto.md)

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
final String region = region_example; // String | Region code for tenant context
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
 **region** | **String**| Region code for tenant context | 
 **validateRuleDto** | [**ValidateRuleDto**](ValidateRuleDto.md)|  | 

### Return type

[**ValidateRuleResponseDto**](ValidateRuleResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

