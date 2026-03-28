/// All user-visible copy lives here — widgets must not hardcode strings.
abstract final class AppStrings {
  static const String appTitle = 'Liquid Routine';

  static const String missingKeysTitle = 'Keys required';
  static const String missingKeysBody =
      'Open lib/core/constants/api_keys.dart and set your Supabase URL, '
      'anon key, and Gemini API key.';

  static const String loadingTitle = 'Loading';

  static const String onboardingTitle = 'Onboarding';
  static const String onboardingBody =
      'Complete onboarding to create your profile.';

  static const String bootstrapErrorTitle = 'Something went wrong';
  static const String bootstrapErrorBody =
      'We could not finish startup. Check your connection and keys, then '
      'restart the app.';

  static const String tabPlan = 'Plan';
  static const String tabStatistics = 'Statistics';
  static const String tabExercises = 'Exercises';
  static const String tabBody = 'Body';

  static const String planTabTitle = 'Plan';
  static const String planTabBody = 'Your training plan will appear here.';

  static const String statisticsTabTitle = 'Statistics';
  static const String statisticsTabBody = 'Your stats will appear here.';

  static const String exercisesTabTitle = 'Exercises';
  static const String exercisesTabBody = 'Exercise library will appear here.';

  static const String bodyTabTitle = 'Body';
  static const String bodyTabBody = 'Body metrics will appear here.';
}
