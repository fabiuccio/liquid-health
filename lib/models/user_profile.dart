import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/json/json_converters.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

/// Row in `user_profiles` (see `supabase/migrations`).
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'primary_goal') String? primaryGoal,
    @JsonKey(name: 'aesthetic_goal') String? aestheticGoal,
    String? timeline,
    @JsonKey(name: 'days_per_week') int? daysPerWeek,
    @JsonKey(name: 'time_of_day') String? timeOfDay,
    @JsonKey(name: 'workout_length_mins') int? workoutLengthMins,
    String? location,
    @JsonKey(
      name: 'equipment_inventory',
      fromJson: stringListFromJson,
      toJson: stringListToJson,
    )
    @Default(<String>[])
    List<String> equipmentInventory,
    int? age,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'height_cm') double? heightCm,
    String? sex,
    @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
    @Default(<String>[])
    List<String> injuries,
    @JsonKey(name: 'medical_notes') String? medicalNotes,
    @JsonKey(name: 'experience_level') String? experienceLevel,
    @JsonKey(name: 'sleep_quality_baseline') String? sleepQualityBaseline,
    @JsonKey(name: 'stress_baseline') String? stressBaseline,
    @JsonKey(name: 'has_wearable') bool? hasWearable,
    @JsonKey(name: 'wearable_type') String? wearableType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
