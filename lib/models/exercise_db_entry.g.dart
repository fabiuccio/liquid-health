// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_db_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExerciseDbEntryImpl _$$ExerciseDbEntryImplFromJson(
  Map<String, dynamic> json,
) => _$ExerciseDbEntryImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  bodyPart: json['bodyPart'] as String,
  equipment: json['equipment'] as String,
  target: json['target'] as String,
  gifUrl: json['gifUrl'] as String,
  description: json['description'] as String? ?? '',
  difficulty: json['difficulty'] as String? ?? '',
  instructions:
      (json['instructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  secondaryMuscles:
      (json['secondaryMuscles'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
);

Map<String, dynamic> _$$ExerciseDbEntryImplToJson(
  _$ExerciseDbEntryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'bodyPart': instance.bodyPart,
  'equipment': instance.equipment,
  'target': instance.target,
  'gifUrl': instance.gifUrl,
  'description': instance.description,
  'difficulty': instance.difficulty,
  'instructions': instance.instructions,
  'secondaryMuscles': instance.secondaryMuscles,
};
