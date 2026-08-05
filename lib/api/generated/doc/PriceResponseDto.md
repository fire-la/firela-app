# firela_api.model.PriceResponseDto

## Load the model package
```dart
import 'package:firela_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique identifier | 
**userId** | **String** | User ID (owner of the price) | 
**currency** | **String** | Currency being priced (e.g., USD, AAPL, BTC) | 
**quoteCurrency** | **String** | Quote currency (pricing currency, e.g., USD, CNY) | 
**amount** | **num** | Price amount (corresponds to Beancount Amount.number). Supports up to 15 decimal places. | 
**date** | [**Date**](Date.md) | Price date (ISO 8601 format). Represents the date this price was valid. | 
**meta** | [**JsonObject**](.md) | Metadata (corresponds to Beancount meta field). Contains source, confidence, note, etc. | 
**createdAt** | [**DateTime**](DateTime.md) | Creation timestamp | 
**updatedAt** | [**DateTime**](DateTime.md) | Last update timestamp | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


