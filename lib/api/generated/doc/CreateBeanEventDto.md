# firela_api.model.CreateBeanEventDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **String** | Life event date (ISO 8601) | 
**type** | **String** | Life event type (e.g., \"employer\", \"location\", \"marital-status\") — user-defined, no enum constraint at engine layer | 
**description** | **String** | Life event description. Empty string is a VALID value (distinct from absence). | 
**meta** | [**JsonObject**](.md) | Product-side metadata (lives in BeanEvent.meta JSON, never in engine Event fields) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


