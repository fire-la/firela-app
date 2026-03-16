# API Types Migration Guide

This document describes how to use the type-safe API types generated from the OpenAPI specification.

## Overview

Due to compatibility issues with `openapi-generator-dart` and Dart 3.5+, we use manually created type definitions that follow the OpenAPI spec structure. These types provide compile-time safety and better IDE support.

## Architecture

```
lib/api/
├── api_client.dart          # ApiClientWrapper with Dio configuration
├── type_adapter.dart        # Converts API types ↔ domain models
└── generated/
    └── openapi.dart         # Manual type definitions from OpenAPI spec
```

## Available Types

### Enums

| Type | Values | Description |
|------|--------|-------------|
| `AccountType` | `assets`, `liabilities`, `income`, `expenses`, `equity` | Beancount account type |
| `AccountStatus` | `open`, `closed`, `suspended` | Account lifecycle status |
| `TxnStatus` | `active`, `voided`, `superseded` | Transaction lifecycle status |
| `TransactionFlag` | `complete`, `incomplete` | Transaction completion flag |

### Core Models

| Type | Description |
|------|-------------|
| `Posting` | Single posting (leg) of a transaction |
| `TransactionDetail` | Full transaction with all postings |
| `TransactionListResponse` | Paginated transaction list |
| `CreateTransactionRequest` | Request body for creating a transaction |
| `CreatePostingRequest` | Request body for creating a posting |
| `UpdateTransactionRequest` | Request body for updating a transaction |
| `TransactionResponse` | Response after creating a transaction |
| `HealthResponse` | API health check response |
| `ErrorResponse` | API error response |

## Usage Examples

### 1. Making Typed API Calls

```dart
import 'package:dio/dio.dart';
import '../../api/api_client.dart';
import '../../api/generated/openapi.dart';

class MyRemoteDatasource {
  late final Dio _dio;

  MyRemoteDatasource() {
    _dio = ApiClientWrapper.instance.dio;
  }

  Future<TransactionListResponse> getTransactions() async {
    final response = await _dio.get('/bean/transactions');
    return TransactionListResponse.fromJson(response.data);
  }

  Future<TransactionDetail> getTransaction(String id) async {
    final response = await _dio.get('/bean/transactions/$id');
    return TransactionDetail.fromJson(response.data);
  }
}
```

### 2. Creating Transactions

```dart
Future<TransactionResponse> createExpense({
  required String date,
  required String account,
  required double amount,
  String currency = 'CNY',
  String? payee,
  String? narration,
}) async {
  final request = CreateTransactionRequest(
    date: date,
    flag: TransactionFlag.complete,
    payee: payee,
    narration: narration ?? 'Expense entry',
    postings: [
      CreatePostingRequest(
        account: account,
        units: amount.toStringAsFixed(2),
        currency: currency,
      ),
    ],
  );

  final response = await _dio.post(
    '/bean/transactions',
    data: request.toJson(),
  );

  return TransactionResponse.fromJson(response.data);
}
```

### 3. Converting API Types to Domain Models

Use `TypeAdapter` to convert between API types and domain models:

```dart
import '../../api/type_adapter.dart';
import '../../api/generated/openapi.dart';
import '../models/my_domain_model.dart';

// Convert TransactionDetail to PendingTransactionModel
final apiResponse = await getTransactionDetail(id);
final domainModel = TypeAdapter.toPendingTransaction(apiResponse);

// Convert list
final listResponse = await getTransactions();
final domainModels = TypeAdapter.toPendingTransactionList(listResponse.data);

// Convert domain model to create request
final request = TypeAdapter.toCreateTransactionRequest(
  pendingTxn,
  accountId: 'Assets:Cash',
);
```

### 4. Working with Enums

```dart
// Parse from API string
final status = TxnStatus.fromString('ACTIVE');  // TxnStatus.active
final type = AccountType.fromString('assets'); // AccountType.assets

// Convert to API value
final flagValue = TransactionFlag.complete.toApiValue();  // '*'
final incompleteValue = TransactionFlag.incomplete.toApiValue();  // '!'
```

## Migration Checklist

When migrating existing datasources to use typed API calls:

- [ ] Import `openapi.dart` for types
- [ ] Import `type_adapter.dart` for conversions
- [ ] Replace `dynamic` return types with typed responses
- [ ] Add typed methods (e.g., `getXxxTyped()`) alongside existing methods
- [ ] Use `fromJson` factory constructors for parsing responses
- [ ] Use `toJson()` methods for request bodies
- [ ] Keep backward-compatible wrapper methods if needed

## Best Practices

1. **Always use typed methods for new code**
   ```dart
   // Good
   Future<TransactionDetail> getTransactionTyped(String id);

   // Avoid (unless for backward compatibility)
   Future<dynamic> getTransaction(String id);
   ```

2. **Use TypeAdapter for model conversion**
   - Don't manually map fields
   - Centralized conversion logic
   - Easier to maintain when API changes

3. **Handle null safety**
   - API types have nullable fields where appropriate
   - Use `?? ''` or `?? 0` for fallbacks

4. **Error handling**
   - Use `ErrorResponse` for structured error parsing
   - Check `statusCode` for HTTP error codes

## Updating Types

When the OpenAPI spec changes:

1. Review the spec changes in `fire-la/api-specs` repository
2. Update `lib/api/generated/openapi.dart` manually
3. Update `lib/api/type_adapter.dart` if conversion logic changes
4. Run `flutter analyze` to verify
5. Update affected datasources

## Related Files

- API Client: `lib/api/api_client.dart`
- Type Definitions: `lib/api/generated/openapi.dart`
- Type Adapter: `lib/api/type_adapter.dart`
- Review Center Datasource: `lib/features/review_center/data/datasources/review_center_remote_datasource.dart`
