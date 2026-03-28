// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily_readiness.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DailyReadinessImpl _$$DailyReadinessImplFromJson(Map<String, dynamic> json) =>
    _$DailyReadinessImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      date: dateOnlyFromJson(json['date']),
      sleepHours: (json['sleep_hours'] as num?)?.toDouble(),
      sleepQuality: json['sleep_quality'] as String?,
      restingHr: (json['resting_hr'] as num?)?.toInt(),
      hrv: (json['hrv'] as num?)?.toInt(),
      steps: (json['steps'] as num?)?.toInt(),
      mood: json['mood'] as String?,
      readinessScore: json['readiness_score'] as String?,
      aiFlags: const JsonMapConverter().fromJson(json['ai_flags']),
      source: json['source'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$DailyReadinessImplToJson(
  _$DailyReadinessImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'user_id': instance.userId,
  'date': dateOnlyToJson(instance.date),
  'sleep_hours': instance.sleepHours,
  'sleep_quality': instance.sleepQuality,
  'resting_hr': instance.restingHr,
  'hrv': instance.hrv,
  'steps': instance.steps,
  'mood': instance.mood,
  'readiness_score': instance.readinessScore,
  'ai_flags': const JsonMapConverter().toJson(instance.aiFlags),
  'source': instance.source,
  'created_at': instance.createdAt?.toIso8601String(),
};
