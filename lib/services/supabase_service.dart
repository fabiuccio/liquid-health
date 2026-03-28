import 'package:supabase_flutter/supabase_flutter.dart';

import '../core/errors/app_exceptions.dart';
import '../models/daily_readiness.dart';
import '../models/life_event.dart';
import '../models/user_profile.dart';
import '../models/workout_log.dart';
import '../models/workout_plan.dart';
import '../models/workout_session.dart';

/// Supabase client wrapper: authentication and CRUD entry points.
///
/// Methods document intended usage; implementations throw on failure rather
/// than returning ambiguous nulls for errors.
class SupabaseService {
  SupabaseService(this._client);

  final SupabaseClient _client;

  SupabaseClient get client => _client;

  /// Ensures there is a session (anonymous) so RLS policies on `user_id` apply.
  Future<void> ensureAuthenticated() async {
    if (_client.auth.currentSession != null) {
      return;
    }
    try {
      final AuthResponse response = await _client.auth.signInAnonymously();
      if (response.session == null) {
        throw SupabaseAuthException(
          'Anonymous sign-in returned no session',
          response,
        );
      }
    } on AuthException catch (e, st) {
      throw SupabaseAuthException(e.message, e, st);
    } on Object catch (e, st) {
      throw SupabaseAuthException('Anonymous sign-in failed', e, st);
    }
  }

  /// Loads the signed-in user's profile row, or `null` if none exists.
  Future<UserProfile?> fetchUserProfile() async {
    final User? user = _client.auth.currentUser;
    if (user == null) {
      throw SupabaseAuthException('No authenticated user when loading profile');
    }
    final Map<String, dynamic>? row = await _client
        .from('user_profiles')
        .select()
        .eq('user_id', user.id)
        .maybeSingle();
    if (row == null) {
      return null;
    }
    return UserProfile.fromJson(Map<String, dynamic>.from(row));
  }

  /// Inserts or updates the current user's profile.
  Future<void> upsertUserProfile(UserProfile profile) async {
    final User? user = _client.auth.currentUser;
    if (user == null) {
      throw SupabaseAuthException('No authenticated user when saving profile');
    }
    final Map<String, dynamic> payload = profile.toJson();
    payload['user_id'] = user.id;
    payload['updated_at'] = DateTime.now().toUtc().toIso8601String();
    await _client.from('user_profiles').upsert(payload);
  }

  /// Inserts a workout plan row for the current user.
  Future<void> insertWorkoutPlan(WorkoutPlan plan) async {
    final User? user = _client.auth.currentUser;
    if (user == null) {
      throw SupabaseAuthException('No authenticated user when saving plan');
    }
    final Map<String, dynamic> payload = plan.toJson();
    payload['user_id'] = user.id;
    await _client.from('workout_plans').insert(payload);
  }

  /// Inserts a workout session row.
  Future<void> insertWorkoutSession(WorkoutSession session) async {
    await _client.from('workout_sessions').insert(session.toJson());
  }

  /// Inserts a workout log row.
  Future<void> insertWorkoutLog(WorkoutLog log) async {
    await _client.from('workout_logs').insert(log.toJson());
  }

  /// Inserts a life event row.
  Future<void> insertLifeEvent(LifeEvent event) async {
    await _client.from('life_events').insert(event.toJson());
  }

  /// Inserts or updates daily readiness (caller chooses upsert key).
  Future<void> upsertDailyReadiness(DailyReadiness readiness) async {
    await _client.from('daily_readiness').upsert(readiness.toJson());
  }
}
