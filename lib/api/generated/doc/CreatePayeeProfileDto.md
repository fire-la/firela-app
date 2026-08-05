# firela_api.model.CreatePayeeProfileDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canonical** | **String** | Canonical payee name (unique, case-insensitive). This is the primary identifier for the payee. | 
**aliases** | **BuiltList&lt;String&gt;** | Multi-language aliases for the payee. Used for matching user input in different languages. | [optional] 
**i18nKey** | **String** | Translation key for i18n integration (XLIFF translation system) | [optional] 
**category** | **String** | Payee category classification | 
**subCategory** | **String** | Sub-category for more specific classification | [optional] 
**countries** | **BuiltList&lt;String&gt;** | Country/region codes where the payee operates (ISO 3166-1 alpha-2) | [optional] 
**primaryCountry** | **String** | Primary operating country (ISO 3166-1 alpha-2) | [optional] 
**keywords** | **BuiltList&lt;String&gt;** | Search keywords for fuzzy matching | [optional] 
**logoUrl** | **String** | Payee logo URL | [optional] 
**website** | **String** | Official website URL | [optional] 
**description** | **String** | Payee description | [optional] 
**meta** | [**JsonObject**](.md) | Extended metadata (business hours, contact info, additional details) | [optional] 
**dataSource** | **String** | Data source for this profile | [optional] [default to 'MANUAL']

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


