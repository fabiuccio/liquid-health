import 'package:freezed_annotation/freezed_annotation.dart';

part 'logged_set.freezed.dart';
part 'logged_set.g.dart';

/// One performed set stored in [WorkoutLog.exercisesLogged].
@freezed
class LoggedSet with _$LoggedSet {
  const factory LoggedSet({
    double? weight,
    int? reps,
    @Default(false) bool done,
  }) = _LoggedSet;

  factory LoggedSet.fromJson(Map<String, dynamic> json) =>
      _$LoggedSetFromJson(json);
}
