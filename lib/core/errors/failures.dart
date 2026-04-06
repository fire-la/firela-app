/// Base failure class for error handling
abstract class Failure {
  const Failure(this.message, [this.details]);

  final String message;
  final String? details;

  @override
  String toString() => details != null ? '$message: $details' : message;
}

/// Network failure
class NetworkFailure extends Failure {
  const NetworkFailure([String? details])
      : super('Network failure', details);
}

/// Server failure
class ServerFailure extends Failure {
  const ServerFailure([String? details]) : super('Server failure', details);
}

/// Cache failure
class CacheFailure extends Failure {
  const CacheFailure([String? details]) : super('Cache failure', details);
}

/// Validation failure
class ValidationFailure extends Failure {
  const ValidationFailure([String? details])
      : super('Validation failure', details);
}

/// Authentication failure
class AuthenticationFailure extends Failure {
  const AuthenticationFailure([String? details])
      : super('Authentication failure', details);
}

/// Unknown failure
class UnknownFailure extends Failure {
  const UnknownFailure([String? details]) : super('Unknown failure', details);
}
