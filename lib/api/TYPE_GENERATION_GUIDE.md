# Flutter API Integration Guide

## Overview

The firela Flutter app uses **manual Dio HTTP wrappers with typed response models** to communicate with the firela-vlt backend API.

## Current Architecture

```
┌──────────────────────────────────────────────┐
│   firela Flutter App                         │
│                                              │
│   api/api.dart          — API service facade  │
│   api/src/api_client.dart — Dio HTTP client   │
│   api/src/responses.dart — Typed DTO models   │
│   api/src/region_types.dart — Region types    │
│                                              │
│   All business API methods return typed DTOs  │
│   (HealthApi.checkHealth() returns Response)  │
└──────────────────────────────────────────────┘
         │
         ▼
┌──────────────────────────────────────────────┐
│   firela-vlt Backend (NestJS)                 │
│   OpenAPI spec: libs/api-types/openapi.yaml   │
│   npm package: @firela/api-types              │
└──────────────────────────────────────────────┘
```

## API Files

| File | Purpose |
|------|---------|
| `api.dart` | API service classes facade (exports all types) |
| `src/api_client.dart` | Dio HTTP client singleton with env-based URL config |
| `src/responses.dart` | Typed response DTOs mirroring backend DTOs |
| `src/region_types.dart` | RegionConfig, RegionInfo, and Region constants |

## Type Mapping

| Backend DTO | Dart Type | API Method |
|-------------|-----------|------------|
| `TransactionListResponseDto` | `TransactionListResponse` | `TransactionApi.listTransactions()` |
| `TransactionDetailDto` | `TransactionDetail` | `TransactionApi.getTransaction()` |
| `BatchTransactionResponseDto` | `BatchTransactionResponse` | `TransactionApi.batchCreateTransactions()` |
| `ProviderSyncResponseDto` | `ProviderSyncResult` | `TransactionApi.syncParsedBillTransactions()` |
| `AccountListResponseDto` | `AccountListResponse` | `AccountApi.listAccounts()` |
| `AccountResponseDto` | `AccountDetail` | `AccountApi.getAccount()` |
| `CommodityListResponseDto` | `CommodityListResponse` | `CommodityApi.listCommodities()` |
| `PriceListResponseDto` | `PriceListResponse` | `PriceApi.listPrices()` |
| `BatchBalanceResponseDto` | `BatchBalanceResponse` | `BalanceApi.getBalances()` |

## Environment Configuration

### Development

```bash
flutter run --dart-define=API_URL=http://localhost:3334/api/v1
```

### Production

```bash
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

## Adding New API Endpoints

1. Add the route to the firela-vlt backend
2. Define the response DTO in `src/responses.dart` with `fromJson` factory
3. Add the API method in the corresponding service class in `api.dart`
4. Return the typed DTO instead of raw `Response`

## Planned: OpenAPI Code Generation

The following are configured but **not yet in use**:

- `pubspec.yaml`: `openapi_generator` and `openapi_generator_annotations` dependencies
- `build.yaml`: Configured for `dart-dio` generator with output to `lib/api/generated/`

When the API grows large enough that manual maintenance becomes burdensome,
enable code generation:

1. Run `flutter pub run build_runner build --delete-conflicting-outputs`
2. Generated types will appear in `lib/api/generated/`
3. Replace manual wrappers with generated types
