import 'package:freezed_annotation/freezed_annotation.dart';

import 'exercise.dart';

part 'workout_session.freezed.dart';
part 'workout_session.g.dart';

/// Row in `workout_sessions`.
@freezed
class WorkoutSession with _$WorkoutSession {
  const factory WorkoutSession({
    String? id,
    @JsonKey(name: 'plan_id') String? planId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'session_type') String? sessionType,
    @JsonKey(name: 'session_variant') String? sessionVariant,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'day_of_week') int? dayOfWeek,
    @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
    @Default(<Exercise>[])
    List<Exercise> exercises,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _WorkoutSession;

  factory WorkoutSession.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSessionFromJson(json);
}
