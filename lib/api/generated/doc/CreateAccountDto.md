# firela_api.model.CreateAccountDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**path** | **String** | Account path (hierarchical, colon-separated) | 
**openDate** | [**DateTime**](DateTime.md) | Account open date (server defaults to today) | [optional] 
**currencies** | **BuiltList&lt;String&gt;** | Allowed currencies (null = no restriction) | [optional] 
**bookingMethod** | **String** | Booking method for cost basis | [optional] [default to 'FIFO']
**templatePath** | **String** | Reference to account-standards template path | [optional] 
**isCustom** | **bool** | Whether this is a custom (user-created) account | [optional] [default to false]
**icon** | **String** | Icon identifier (overrides template) | [optional] 
**openDirectiveMeta** | [**JsonObject**](.md) | Open directive metadata (NOT an opening-balance amount — use the opening-balance endpoint) | [optional] 
**platformId** | **String** | Platform ID (references Platform.id) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


