# firela_api.api.BeanExportApi

## Load the API package
```dart
import 'package:firela_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exportControllerExportBeancount**](BeanExportApi.md#exportcontrollerexportbeancount) | **GET** /api/v1/{region}/bean/export/beancount | Export Beancount ledger as ZIP


# **exportControllerExportBeancount**
> exportControllerExportBeancount()

Export Beancount ledger as ZIP

Export all user Beancount data as a ZIP file containing ledger.beancount and yearly files in community format.

### Example
```dart
import 'package:firela_api/api.dart';

final api = FirelaApi().getBeanExportApi();

try {
    api.exportControllerExportBeancount();
} catch on DioException (e) {
    print('Exception when calling BeanExportApi->exportControllerExportBeancount: $e\n');
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

