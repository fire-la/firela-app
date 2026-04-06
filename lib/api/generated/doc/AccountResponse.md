# firela_api.model.AccountResponse

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**path** | **String** | Full Beancount account path | 
**type** | [**AccountType**](AccountType.md) |  | 
**status** | [**AccountStatus**](AccountStatus.md) |  | 
**openDate** | [**Date**](Date.md) |  | 
**bookingMethod** | [**BookingMethod**](BookingMethod.md) |  | 
**isCustom** | **bool** |  | 
**closeDate** | [**Date**](Date.md) |  | [optional] 
**currencies** | **BuiltList&lt;String&gt;** |  | [optional] 
**templatePath** | **String** |  | [optional] 
**i18nKey** | **String** |  | [optional] 
**icon** | **String** |  | [optional] 
**openMeta** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) |  | [optional] 
**platformId** | **String** |  | [optional] 
**platform** | [**PlatformInfo**](PlatformInfo.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


