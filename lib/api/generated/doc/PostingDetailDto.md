# firela_api.model.PostingDetailDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Posting ID | 
**accountId** | **String** | Account ID | 
**account** | **String** | Fully-qualified Beancount account path | 
**units** | **String** | Amount as decimal string. Typed optional but always present in responses: interpolation fills any MISSING posting before it is persisted or returned. | [optional] 
**currency** | **String** | Currency | [optional] 
**costAmount** | **String** | Cost amount | [optional] 
**costCurrency** | **String** | Cost currency | [optional] 
**costDate** | **String** | Cost date | [optional] 
**cost** | [**CostDetailDto**](CostDetailDto.md) |  | [optional] 
**priceAmount** | **String** | Price amount | [optional] 
**priceCurrency** | **String** | Price currency | [optional] 
**flag** | **String** | Posting flag | [optional] 
**meta** | [**JsonObject**](.md) | Posting metadata | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


