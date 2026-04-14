# firela_api.model.UpdateAccountDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currencies** | **BuiltList&lt;String&gt;** | Allowed currencies (null = no restriction) | [optional] 
**bookingMethod** | **String** | Booking method for cost basis | [optional] 
**i18nKey** | **String** | i18n key for display name | [optional] 
**icon** | **String** | Icon identifier | [optional] 
**openMeta** | [**JsonObject**](.md) | Additional metadata (merged with existing) | [optional] 
**platformId** | [**JsonObject**](.md) | Platform ID (references Platform.id), null to clear association | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


