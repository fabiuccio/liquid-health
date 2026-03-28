// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      name: json['name'] as String?,
      sets: (json['sets'] as num?)?.toInt(),
      reps: json['reps'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      peNote: json['pe_note'] as String?,
      injuryFlag: json['injury_flag'] as bool?,
      equipmentType: json['equipment_type'] as String?,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sets': instance.sets,
      'reps': instance.reps,
      'weight': instance.weight,
      'notes': instance.notes,
      'pe_note': instance.peNote,
      'injury_flag': instance.injuryFlag,
      'equipment_type': instance.equipmentType,
    };
