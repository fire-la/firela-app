# Error Handling Standards

**Purpose:** Define error handling patterns for this Flutter project.

## Quick Reference

| Dimension | Standard |
|-----------|----------|
| **Pattern** | Exception hierarchy with context |
| **UI Layer** | User-friendly messages via SnackBar |
| **Logging** | logger package with context prefix |
| **Types** | ApiException, AppException subclasses |

## Core Rules

### 1. Use Structured Exceptions

```dart
// ✅ Structured error with status and context
throw ApiException(422, 'Account validation failed', data: {
  'suggestedAccount': 'Expenses:Food',
  'invalidAccount': 'Expenses:Unknown',
});

// ❌ Generic error
throw Exception('Something went wrong');
```

### 2. Include Debugging Context

```dart
// ✅ Always include relevant IDs and operation
try {
  await ApiClient.instance.post('/v1/bean/transactions', body: transaction);
} on ApiException catch (e) {
  logger.e('[MainPage] Transaction failed: ${e.statusCode}, ${e.message}');
  if (e.data != null) {
    logger.e('[MainPage] Response data: ${e.data}');
  }
  rethrow;
}
```

### 3. UI Error Handling

```dart
// ✅ User-friendly message with fallback
String errorMsg = '操作失败，请重试';
if (e is ApiException) {
  if (e.statusCode == 422) {
    errorMsg = '数据验证失败: ${e.message}';
  } else if (e.statusCode == 401) {
    errorMsg = '登录已过期，请重新登录';
  } else if (e.statusCode == 500) {
    errorMsg = '服务器错误，请稍后重试';
  }
}
ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text(errorMsg)),
);
```

### 4. Log Before Throwing

```dart
// ✅ Log with context before re-throwing
try {
  await someOperation();
} catch (e) {
  logger.e('[ClassName] Operation failed: $e');
  rethrow;
}

// ❌ Silent catch
try {
  await someOperation();
} catch (e) {
  // Do nothing - error is lost
}
```

### 5. Exception Hierarchy

**Defined in `lib/core/errors/exceptions.dart`:**
- `AppException` - Base abstract class
- `NetworkException` - Network connectivity issues
- `ApiException` - API errors (also defined inline in api_client.dart)
- `AuthenticationException` - Auth failures
- `ValidationException` - Input validation
- `NotFoundException` - Resource not found
- `TimeoutException` - Operation timeout

**Note:** Currently, the codebase uses an inline `ApiException` in `api_client.dart`. The exception classes in `lib/core/errors/` should be integrated or removed.

### 6. Never Catch and Swallow

```dart
// ❌ Silent failure
try {
  await operation();
} catch (e) {
  // Error is lost
}

// ✅ Re-throw or handle explicitly
try {
  await operation();
} catch (e) {
  logger.e('[ClassName] Operation failed', error: e);
  rethrow;
}

// ✅ Or transform to user message
try {
  await operation();
} catch (e) {
  logger.e('[ClassName] Operation failed', error: e);
  throw UserFriendlyException('无法完成操作，请重试');
}
```

## Logging Patterns

```dart
// ✅ Include class name prefix for tracing
logger.i('[MainPage] Starting NLP processing');
logger.e('[AuthService] Login failed: ${e.message}');

// ✅ Log levels
logger.d('[ApiClient] Request headers: $headers');  // Debug only
logger.i('[AuthManager] User logged in');           // Info
logger.w('[ApiClient] Retrying request');           // Warning
logger.e('[MainPage] Transaction failed: $e');      // Error
```

## Checklist

- [ ] All errors use structured exception types
- [ ] Debugging context (class name, operation) is included
- [ ] Errors are logged before throwing or handling
- [ ] User-friendly messages for UI display
- [ ] No silent catch blocks

---

*Standard adapted for Flutter/Dart project*
