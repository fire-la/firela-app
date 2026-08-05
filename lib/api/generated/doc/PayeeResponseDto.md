# firela_api.model.PayeeResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier (UUID) | 
**userId** | **String** | User ID (owner of this payee mapping) | 
**payee** | **String** | User's original payee name (e.g., 'Starbucks', 'McDonald') | 
**payeeProfileId** | **String** | Reference to global PayeeProfile (merchant info, i18n keys, categories) | [optional] 
**customCategory** | **String** | User's custom category (overrides PayeeProfile category if set) | [optional] 
**customTags** | **BuiltList&lt;String&gt;** | User's custom tags (e.g., ['favorite', 'work_meal']) | 
**useCount** | **num** | Usage count (number of times this payee was used in transactions) | 
**lastUsedAt** | [**DateTime**](DateTime.md) | Last used timestamp | 
**meta** | [**JsonObject**](.md) | Extended metadata (location, notes, contact info, etc.) | 
**isActive** | **bool** | Active status (inactive payees hidden from autocomplete) | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp (first time this payee was used) | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


