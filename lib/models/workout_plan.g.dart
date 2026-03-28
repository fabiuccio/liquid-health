// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutPlanImpl _$$WorkoutPlanImplFromJson(Map<String, dynamic> json) =>
    _$WorkoutPlanImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      generatedAt: json['generated_at'] == null
          ? null
          : DateTime.parse(json['generated_at'] as String),
      weekStartDate: dateOnlyFromJson(json['week_start_date']),
      planJson: const JsonMapConverter().fromJson(json['plan_json']),
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WorkoutPlanImplToJson(_$WorkoutPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'generated_at': instance.generatedAt?.toIso8601String(),
      'week_start_date': dateOnlyToJson(instance.weekStartDate),
      'plan_json': const JsonMapConverter().toJson(instance.planJson),
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };
