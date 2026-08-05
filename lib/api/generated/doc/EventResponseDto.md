# firela_api.model.EventResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier | 
**userId** | **String** | User ID (owner of the life event) | 
**date** | [**Date**](Date.md) | Life event date (ISO 8601 format) | 
**type** | **String** | Life event type (user-defined, e.g., \"employer\", \"location\") | 
**description** | **String** | Life event description. May be an empty string (a valid value distinct from absence). | 
**meta** | [**JsonObject**](.md) | Product-side metadata (free-form JSON) | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp. Also emitted as the ETag response header for If-Match optimistic concurrency. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


