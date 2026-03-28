// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_exercise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggedExerciseImpl _$$LoggedExerciseImplFromJson(Map<String, dynamic> json) =>
    _$LoggedExerciseImpl(
      name: json['name'] as String?,
      sets: json['sets'] == null
          ? const <LoggedSet>[]
          : loggedSetListFromJson(json['sets']),
    );

Map<String, dynamic> _$$LoggedExerciseImplToJson(
  _$LoggedExerciseImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'sets': loggedSetListToJson(instance.sets),
};
