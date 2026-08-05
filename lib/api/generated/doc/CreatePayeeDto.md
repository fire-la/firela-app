# firela_api.model.CreatePayeeDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payee** | **String** | User's original payee name (e.g., 'Starbucks', 'McDonald'). This is the raw payee string as entered by the user. | 
**payeeProfileId** | **String** | Optional reference to global PayeeProfile for standardized data (merchant info, i18n keys, categories) | [optional] 
**customCategory** | **String** | User's custom category for this payee (overrides PayeeProfile category) | [optional] 
**customTags** | **BuiltList&lt;String&gt;** | User's custom tags for this payee (e.g., ['favorite', 'work_meal']) | [optional] 
**meta** | [**JsonObject**](.md) | Metadata for extended information (location, notes, contact info, etc.) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


