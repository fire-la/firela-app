/// Result pattern for error handling without exceptions.
///
/// This module provides a functional approach to error handling,
/// using discriminated unions for type-safe error propagation.
library;

/// Result type for operations that can fail.
///
/// Uses sealed class pattern for exhaustive pattern matching.
sealed class Result<T, E> {
  const Result();
}

/// Successful result container.
class Success<T, E> extends Result<T, E> {
  final T value;
  const Success(this.value);
}

/// Failure result container.
class Failure<T, E> extends Result<T, E> {
  final E error;
  const Failure(this.error);
}

/// Create a successful result.
Result<T, E> ok<T, E>(T value) => Success<T, E>(value);

/// Create a failed result.
Result<T, E> err<T, E>(E error) => Failure<T, E>(error);

/// Type guard to check if result is successful.
bool isSuccess<T, E>(Result<T, E> result) => result is Success<T, E>;

/// Type guard to check if result is a failure.
bool isFailure<T, E>(Result<T, E> result) => result is Failure<T, E>;
