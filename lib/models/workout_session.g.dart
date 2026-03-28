// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutSessionImpl _$$WorkoutSessionImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutSessionImpl(
      id: json['id'] as String?,
      planId: json['plan_id'] as String?,
      userId: json['user_id'] as String?,
      sessionType: json['session_type'] as String?,
      sessionVariant: json['session_variant'] as String?,
      weekNumber: (json['week_number'] as num?)?.toInt(),
      dayOfWeek: (json['day_of_week'] as num?)?.toInt(),
      exercises: json['exercises'] == null
          ? const <Exercise>[]
          : exerciseListFromJson(json['exercises']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WorkoutSessionImplToJson(
  _$WorkoutSessionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'plan_id': instance.planId,
  'user_id': instance.userId,
  'session_type': instance.sessionType,
  'session_variant': instance.sessionVariant,
  'week_number': instance.weekNumber,
  'day_of_week': instance.dayOfWeek,
  'exercises': exerciseListToJson(instance.exercises),
  'created_at': instance.createdAt?.toIso8601String(),
};
