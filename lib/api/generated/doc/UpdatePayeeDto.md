# firela_api.model.UpdatePayeeDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payeeProfileId** | **String** | Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories) | [optional] 
**customCategory** | **String** | User's custom category for this payee (overrides PayeeProfile category) | [optional] 
**customTags** | **BuiltList&lt;String&gt;** | User's custom tags for this payee (e.g., ['favorite', 'work_meal']) | [optional] 
**meta** | [**JsonObject**](.md) | Metadata for extended information (location, notes, contact info, etc.). Will merge with existing metadata. | [optional] 
**isActive** | **bool** | Enable or disable this payee. Disabled payees will not appear in autocomplete suggestions. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


