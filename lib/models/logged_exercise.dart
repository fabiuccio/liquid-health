import 'package:freezed_annotation/freezed_annotation.dart';

import 'logged_set.dart';

part 'logged_exercise.freezed.dart';
part 'logged_exercise.g.dart';

/// Logged exercise block inside [WorkoutLog.exercisesLogged] JSONB.
@freezed
class LoggedExercise with _$LoggedExercise {
  const factory LoggedExercise({
    String? name,
    @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
    @Default(<LoggedSet>[])
    List<LoggedSet> sets,
  }) = _LoggedExercise;

  factory LoggedExercise.fromJson(Map<String, dynamic> json) =>
      _$LoggedExerciseFromJson(json);
}

List<LoggedSet> loggedSetListFromJson(Object? json) {
  if (json == null) {
    return <LoggedSet>[];
  }
  if (json is List) {
    return json
        .map(
          (Object? e) => LoggedSet.fromJson(
            Map<String, dynamic>.from(e! as Map<Object?, Object?>),
          ),
        )
        .toList();
  }
  throw FormatException('Expected JSON array for logged sets');
}

Object? loggedSetListToJson(List<LoggedSet> list) {
  return list.map((LoggedSet s) => s.toJson()).toList();
}

List<LoggedExercise> loggedExerciseListFromJson(Object? json) {
  if (json == null) {
    return <LoggedExercise>[];
  }
  if (json is List) {
    return json
        .map(
          (Object? e) => LoggedExercise.fromJson(
            Map<String, dynamic>.from(e! as Map<Object?, Object?>),
          ),
        )
        .toList();
  }
  throw FormatException('Expected JSON array for logged exercises');
}

Object? loggedExerciseListToJson(List<LoggedExercise>? list) {
  if (list == null) {
    return null;
  }
  return list.map((LoggedExercise e) => e.toJson()).toList();
}
