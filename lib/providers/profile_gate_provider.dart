import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/constants/api_keys.dart';
import 'service_providers.dart';

/// High-level app gate after API keys are present.
enum ProfileGate {
  /// No `user_profiles` row for the signed-in user.
  needsOnboarding,

  /// Profile exists; main shell is allowed.
  ready,
}

/// Resolves onboarding vs. main app once Supabase keys and Gemini key exist.
///
/// Throws if called while [ApiKeys.hasAllKeys] is false — the router must
/// short-circuit on missing keys before reading this provider.
final profileGateProvider = FutureProvider<ProfileGate>((ref) async {
  if (!ApiKeys.hasAllKeys) {
    throw StateError('profileGateProvider requires all API keys');
  }
  await ref.read(supabaseServiceProvider).ensureAuthenticated();
  final profile = await ref.read(userProfileRepositoryProvider).getActiveUserProfile();
  if (profile == null) {
    return ProfileGate.needsOnboarding;
  }
  return ProfileGate.ready;
});
