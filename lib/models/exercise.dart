import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

/// Exercise row embedded in [WorkoutSession.exercises] JSONB.
@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    String? name,
    int? sets,
    String? reps,
    double? weight,
    String? notes,
    @JsonKey(name: 'pe_note') String? peNote,
    @JsonKey(name: 'injury_flag') bool? injuryFlag,
    @JsonKey(name: 'equipment_type') String? equipmentType,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}

List<Exercise> exerciseListFromJson(Object? json) {
  if (json == null) {
    return <Exercise>[];
  }
  if (json is List) {
    return json
        .map(
          (Object? e) => Exercise.fromJson(
            Map<String, dynamic>.from(e! as Map<Object?, Object?>),
          ),
        )
        .toList();
  }
  throw FormatException('Expected JSON array for exercises');
}

Object? exerciseListToJson(List<Exercise>? list) {
  if (list == null) {
    return null;
  }
  return list.map((Exercise e) => e.toJson()).toList();
}
