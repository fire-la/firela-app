# firela_api.model.UpdateTransactionDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flag** | **String** | Transaction flag (CLEARED, PENDING, etc.) | [optional] 
**payee** | **String** | Payee name | [optional] 
**narration** | **String** | Transaction narration/description | [optional] 
**tags** | **BuiltList&lt;String&gt;** | Transaction tags | [optional] 
**links** | **BuiltList&lt;String&gt;** | Transaction links | [optional] 
**meta** | [**JsonObject**](.md) | Transaction metadata (JSON object) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


