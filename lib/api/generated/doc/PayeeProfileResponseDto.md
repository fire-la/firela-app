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
**i18nKey** | **String** | Translation key for i18n | [optional] 
**category** | **String** | Payee category | 
**subCategory** | **String** | Sub-category | [optional] 
**countries** | **BuiltList&lt;String&gt;** | Country codes where payee operates | 
**primaryCountry** | **String** | Primary operating country | [optional] 
**keywords** | **BuiltList&lt;String&gt;** | Search keywords | 
**logoUrl** | **String** | Logo URL | [optional] 
**website** | **String** | Official website | [optional] 
**description** | **String** | Description | [optional] 
**meta** | [**JsonObject**](.md) | Extended metadata | 
**dataSource** | **String** | Data source | 
**verifiedAt** | [**DateTime**](DateTime.md) | Verification timestamp (null if not verified) | [optional] 
**isActive** | **bool** | Whether the profile is active | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


