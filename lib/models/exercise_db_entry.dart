import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_db_entry.freezed.dart';
part 'exercise_db_entry.g.dart';

/// Single exercise document from ExerciseDB (RapidAPI), distinct from domain [Exercise].
@freezed
class ExerciseDbEntry with _$ExerciseDbEntry {
  const factory ExerciseDbEntry({    required String id,
    required String name,
    @JsonKey(name: 'bodyPart') required String bodyPart,
    required String equipment,
    required String target,
    @JsonKey(name: 'gifUrl') required String gifUrl,
    @Default('') String description,
    @Default('') String difficulty,
    @Default(<String>[]) List<String> instructions,
    @JsonKey(name: 'secondaryMuscles') @Default(<String>[]) List<String> secondaryMuscles,
  }) = _ExerciseDbEntry;

  factory ExerciseDbEntry.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDbEntryFromJson(json);
}
