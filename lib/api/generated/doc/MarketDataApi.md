# firela_api.api.MarketDataApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**symbolControllerGetQuote**](MarketDataApi.md#symbolcontrollergetquote) | **GET** /api/v1/market/symbols/{symbol}/quote | Get a market symbol quote
[**symbolControllerSearch**](MarketDataApi.md#symbolcontrollersearch) | **GET** /api/v1/market/symbols/search | Search market symbols by name or code


# **symbolControllerGetQuote**
> SymbolQuoteDto symbolControllerGetQuote(symbol)

Get a market symbol quote

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getMarketDataApi();
final String symbol = symbol_example; // String | 

try {
    final response = api.symbolControllerGetQuote(symbol);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MarketDataApi->symbolControllerGetQuote: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol** | **String**|  | 

### Return type

[**SymbolQuoteDto**](SymbolQuoteDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **symbolControllerSearch**
> BuiltList<SymbolSearchResultDto> symbolControllerSearch(q, limit, exchange, assetType)

Search market symbols by name or code

Ranked search over the openbb catalog. Empty `q` returns [].

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getMarketDataApi();
final String q = AAPL; // String | Search term — matched against symbol and instrument name. Empty string returns [].
final num limit = 8.14; // num | Maximum number of results (clamped 1..50)
final String exchange = US; // String | Filter by exchange code (e.g. US, HK, SS, SZ)
final String assetType = stock; // String | Filter by OpenBB asset_type (e.g. stock, etf)

try {
    final response = api.symbolControllerSearch(q, limit, exchange, assetType);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MarketDataApi->symbolControllerSearch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Search term — matched against symbol and instrument name. Empty string returns []. | 
 **limit** | **num**| Maximum number of results (clamped 1..50) | [optional] [default to 10]
 **exchange** | **String**| Filter by exchange code (e.g. US, HK, SS, SZ) | [optional] 
 **assetType** | **String**| Filter by OpenBB asset_type (e.g. stock, etf) | [optional] 

### Return type

[**BuiltList&lt;SymbolSearchResultDto&gt;**](SymbolSearchResultDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

