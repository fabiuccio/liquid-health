// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logged_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoggedSetImpl _$$LoggedSetImplFromJson(Map<String, dynamic> json) =>
    _$LoggedSetImpl(
      weight: (json['weight'] as num?)?.toDouble(),
      reps: (json['reps'] as num?)?.toInt(),
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$LoggedSetImplToJson(_$LoggedSetImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'reps': instance.reps,
      'done': instance.done,
    };
