# firela_api.model.HoldingPnlResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**asOfDate** | **String** |  | 
**baseCurrency** | **String** |  | 
**method** | **String** | Realized-P&L lot-matching method (FIFO or average). Unrealized cost basis remains average regardless of this value (#473). | 
**rows** | [**BuiltList&lt;HoldingPnlRowDto&gt;**](HoldingPnlRowDto.md) |  | 
**warnings** | [**BuiltList&lt;HoldingPnlWarningDto&gt;**](HoldingPnlWarningDto.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


