/// Domain-level failure from a repository or use case.
class RepositoryException implements Exception {
  RepositoryException(this.message, [this.cause, this.stackTrace]);

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => 'RepositoryException: $message';
}

/// Supabase auth/session failure.
class SupabaseAuthException implements Exception {
  SupabaseAuthException(this.message, [this.cause, this.stackTrace]);

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => 'SupabaseAuthException: $message';
}

/// Google Gemini API failure.
class GeminiServiceException implements Exception {
  GeminiServiceException(this.message, [this.cause, this.stackTrace]);

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => 'GeminiServiceException: $message';
}

/// Health Connect / HealthKit integration failure.
class HealthServiceException implements Exception {
  HealthServiceException(this.message, [this.cause, this.stackTrace]);

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => 'HealthServiceException: $message';
}

/// ExerciseDB (RapidAPI) failure.
class ExerciseDbException implements Exception {
  ExerciseDbException(this.message, [this.cause, this.stackTrace]);

  final String message;
  final Object? cause;
  final StackTrace? stackTrace;

  @override
  String toString() => 'ExerciseDbException: $message';
}
