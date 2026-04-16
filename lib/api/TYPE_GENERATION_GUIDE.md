# Flutter API Types Integration Guide

## Overview

This document explains how to use type-safe API calls in the firela Flutter app using generated types from the OpenAPI specification.

## Architecture

```
┌─────────────────────────────────────────┐
│   OpenAPI Spec (fire-la/api-specs)      │
│   - Single source of truth              │
│   - TypeScript types (npm)              │
│   - Dart types (generated locally)      │
└─────────────────────────────────────────┘
                  │
                  ▼
┌─────────────────────────────────────────┐
│   firela Flutter App                    │
│   - openapi_generator (Dart package)    │
│   - build_runner (code generation)      │
│   - lib/api/generated/ (output)         │
└─────────────────────────────────────────┘
```

## Setup (One-time)

### 1. Install Flutter SDK

```bash
# Download Flutter SDK
# See: https://docs.flutter.dev/get-started/install

# Verify installation
flutter doctor
```

### 2. Install Dependencies

```bash
cd /Users/xiafang/Documents/firela
flutter pub get
```

### 3. Generate API Types

```bash
# Run code generator
flutter pub run build_runner build --delete-conflicting-outputs

# Or watch mode (regenerate on changes)
flutter pub run build_runner watch --delete-conflicting-outputs
```

### 4. Verify Generation

```bash
ls lib/api/generated/
# Should see generated Dart files
```

## Usage

### API Client

```dart
import 'package:firela/api/api_client.dart';

final client = ApiClient();

// Set auth token after login
client.setAuthToken('your-jwt-token');

// Clear on logout
client.clearAuthToken();
```

### API Service

```dart
import 'package:firela/api/api_service_example.dart';

final healthService = HealthService();
final status = await healthService.checkHealth();

final transactionService = TransactionService();
final transactions = await transactionService.listTransactions('de');
```

### Generated Types (after running build_runner)

```dart
import 'package:firela/api/generated/openapi.dart';

// Use generated types for type safety
final request = CreateTransactionRequest(
  date: '2024-01-15',
  payee: 'Coffee Shop',
  postings: [
    Posting(
      account: 'Expenses:Coffee',
      amount: Amount(number: 5.0, currency: 'EUR'),
    ),
  ],
);

final response = await transactionApi.createTransaction(
  region: 'de',
  request: request,
);
```

## Environment Configuration

### Development

```bash
# Run with local backend
flutter run --dart-define=API_URL=http://localhost:3333/api/v1
```

### Production

```bash
# Run with production API
flutter run --dart-define=API_URL=https://api.firela.com/api/v1
```

## Updating Types

When the OpenAPI spec changes:

```bash
# 1. Pull latest spec from api-specs repo
# (Spec is fetched from GitHub URL in build.yaml)

# 2. Regenerate types
flutter pub run build_runner build --delete-conflicting-outputs

# 3. Fix any breaking changes in your code
# The generator will catch type errors at compile time
```

## Alternative: Using Local Spec

To use a local OpenAPI spec file instead of GitHub URL:

1. Download spec:
   ```bash
   curl -o openapi.yaml https://raw.githubusercontent.com/fire-la/api-specs/main/openapi.yaml
   ```

2. Update `build.yaml`:
   ```yaml
   input_spec:
     path: openapi.yaml  # Use local file
     # url: ...  # Comment out URL
   ```

## Troubleshooting

### Generation Fails

```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs
```

### Type Errors

1. Check that OpenAPI spec is valid
2. Run `spectral lint openapi.yaml` in api-specs repo
3. Regenerate types

### Network Errors

1. Check `API_URL` environment variable
2. Verify backend is running
3. Check network connectivity

## CI/CD Integration

Add to your CI pipeline:

```yaml
- name: Generate API Types
  run: flutter pub run build_runner build --delete-conflicting-outputs

- name: Check for Generated Files
  run: test -d lib/api/generated
```

## Best Practices

1. **Always commit generated code** (not in .gitignore)
2. **Regenerate on API changes** - Keep types in sync
3. **Use generated types everywhere** - Don't manually define API types
4. **Handle errors with try/catch** - DioException for network errors
5. **Add authentication interceptor** - Centralize auth token handling

## Related Files

- `pubspec.yaml` - Dependencies configuration
- `build.yaml` - OpenAPI generator configuration
- `lib/api/api_client.dart` - HTTP client setup
- `lib/api/api_service_example.dart` - Usage examples
- `lib/api/generated/` - Generated types (after running build_runner)

## Next Steps

1. Install Flutter SDK
2. Run `flutter pub get`
3. Run `flutter pub run build_runner build`
4. Use generated types in your widgets

For questions, see:
- [OpenAPI Generator for Dart](https://github.com/gibahjoe/openapi-generator-dart)
- [Flutter HTTP & APIs](https://docs.flutter.dev/data-and-backend/networking)
