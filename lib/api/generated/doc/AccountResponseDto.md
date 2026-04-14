# firela_api.model.AccountResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Account UUID | 
**path** | **String** | Account path (hierarchical, colon-separated) | 
**type** | **String** | Account type (root segment) | 
**status** | **String** | Account status | 
**openDate** | **String** | Account open date | 
**bookingMethod** | **String** | Booking method | 
**isCustom** | **bool** | Whether this is a custom (user-created) account | 
**createdAt** | **String** | Created timestamp | 
**updatedAt** | **String** | Updated timestamp | 
**closeDate** | **String** | Account close date (if closed) | [optional] 
**currencies** | **BuiltList&lt;String&gt;** | Allowed currencies (null = no restriction) | [optional] 
**templatePath** | **String** | Template path reference | [optional] 
**i18nKey** | **String** | i18n key for display name | [optional] 
**icon** | **String** | Icon identifier | [optional] 
**openMeta** | [**JsonObject**](.md) | Account metadata | [optional] 
**platformId** | [**JsonObject**](.md) | Platform ID (null if unbound) | [optional] 
**platform** | [**JsonObject**](.md) | Platform details (populated if platformId is set) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


