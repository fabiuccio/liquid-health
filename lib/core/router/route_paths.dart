/// Canonical path strings for [GoRouter].
///
/// Deep-link targets follow `/app/<tab>` so a future intent filter or web base
/// href can map 1:1 to these paths without renaming routes.
abstract final class RoutePaths {
  static const String loading = '/loading';
  static const String missingKeys = '/missing-keys';
  static const String onboarding = '/onboarding';
  static const String bootstrapError = '/bootstrap-error';

  static const String app = '/app';
  static const String plan = '/app/plan';
  static const String statistics = '/app/statistics';
  static const String exercises = '/app/exercises';
  static const String body = '/app/body';
}

/// Named routes for navigation and deep linking (`goNamed`).
abstract final class RouteNames {
  static const String loading = 'loading';
  static const String missingKeys = 'missingKeys';
  static const String onboarding = 'onboarding';
  static const String bootstrapError = 'bootstrapError';

  static const String plan = 'plan';
  static const String statistics = 'statistics';
  static const String exercises = 'exercises';
  static const String body = 'body';
}
