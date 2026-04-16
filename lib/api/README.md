# Firela API Client

Type-safe HTTP client for the firela-vlt backend, auto-generated from the OpenAPI spec.

## Architecture

```
lib/api/
├── api.dart                  # FirelaApi facade (singleton, auth management)
├── src/api_client.dart       # Dio HTTP client configuration
├── spec/openapi.yaml         # OpenAPI spec (synced from firela-vlt)
└── generated/                # Auto-generated Dart types + API classes
    └── lib/
        ├── firela_api.dart       # Entry point
        └── src/
            ├── api/              # 29 API service classes
            └── model/            # 100+ DTO classes
```

## Quick Start

```dart
import 'package:firela/api/api.dart';

// Singleton - use anywhere in the app
final api = FirelaApi();

// Configure auth
api.setAuthToken('my-jwt-token');

// Call APIs - all methods are typed
final response = await api.transactions.transactionControllerList(
  region: 'cn',
  limit: 20,
  offset: 0,
);
final transactions = response.data!; // TransactionListResponseDto
```

## API Services

The `FirelaApi` facade exposes 16 API groups:

| Property | Type | Description |
|----------|------|-------------|
| `transactions` | `BeanTransactionsApi` | CRUD + list transactions |
| `accounts` | `BeanAccountsApi` | CRUD + close/reopen accounts |
| `commodities` | `BeanCommoditiesApi` | Manage currencies/assets |
| `balances` | `BeanBalancesApi` | Query account balances |
| `payees` | `BeanPayeesApi` | Payee management + autocomplete |
| `reviews` | `BeanReviewsApi` | Review Center (resolve/undo) |
| `transactionRules` | `BeanTransactionRulesApi` | Auto-categorization rules |
| `recurringRules` | `RecurringRulesApi` | Recurring transaction rules |
| `expectedTransactions` | `ExpectedTransactionsApi` | Expected/bill reminders |
| `dashboard` | `DashboardApi` | Net worth, cash flow, accounts |
| `reporting` | `ReportingApi` | Portfolio trends + snapshots |
| `imports` | `BeanImportApi` | File import + config |
| `nlp` | `BeanNLPApi` | Natural language processing |
| `providerSync` | `ProviderSyncApi` | Provider sync (firela-connect) |
| `regions` | `BeanAccountStandardsApi` | Account standards by region |
| `health` | `HealthApi` | System health checks |

## Common Patterns

### Auth

```dart
// After login
api.setAuthToken(jwtToken);

// After logout
api.clearAuthToken();
```

### Region Routing

Most bean endpoints require a region prefix (`cn`, `us`, `de`):

```dart
// List accounts in CN region
await api.accounts.accountControllerFindAll(region: 'cn');

// Get net worth for US region
await api.dashboard.dashboardControllerGetNetWorth(region: 'us');
```

### Error Handling

All API calls may throw `DioException` (aliased as `FirelaApiException`):

```dart
try {
  final response = await api.accounts.accountControllerFindOne(
    region: 'cn',
    id: accountId,
  );
  final account = response.data!;
} on FirelaApiException catch (e) {
  if (e.response?.statusCode == 404) {
    // Handle not found
  }
  // Error response follows RFC 9457 format:
  // { type, title, status, detail, instance }
}
```

### Pagination

List endpoints return paginated responses with `data`, `total`, `limit`, `offset`:

```dart
final response = await api.transactions.transactionControllerList(
  region: 'cn',
  limit: 20,
  offset: 0,
);
final list = response.data!; // TransactionListResponseDto
print(list.total);  // Total count
print(list.data);   // Current page items
```

## Environment Configuration

Base URL is configured at build time:

```bash
# Development
flutter run --dart-define=API_URL=http://localhost:3334/api/v1

# Production
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

Default: `http://localhost:3334/api/v1`

## Generated Types

All request/response types are in `generated/lib/src/model/`. Key types:

| Type | Usage |
|------|-------|
| `TransactionListResponseDto` | Paginated transaction list |
| `TransactionDetailDto` | Full transaction with postings |
| `AccountListResponseDto` | Paginated account list |
| `AccountResponseDto` | Full account details |
| `BalanceResponseDto` | Account balance |
| `CommodityListResponseDto` | Currency/asset list |
| `ProviderSyncResponseDto` | Import sync result |
| `NlpResponseDto` | NLP processing result |

Types use `built_value` immutable builders:

```dart
// Access fields directly
final amount = transaction.data!.first.postings!.first.units;

// Build request DTOs
final dto = CreateAccountDtoBuilder()
  .name('Checking')
  .accountPath('Assets:Bank:Checking')
  .build();
```

## Regenerating Types

When the backend OpenAPI spec changes:

1. Copy spec from firela-vlt: `libs/api-types/openapi.yaml` -> `lib/api/spec/openapi.yaml`
2. Run generator:
   ```bash
   cd lib/api && npx @openapitools/openapi-generator-cli@latest generate \
     -i spec/openapi.yaml \
     -g dart-dio \
     -o generated \
     --additional-properties=pubName=firela_api
   ```
3. Run `flutter pub get` to update dependencies
