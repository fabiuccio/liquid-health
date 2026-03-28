// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutLogImpl _$$WorkoutLogImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutLogImpl(
      id: json['id'] as String?,
      sessionId: json['session_id'] as String?,
      userId: json['user_id'] as String?,
      date: dateOnlyFromJson(json['date']),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      exercisesLogged: json['exercises_logged'] == null
          ? const <LoggedExercise>[]
          : loggedExerciseListFromJson(json['exercises_logged']),
      hipScore: (json['hip_score'] as num?)?.toInt(),
      feeling: json['feeling'] as String?,
      rpe: (json['rpe'] as num?)?.toInt(),
      notes: json['notes'] as String?,
      biometricsAtTime: const JsonMapConverter().fromJson(
        json['biometrics_at_time'],
      ),
      aiModifications: const JsonMapConverter().fromJson(
        json['ai_modifications'],
      ),
      weekNumber: (json['week_number'] as num?)?.toInt(),
      periodizationPhase: json['periodization_phase'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WorkoutLogImplToJson(
  _$WorkoutLogImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'session_id': instance.sessionId,
  'user_id': instance.userId,
  'date': dateOnlyToJson(instance.date),
  'completed_at': instance.completedAt?.toIso8601String(),
  'exercises_logged': loggedExerciseListToJson(instance.exercisesLogged),
  'hip_score': instance.hipScore,
  'feeling': instance.feeling,
  'rpe': instance.rpe,
  'notes': instance.notes,
  'biometrics_at_time': const JsonMapConverter().toJson(
    instance.biometricsAtTime,
  ),
  'ai_modifications': const JsonMapConverter().toJson(instance.aiModifications),
  'week_number': instance.weekNumber,
  'periodization_phase': instance.periodizationPhase,
  'created_at': instance.createdAt?.toIso8601String(),
};
