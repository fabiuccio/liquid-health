import 'package:postgrest/postgrest.dart';

import '../core/errors/app_exceptions.dart' show RepositoryException, SupabaseAuthException;
import '../models/user_profile.dart';
import '../services/supabase_service.dart';

/// Maps Supabase rows to [UserProfile] and translates transport errors.
class UserProfileRepository {
  UserProfileRepository(this._supabase);

  final SupabaseService _supabase;

  /// Returns the current user's profile, or `null` if no row exists yet.
  Future<UserProfile?> getActiveUserProfile() async {
    try {
      return await _supabase.fetchUserProfile();
    } on SupabaseAuthException catch (e, st) {
      throw RepositoryException('Auth error while loading profile', e, st);
    } on PostgrestException catch (e, st) {
      throw RepositoryException('Failed to load user profile', e, st);
    }
  }

  /// Persists profile fields for the signed-in user.
  Future<void> saveUserProfile(UserProfile profile) async {
    try {
      await _supabase.upsertUserProfile(profile);
    } on SupabaseAuthException catch (e, st) {
      throw RepositoryException('Auth error while saving profile', e, st);
    } on PostgrestException catch (e, st) {
      throw RepositoryException('Failed to save user profile', e, st);
    }
  }
}
