# API Standards

**Purpose:** Define API client patterns for this Flutter project.

## Quick Reference

| Dimension | Standard |
|-----------|----------|
| **Client** | Singleton ApiClient with auth injection |
| **Service Layer** | IgnApiService for domain methods |
| **Authentication** | Bearer token via AuthManager |
| **Error Handling** | ApiException with statusCode and message |
| **Base URL** | Configurable via IGN_BASE_URL |

## Core Rules

### 1. Use ApiClient Singleton

```dart
// ✅ Correct: Use singleton instance
final response = await ApiClient.instance.get('/v1/bean/transactions');

// ❌ Wrong: Create new client
final client = ApiClient();
```

**Location:** `lib/core/network/api_client.dart`

### 2. Service Layer Pattern

```dart
// ✅ Domain methods in IgnApiService
class IgnApiService {
  Future<dynamic> processNlp(String message, {String? sessionId}) {
    return ApiClient.instance.post('/v1/bean/nlp/process', body: {...});
  }
}

// ❌ Direct API calls in widgets
final response = await ApiClient.instance.get('/v1/bean/nlp/process');
```

**Location:** `lib/core/services/ign_api_service.dart`

### 3. Authentication Flow

```dart
// ✅ Auth handled automatically
// ApiClient calls AuthManager.ensureLoggedIn() before each request
final token = AuthManager.instance.authToken;
if (token != null) {
  headers['Authorization'] = 'Bearer $token';
}

// ❌ Manual token handling in services
```

**Auth Manager:** `lib/core/network/auth_manager.dart`

### 4. Error Handling

```dart
// ✅ Structured error with context
try {
  await ApiClient.instance.post('/v1/bean/transactions', body: transaction);
} on ApiException catch (e) {
  if (e.statusCode == 422) {
    // Handle validation error
    final suggested = e.data?['suggestedAccount'];
  }
}

// ❌ Generic error handling
try {
  await apiCall();
} catch (e) {
  // Unknown error type
}
```

**Exception Class:** `ApiException(statusCode, message, {data})` in `lib/core/network/api_client.dart`

### 5. HTTP Methods

```dart
// GET request
final data = await ApiClient.instance.get('/path', queryParams: {'key': 'value'});

// POST request
final result = await ApiClient.instance.post('/path', body: {'key': 'value'});

// File upload
final response = await ApiClient.instance.uploadFile(
  '/v1/bean/import/file',
  filePath,
  formFields: {'type': 'alipay'},
);
```

### 6. Environment Configuration

```dart
// Compile-time configuration via --dart-define
flutter build --dart-define=IGN_BASE_URL=https://api-prod.firela.io/api

// Access in code
const baseUrl = String.fromEnvironment(
  'IGN_BASE_URL',
  defaultValue: 'https://api-s.firela.io/api',
);
```

**Configuration:** `lib/core/constants/api_constants.dart`

## API Endpoints Reference

| Endpoint | Method | Purpose |
|----------|--------|---------|
| `/v1/users` | POST | Create new user |
| `/v1/auth/sessions/anonymous` | POST | Anonymous login |
| `/v1/bean/nlp/process` | POST | NLP expense processing |
| `/v1/bean/transactions` | GET/POST | Transaction CRUD |
| `/v1/bean/import/file` | POST | Bill file import |
| `/v1/bean/dashboard/net-worth` | GET | Net worth summary |
| `/v1/bean/dashboard/cash-flow` | GET | Cash flow summary |

## Checklist

- [ ] Use ApiClient.instance singleton
- [ ] Domain logic in IgnApiService, not widgets
- [ ] Handle ApiException with statusCode checks
- [ ] Log API calls via logger
- [ ] Use compile-time env vars for configuration

---

*Standard adapted for Flutter/Dart project*
