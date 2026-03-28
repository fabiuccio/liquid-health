// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkoutLog _$WorkoutLogFromJson(Map<String, dynamic> json) {
  return _WorkoutLog.fromJson(json);
}

/// @nodoc
mixin _$WorkoutLog {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'exercises_logged',
    fromJson: loggedExerciseListFromJson,
    toJson: loggedExerciseListToJson,
  )
  List<LoggedExercise> get exercisesLogged =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'hip_score')
  int? get hipScore => throw _privateConstructorUsedError;
  String? get feeling => throw _privateConstructorUsedError;
  int? get rpe => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'biometrics_at_time')
  @JsonMapConverter()
  Map<String, Object?>? get biometricsAtTime =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_modifications')
  @JsonMapConverter()
  Map<String, Object?>? get aiModifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'week_number')
  int? get weekNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'periodization_phase')
  String? get periodizationPhase => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutLogCopyWith<WorkoutLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutLogCopyWith<$Res> {
  factory $WorkoutLogCopyWith(
    WorkoutLog value,
    $Res Function(WorkoutLog) then,
  ) = _$WorkoutLogCopyWithImpl<$Res, WorkoutLog>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(
      name: 'exercises_logged',
      fromJson: loggedExerciseListFromJson,
      toJson: loggedExerciseListToJson,
    )
    List<LoggedExercise> exercisesLogged,
    @JsonKey(name: 'hip_score') int? hipScore,
    String? feeling,
    int? rpe,
    String? notes,
    @JsonKey(name: 'biometrics_at_time')
    @JsonMapConverter()
    Map<String, Object?>? biometricsAtTime,
    @JsonKey(name: 'ai_modifications')
    @JsonMapConverter()
    Map<String, Object?>? aiModifications,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'periodization_phase') String? periodizationPhase,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$WorkoutLogCopyWithImpl<$Res, $Val extends WorkoutLog>
    implements $WorkoutLogCopyWith<$Res> {
  _$WorkoutLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? completedAt = freezed,
    Object? exercisesLogged = null,
    Object? hipScore = freezed,
    Object? feeling = freezed,
    Object? rpe = freezed,
    Object? notes = freezed,
    Object? biometricsAtTime = freezed,
    Object? aiModifications = freezed,
    Object? weekNumber = freezed,
    Object? periodizationPhase = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            sessionId: freezed == sessionId
                ? _value.sessionId
                : sessionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            completedAt: freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            exercisesLogged: null == exercisesLogged
                ? _value.exercisesLogged
                : exercisesLogged // ignore: cast_nullable_to_non_nullable
                      as List<LoggedExercise>,
            hipScore: freezed == hipScore
                ? _value.hipScore
                : hipScore // ignore: cast_nullable_to_non_nullable
                      as int?,
            feeling: freezed == feeling
                ? _value.feeling
                : feeling // ignore: cast_nullable_to_non_nullable
                      as String?,
            rpe: freezed == rpe
                ? _value.rpe
                : rpe // ignore: cast_nullable_to_non_nullable
                      as int?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            biometricsAtTime: freezed == biometricsAtTime
                ? _value.biometricsAtTime
                : biometricsAtTime // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
            aiModifications: freezed == aiModifications
                ? _value.aiModifications
                : aiModifications // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
            weekNumber: freezed == weekNumber
                ? _value.weekNumber
                : weekNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            periodizationPhase: freezed == periodizationPhase
                ? _value.periodizationPhase
                : periodizationPhase // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WorkoutLogImplCopyWith<$Res>
    implements $WorkoutLogCopyWith<$Res> {
  factory _$$WorkoutLogImplCopyWith(
    _$WorkoutLogImpl value,
    $Res Function(_$WorkoutLogImpl) then,
  ) = __$$WorkoutLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'session_id') String? sessionId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(
      name: 'exercises_logged',
      fromJson: loggedExerciseListFromJson,
      toJson: loggedExerciseListToJson,
    )
    List<LoggedExercise> exercisesLogged,
    @JsonKey(name: 'hip_score') int? hipScore,
    String? feeling,
    int? rpe,
    String? notes,
    @JsonKey(name: 'biometrics_at_time')
    @JsonMapConverter()
    Map<String, Object?>? biometricsAtTime,
    @JsonKey(name: 'ai_modifications')
    @JsonMapConverter()
    Map<String, Object?>? aiModifications,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'periodization_phase') String? periodizationPhase,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$WorkoutLogImplCopyWithImpl<$Res>
    extends _$WorkoutLogCopyWithImpl<$Res, _$WorkoutLogImpl>
    implements _$$WorkoutLogImplCopyWith<$Res> {
  __$$WorkoutLogImplCopyWithImpl(
    _$WorkoutLogImpl _value,
    $Res Function(_$WorkoutLogImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sessionId = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? completedAt = freezed,
    Object? exercisesLogged = null,
    Object? hipScore = freezed,
    Object? feeling = freezed,
    Object? rpe = freezed,
    Object? notes = freezed,
    Object? biometricsAtTime = freezed,
    Object? aiModifications = freezed,
    Object? weekNumber = freezed,
    Object? periodizationPhase = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$WorkoutLogImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        sessionId: freezed == sessionId
            ? _value.sessionId
            : sessionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        completedAt: freezed == completedAt
            ? _value.completedAt
            : completedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        exercisesLogged: null == exercisesLogged
            ? _value._exercisesLogged
            : exercisesLogged // ignore: cast_nullable_to_non_nullable
                  as List<LoggedExercise>,
        hipScore: freezed == hipScore
            ? _value.hipScore
            : hipScore // ignore: cast_nullable_to_non_nullable
                  as int?,
        feeling: freezed == feeling
            ? _value.feeling
            : feeling // ignore: cast_nullable_to_non_nullable
                  as String?,
        rpe: freezed == rpe
            ? _value.rpe
            : rpe // ignore: cast_nullable_to_non_nullable
                  as int?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        biometricsAtTime: freezed == biometricsAtTime
            ? _value._biometricsAtTime
            : biometricsAtTime // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
        aiModifications: freezed == aiModifications
            ? _value._aiModifications
            : aiModifications // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
        weekNumber: freezed == weekNumber
            ? _value.weekNumber
            : weekNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        periodizationPhase: freezed == periodizationPhase
            ? _value.periodizationPhase
            : periodizationPhase // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutLogImpl implements _WorkoutLog {
  const _$WorkoutLogImpl({
    this.id,
    @JsonKey(name: 'session_id') this.sessionId,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) this.date,
    @JsonKey(name: 'completed_at') this.completedAt,
    @JsonKey(
      name: 'exercises_logged',
      fromJson: loggedExerciseListFromJson,
      toJson: loggedExerciseListToJson,
    )
    final List<LoggedExercise> exercisesLogged = const <LoggedExercise>[],
    @JsonKey(name: 'hip_score') this.hipScore,
    this.feeling,
    this.rpe,
    this.notes,
    @JsonKey(name: 'biometrics_at_time')
    @JsonMapConverter()
    final Map<String, Object?>? biometricsAtTime,
    @JsonKey(name: 'ai_modifications')
    @JsonMapConverter()
    final Map<String, Object?>? aiModifications,
    @JsonKey(name: 'week_number') this.weekNumber,
    @JsonKey(name: 'periodization_phase') this.periodizationPhase,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _exercisesLogged = exercisesLogged,
       _biometricsAtTime = biometricsAtTime,
       _aiModifications = aiModifications;

  factory _$WorkoutLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutLogImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'session_id')
  final String? sessionId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  final DateTime? date;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  final List<LoggedExercise> _exercisesLogged;
  @override
  @JsonKey(
    name: 'exercises_logged',
    fromJson: loggedExerciseListFromJson,
    toJson: loggedExerciseListToJson,
  )
  List<LoggedExercise> get exercisesLogged {
    if (_exercisesLogged is EqualUnmodifiableListView) return _exercisesLogged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercisesLogged);
  }

  @override
  @JsonKey(name: 'hip_score')
  final int? hipScore;
  @override
  final String? feeling;
  @override
  final int? rpe;
  @override
  final String? notes;
  final Map<String, Object?>? _biometricsAtTime;
  @override
  @JsonKey(name: 'biometrics_at_time')
  @JsonMapConverter()
  Map<String, Object?>? get biometricsAtTime {
    final value = _biometricsAtTime;
    if (value == null) return null;
    if (_biometricsAtTime is EqualUnmodifiableMapView) return _biometricsAtTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, Object?>? _aiModifications;
  @override
  @JsonKey(name: 'ai_modifications')
  @JsonMapConverter()
  Map<String, Object?>? get aiModifications {
    final value = _aiModifications;
    if (value == null) return null;
    if (_aiModifications is EqualUnmodifiableMapView) return _aiModifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'week_number')
  final int? weekNumber;
  @override
  @JsonKey(name: 'periodization_phase')
  final String? periodizationPhase;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WorkoutLog(id: $id, sessionId: $sessionId, userId: $userId, date: $date, completedAt: $completedAt, exercisesLogged: $exercisesLogged, hipScore: $hipScore, feeling: $feeling, rpe: $rpe, notes: $notes, biometricsAtTime: $biometricsAtTime, aiModifications: $aiModifications, weekNumber: $weekNumber, periodizationPhase: $periodizationPhase, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutLogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            const DeepCollectionEquality().equals(
              other._exercisesLogged,
              _exercisesLogged,
            ) &&
            (identical(other.hipScore, hipScore) ||
                other.hipScore == hipScore) &&
            (identical(other.feeling, feeling) || other.feeling == feeling) &&
            (identical(other.rpe, rpe) || other.rpe == rpe) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            const DeepCollectionEquality().equals(
              other._biometricsAtTime,
              _biometricsAtTime,
            ) &&
            const DeepCollectionEquality().equals(
              other._aiModifications,
              _aiModifications,
            ) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.periodizationPhase, periodizationPhase) ||
                other.periodizationPhase == periodizationPhase) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    sessionId,
    userId,
    date,
    completedAt,
    const DeepCollectionEquality().hash(_exercisesLogged),
    hipScore,
    feeling,
    rpe,
    notes,
    const DeepCollectionEquality().hash(_biometricsAtTime),
    const DeepCollectionEquality().hash(_aiModifications),
    weekNumber,
    periodizationPhase,
    createdAt,
  );

  /// Create a copy of WorkoutLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutLogImplCopyWith<_$WorkoutLogImpl> get copyWith =>
      __$$WorkoutLogImplCopyWithImpl<_$WorkoutLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutLogImplToJson(this);
  }
}

abstract class _WorkoutLog implements WorkoutLog {
  const factory _WorkoutLog({
    final String? id,
    @JsonKey(name: 'session_id') final String? sessionId,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
    final DateTime? date,
    @JsonKey(name: 'completed_at') final DateTime? completedAt,
    @JsonKey(
      name: 'exercises_logged',
      fromJson: loggedExerciseListFromJson,
      toJson: loggedExerciseListToJson,
    )
    final List<LoggedExercise> exercisesLogged,
    @JsonKey(name: 'hip_score') final int? hipScore,
    final String? feeling,
    final int? rpe,
    final String? notes,
    @JsonKey(name: 'biometrics_at_time')
    @JsonMapConverter()
    final Map<String, Object?>? biometricsAtTime,
    @JsonKey(name: 'ai_modifications')
    @JsonMapConverter()
    final Map<String, Object?>? aiModifications,
    @JsonKey(name: 'week_number') final int? weekNumber,
    @JsonKey(name: 'periodization_phase') final String? periodizationPhase,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$WorkoutLogImpl;

  factory _WorkoutLog.fromJson(Map<String, dynamic> json) =
      _$WorkoutLogImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'session_id')
  String? get sessionId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(
    name: 'exercises_logged',
    fromJson: loggedExerciseListFromJson,
    toJson: loggedExerciseListToJson,
  )
  List<LoggedExercise> get exercisesLogged;
  @override
  @JsonKey(name: 'hip_score')
  int? get hipScore;
  @override
  String? get feeling;
  @override
  int? get rpe;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'biometrics_at_time')
  @JsonMapConverter()
  Map<String, Object?>? get biometricsAtTime;
  @override
  @JsonKey(name: 'ai_modifications')
  @JsonMapConverter()
  Map<String, Object?>? get aiModifications;
  @override
  @JsonKey(name: 'week_number')
  int? get weekNumber;
  @override
  @JsonKey(name: 'periodization_phase')
  String? get periodizationPhase;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of WorkoutLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutLogImplCopyWith<_$WorkoutLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
