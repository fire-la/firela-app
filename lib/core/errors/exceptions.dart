/// Base exception class for the app
abstract class AppException implements Exception {
  const AppException(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() => details != null ? '$message: $details' : message;
}

/// Network-related exceptions
class NetworkException extends AppException {
  const NetworkException([String? details])
      : super('Network error occurred', details);
}

/// API-related exceptions
class ApiException extends AppException {
  const ApiException([String? details]) : super('API error occurred', details);
}

/// Authentication exceptions
class AuthenticationException extends AppException {
  const AuthenticationException([String? details])
      : super('Authentication failed', details);
}

/// Authorization exceptions
class AuthorizationException extends AppException {
  const AuthorizationException([String? details])
      : super('Authorization failed', details);
}

/// Validation exceptions
class ValidationException extends AppException {
  const ValidationException([String? details])
      : super('Validation failed', details);
}

/// Storage exceptions
class StorageException extends AppException {
  const StorageException([String? details])
      : super('Storage error occurred', details);
}

/// Not found exceptions
class NotFoundException extends AppException {
  const NotFoundException([String? details])
      : super('Resource not found', details);
}

/// Timeout exceptions
class TimeoutException extends AppException {
  const TimeoutException([String? details])
      : super('Operation timed out', details);
}
