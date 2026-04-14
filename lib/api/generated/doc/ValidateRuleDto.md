# firela_api.model.ValidateRuleDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**matchLogic** | **String** |  | [default to 'OR']
**priority** | **num** |  | [default to 50]
**description** | **String** |  | [optional] 
**narrationKeywords** | [**BuiltList&lt;BuiltList&gt;**](BuiltList.md) |  | [optional] 
**payeeKeywords** | [**BuiltList&lt;BuiltList&gt;**](BuiltList.md) |  | [optional] 
**categoryKeywords** | [**BuiltList&lt;BuiltList&gt;**](BuiltList.md) |  | [optional] 
**methodKeywords** | [**BuiltList&lt;BuiltList&gt;**](BuiltList.md) | Payment method keywords (e.g., HuaBei, YuEBao) | [optional] 
**categoryAccount** | **String** | Destination account for expenses/income (e.g., Expenses:Food:Coffee) | [optional] 
**amountMin** | **num** | Minimum transaction amount (inclusive) | [optional] 
**amountMax** | **num** | Maximum transaction amount (inclusive) | [optional] 
**additionalTags** | [**BuiltList&lt;BuiltList&gt;**](BuiltList.md) |  | [optional] 
**additionalMetadata** | [**JsonObject**](.md) |  | [optional] 
**upsertByPayee** | **bool** | If true, update existing rule with matching payeeKeywords[0] instead of creating new rule | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


