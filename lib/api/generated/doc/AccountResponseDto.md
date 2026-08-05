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
**assetSubClass** | **String** | Account-level asset sub-class (product type, e.g. STOCK/DEPOSIT/CREDIT_CARD/PERSONAL_LOAN). Computed from the account path via the asset-classifier (ADR-0077). Null for non-asset accounts (Income/Expenses/Equity) or unmatched paths. | [optional] 
**status** | **String** | Account status | 
**openDate** | **String** | Account open date | 
**closeDate** | **String** | Account close date (if closed) | [optional] 
**currencies** | **BuiltList&lt;String&gt;** | Allowed currencies (null = no restriction) | [optional] 
**bookingMethod** | **String** | Booking method | 
**templatePath** | **String** | Template path reference | [optional] 
**isCustom** | **bool** | Whether this is a custom (user-created) account | 
**displayName** | **String** | Localized display name (ADR-0114, read-time projection) | [optional] 
**icon** | **String** | Icon identifier | [optional] 
**openDirectiveMeta** | [**JsonObject**](.md) | Open directive metadata (ADR-0115 Decision 9) | [optional] 
**platformId** | [**JsonObject**](.md) | Platform ID (null if unbound) | [optional] 
**platform** | [**JsonObject**](.md) | Platform details (populated if platformId is set) | [optional] 
**createdAt** | **String** | Created timestamp | 
**updatedAt** | **String** | Updated timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


