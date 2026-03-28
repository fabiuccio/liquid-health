// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'life_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LifeEventImpl _$$LifeEventImplFromJson(Map<String, dynamic> json) =>
    _$LifeEventImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      date: dateOnlyFromJson(json['date']),
      eventType: json['event_type'] as String?,
      description: json['description'] as String?,
      aiRecommendation: const JsonMapConverter().fromJson(
        json['ai_recommendation'],
      ),
      accepted: json['accepted'] as bool? ?? false,
      revisedWeek: const JsonMapConverter().fromJson(json['revised_week']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$LifeEventImplToJson(_$LifeEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'date': dateOnlyToJson(instance.date),
      'event_type': instance.eventType,
      'description': instance.description,
      'ai_recommendation': const JsonMapConverter().toJson(
        instance.aiRecommendation,
      ),
      'accepted': instance.accepted,
      'revised_week': const JsonMapConverter().toJson(instance.revisedWeek),
      'created_at': instance.createdAt?.toIso8601String(),
    };
