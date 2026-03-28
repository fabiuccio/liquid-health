import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/json/json_converters.dart';
import '../core/json/json_map.dart';
import 'logged_exercise.dart';

part 'workout_log.freezed.dart';
part 'workout_log.g.dart';

/// Row in `workout_logs`.
@freezed
class WorkoutLog with _$WorkoutLog {
  const factory WorkoutLog({
    String? id,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(
      name: 'exercises_logged',
      fromJson: loggedExerciseListFromJson,
      toJson: loggedExerciseListToJson,
    )
    @Default(<LoggedExercise>[])
    List<LoggedExercise> exercisesLogged,
    @JsonKey(name: 'hip_score') int? hipScore,
    String? feeling,
    int? rpe,
    String? notes,
    @JsonKey(name: 'biometrics_at_time') @JsonMapConverter() JsonMap? biometricsAtTime,
    @JsonKey(name: 'ai_modifications') @JsonMapConverter() JsonMap? aiModifications,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'periodization_phase') String? periodizationPhase,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _WorkoutLog;

  factory WorkoutLog.fromJson(Map<String, dynamic> json) =>
      _$WorkoutLogFromJson(json);
}
