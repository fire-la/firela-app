# firela_api.model.DashboardControllerGetAccounts200Response

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groups** | [**BuiltList&lt;AssetClassGroupDto&gt;**](AssetClassGroupDto.md) | Account groups by asset class | 
**summary** | [**AssetClassSummaryDto**](AssetClassSummaryDto.md) |  | 
**uncategorized** | [**AssetClassGroupDto**](AssetClassGroupDto.md) |  | [optional] 
**global** | [**AssetClassAccountsResponseDto**](AssetClassAccountsResponseDto.md) |  | 
**byAccount** | [**BuiltList&lt;HoldingAssetClassAccountSliceDto&gt;**](HoldingAssetClassAccountSliceDto.md) | Per-account slices | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


