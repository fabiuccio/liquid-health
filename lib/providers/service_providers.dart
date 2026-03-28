import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../repositories/user_profile_repository.dart';
import '../services/exercise_db_service.dart';
import '../services/gemini_service.dart';
import '../services/health_service.dart';
import '../services/supabase_service.dart';

/// Supabase-backed API surface.
final supabaseServiceProvider = Provider<SupabaseService>((ref) {
  return SupabaseService(Supabase.instance.client);
});

/// Gemini client for AI features.
final geminiServiceProvider = Provider<GeminiService>((ref) {
  return GeminiService();
});

/// Health Connect / HealthKit bridge.
final healthServiceProvider = Provider<HealthService>((ref) {
  return HealthService();
});

/// ExerciseDB RapidAPI client.
final exerciseDbServiceProvider = Provider<ExerciseDbService>((ref) {
  return ExerciseDbService();
});

/// Repository for [UserProfile] persistence.
final userProfileRepositoryProvider = Provider<UserProfileRepository>((ref) {
  return UserProfileRepository(ref.watch(supabaseServiceProvider));
});
