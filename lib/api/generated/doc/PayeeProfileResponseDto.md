# firela_api.model.PayeeProfileResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier (UUID) | 
**canonical** | **String** | Canonical payee name (unique, case-insensitive) | 
**aliases** | **BuiltList&lt;String&gt;** | Multi-language aliases | 
**category** | **String** | Payee category | 
**countries** | **BuiltList&lt;String&gt;** | Country codes where payee operates | 
**keywords** | **BuiltList&lt;String&gt;** | Search keywords | 
**meta** | [**JsonObject**](.md) | Extended metadata | 
**dataSource** | **String** | Data source | 
**isActive** | **bool** | Whether the profile is active | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 
**i18nKey** | [**JsonObject**](.md) | Translation key for i18n | [optional] 
**subCategory** | [**JsonObject**](.md) | Sub-category | [optional] 
**primaryCountry** | [**JsonObject**](.md) | Primary operating country | [optional] 
**logoUrl** | [**JsonObject**](.md) | Logo URL | [optional] 
**website** | [**JsonObject**](.md) | Official website | [optional] 
**description** | [**JsonObject**](.md) | Description | [optional] 
**verifiedAt** | [**JsonObject**](.md) | Verification timestamp (null if not verified) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


