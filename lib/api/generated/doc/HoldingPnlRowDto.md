# firela_api.model.HoldingPnlRowDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | Account UUID | 
**accountPath** | **String** | Full account path | 
**accountCcy** | [**JsonObject**](.md) | Account settlement currency (ISO 4217), from cost currency | [optional] 
**brokerType** | [**JsonObject**](.md) | Broker type derived from Platform.type | [optional] 
**symbol** | **String** | Commodity symbol | 
**chartToken** | **String** | Chart segment token (libs/common resolver) | 
**assetClass** | **String** |  | 
**assetSubClass** | [**JsonObject**](.md) |  | [optional] 
**units** | **String** | Net held units (Decimal string) | 
**averageCostPerUnit** | [**HoldingPnlRowDtoAverageCostPerUnit**](HoldingPnlRowDtoAverageCostPerUnit.md) |  | [optional] 
**costBasis** | [**HoldingPnlRowDtoCostBasis**](HoldingPnlRowDtoCostBasis.md) |  | [optional] 
**marketValue** | [**HoldingPnlRowDtoMarketValue**](HoldingPnlRowDtoMarketValue.md) |  | [optional] 
**currentPrice** | [**HoldingPnlRowDtoCurrentPrice**](HoldingPnlRowDtoCurrentPrice.md) |  | [optional] 
**unrealizedPnlBase** | [**JsonObject**](.md) | Unrealized P&L in base currency (Decimal string); null when any FX/price missing | [optional] 
**unrealizedPnlPct** | [**JsonObject**](.md) | Unrealized P&L % (Decimal string) | [optional] 
**costFxRate** | [**HoldingPnlRowDtoCostFxRate**](HoldingPnlRowDtoCostFxRate.md) |  | [optional] 
**marketFxRate** | [**HoldingPnlRowDtoMarketFxRate**](HoldingPnlRowDtoMarketFxRate.md) |  | [optional] 
**pctOfInvestedAssets** | [**JsonObject**](.md) | Share of invested assets % (Decimal string); only for invested chartTokens | [optional] 
**realizedPnl** | [**HoldingPnlRowDtoRealizedPnl**](HoldingPnlRowDtoRealizedPnl.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


