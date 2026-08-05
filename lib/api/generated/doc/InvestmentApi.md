# firela_api.api.InvestmentApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**holdingPnlControllerGetHoldingPnl**](InvestmentApi.md#holdingpnlcontrollergetholdingpnl) | **GET** /api/v1/{region}/investment/holdings/pnl | Get per-holding unrealized + realized P&amp;L


# **holdingPnlControllerGetHoldingPnl**
> HoldingPnlResponseDto holdingPnlControllerGetHoldingPnl(region, asOf, accountId, method)

Get per-holding unrealized + realized P&L

Average-cost unrealized P&L per account × commodity, plus cumulative realized P&L on sold lots (method = FIFO | average, default average).

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getInvestmentApi();
final String region = region_example; // String | Region code for tenant context
final String asOf = 2026-07-08; // String | As-of date (ISO 8601), defaults to today
final String accountId = a1b2c3d4-e5f6-7890-abcd-ef1234567890; // String | Scope to a single account
final String method = method_example; // String | Realized-P&L lot-matching method (default average). Does not affect the average-cost unrealized basis.

try {
    final response = api.holdingPnlControllerGetHoldingPnl(region, asOf, accountId, method);
    print(response);
} catch on DioException (e) {
    print('Exception when calling InvestmentApi->holdingPnlControllerGetHoldingPnl: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **region** | **String**| Region code for tenant context | 
 **asOf** | **String**| As-of date (ISO 8601), defaults to today | [optional] 
 **accountId** | **String**| Scope to a single account | [optional] 
 **method** | **String**| Realized-P&L lot-matching method (default average). Does not affect the average-cost unrealized basis. | [optional] 

### Return type

[**HoldingPnlResponseDto**](HoldingPnlResponseDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

