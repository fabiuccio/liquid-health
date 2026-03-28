// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String?,
      userId: json['user_id'] as String?,
      primaryGoal: json['primary_goal'] as String?,
      aestheticGoal: json['aesthetic_goal'] as String?,
      timeline: json['timeline'] as String?,
      daysPerWeek: (json['days_per_week'] as num?)?.toInt(),
      timeOfDay: json['time_of_day'] as String?,
      workoutLengthMins: (json['workout_length_mins'] as num?)?.toInt(),
      location: json['location'] as String?,
      equipmentInventory: json['equipment_inventory'] == null
          ? const <String>[]
          : stringListFromJson(json['equipment_inventory']),
      age: (json['age'] as num?)?.toInt(),
      weightKg: (json['weight_kg'] as num?)?.toDouble(),
      heightCm: (json['height_cm'] as num?)?.toDouble(),
      sex: json['sex'] as String?,
      injuries: json['injuries'] == null
          ? const <String>[]
          : stringListFromJson(json['injuries']),
      medicalNotes: json['medical_notes'] as String?,
      experienceLevel: json['experience_level'] as String?,
      sleepQualityBaseline: json['sleep_quality_baseline'] as String?,
      stressBaseline: json['stress_baseline'] as String?,
      hasWearable: json['has_wearable'] as bool?,
      wearableType: json['wearable_type'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'primary_goal': instance.primaryGoal,
      'aesthetic_goal': instance.aestheticGoal,
      'timeline': instance.timeline,
      'days_per_week': instance.daysPerWeek,
      'time_of_day': instance.timeOfDay,
      'workout_length_mins': instance.workoutLengthMins,
      'location': instance.location,
      'equipment_inventory': stringListToJson(instance.equipmentInventory),
      'age': instance.age,
      'weight_kg': instance.weightKg,
      'height_cm': instance.heightCm,
      'sex': instance.sex,
      'injuries': stringListToJson(instance.injuries),
      'medical_notes': instance.medicalNotes,
      'experience_level': instance.experienceLevel,
      'sleep_quality_baseline': instance.sleepQualityBaseline,
      'stress_baseline': instance.stressBaseline,
      'has_wearable': instance.hasWearable,
      'wearable_type': instance.wearableType,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
