// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkoutSession _$WorkoutSessionFromJson(Map<String, dynamic> json) {
  return _WorkoutSession.fromJson(json);
}

/// @nodoc
mixin _$WorkoutSession {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_id')
  String? get planId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_type')
  String? get sessionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_variant')
  String? get sessionVariant => throw _privateConstructorUsedError;
  @JsonKey(name: 'week_number')
  int? get weekNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_of_week')
  int? get dayOfWeek => throw _privateConstructorUsedError;
  @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
  List<Exercise> get exercises => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutSessionCopyWith<WorkoutSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutSessionCopyWith<$Res> {
  factory $WorkoutSessionCopyWith(
    WorkoutSession value,
    $Res Function(WorkoutSession) then,
  ) = _$WorkoutSessionCopyWithImpl<$Res, WorkoutSession>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'plan_id') String? planId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'session_type') String? sessionType,
    @JsonKey(name: 'session_variant') String? sessionVariant,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'day_of_week') int? dayOfWeek,
    @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
    List<Exercise> exercises,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$WorkoutSessionCopyWithImpl<$Res, $Val extends WorkoutSession>
    implements $WorkoutSessionCopyWith<$Res> {
  _$WorkoutSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planId = freezed,
    Object? userId = freezed,
    Object? sessionType = freezed,
    Object? sessionVariant = freezed,
    Object? weekNumber = freezed,
    Object? dayOfWeek = freezed,
    Object? exercises = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            planId: freezed == planId
                ? _value.planId
                : planId // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            sessionType: freezed == sessionType
                ? _value.sessionType
                : sessionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            sessionVariant: freezed == sessionVariant
                ? _value.sessionVariant
                : sessionVariant // ignore: cast_nullable_to_non_nullable
                      as String?,
            weekNumber: freezed == weekNumber
                ? _value.weekNumber
                : weekNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            dayOfWeek: freezed == dayOfWeek
                ? _value.dayOfWeek
                : dayOfWeek // ignore: cast_nullable_to_non_nullable
                      as int?,
            exercises: null == exercises
                ? _value.exercises
                : exercises // ignore: cast_nullable_to_non_nullable
                      as List<Exercise>,
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
abstract class _$$WorkoutSessionImplCopyWith<$Res>
    implements $WorkoutSessionCopyWith<$Res> {
  factory _$$WorkoutSessionImplCopyWith(
    _$WorkoutSessionImpl value,
    $Res Function(_$WorkoutSessionImpl) then,
  ) = __$$WorkoutSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'plan_id') String? planId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'session_type') String? sessionType,
    @JsonKey(name: 'session_variant') String? sessionVariant,
    @JsonKey(name: 'week_number') int? weekNumber,
    @JsonKey(name: 'day_of_week') int? dayOfWeek,
    @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
    List<Exercise> exercises,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$WorkoutSessionImplCopyWithImpl<$Res>
    extends _$WorkoutSessionCopyWithImpl<$Res, _$WorkoutSessionImpl>
    implements _$$WorkoutSessionImplCopyWith<$Res> {
  __$$WorkoutSessionImplCopyWithImpl(
    _$WorkoutSessionImpl _value,
    $Res Function(_$WorkoutSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? planId = freezed,
    Object? userId = freezed,
    Object? sessionType = freezed,
    Object? sessionVariant = freezed,
    Object? weekNumber = freezed,
    Object? dayOfWeek = freezed,
    Object? exercises = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$WorkoutSessionImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        planId: freezed == planId
            ? _value.planId
            : planId // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        sessionType: freezed == sessionType
            ? _value.sessionType
            : sessionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        sessionVariant: freezed == sessionVariant
            ? _value.sessionVariant
            : sessionVariant // ignore: cast_nullable_to_non_nullable
                  as String?,
        weekNumber: freezed == weekNumber
            ? _value.weekNumber
            : weekNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        dayOfWeek: freezed == dayOfWeek
            ? _value.dayOfWeek
            : dayOfWeek // ignore: cast_nullable_to_non_nullable
                  as int?,
        exercises: null == exercises
            ? _value._exercises
            : exercises // ignore: cast_nullable_to_non_nullable
                  as List<Exercise>,
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
class _$WorkoutSessionImpl implements _WorkoutSession {
  const _$WorkoutSessionImpl({
    this.id,
    @JsonKey(name: 'plan_id') this.planId,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'session_type') this.sessionType,
    @JsonKey(name: 'session_variant') this.sessionVariant,
    @JsonKey(name: 'week_number') this.weekNumber,
    @JsonKey(name: 'day_of_week') this.dayOfWeek,
    @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
    final List<Exercise> exercises = const <Exercise>[],
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _exercises = exercises;

  factory _$WorkoutSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutSessionImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'plan_id')
  final String? planId;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'session_type')
  final String? sessionType;
  @override
  @JsonKey(name: 'session_variant')
  final String? sessionVariant;
  @override
  @JsonKey(name: 'week_number')
  final int? weekNumber;
  @override
  @JsonKey(name: 'day_of_week')
  final int? dayOfWeek;
  final List<Exercise> _exercises;
  @override
  @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
  List<Exercise> get exercises {
    if (_exercises is EqualUnmodifiableListView) return _exercises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exercises);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WorkoutSession(id: $id, planId: $planId, userId: $userId, sessionType: $sessionType, sessionVariant: $sessionVariant, weekNumber: $weekNumber, dayOfWeek: $dayOfWeek, exercises: $exercises, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.sessionType, sessionType) ||
                other.sessionType == sessionType) &&
            (identical(other.sessionVariant, sessionVariant) ||
                other.sessionVariant == sessionVariant) &&
            (identical(other.weekNumber, weekNumber) ||
                other.weekNumber == weekNumber) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            const DeepCollectionEquality().equals(
              other._exercises,
              _exercises,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    planId,
    userId,
    sessionType,
    sessionVariant,
    weekNumber,
    dayOfWeek,
    const DeepCollectionEquality().hash(_exercises),
    createdAt,
  );

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutSessionImplCopyWith<_$WorkoutSessionImpl> get copyWith =>
      __$$WorkoutSessionImplCopyWithImpl<_$WorkoutSessionImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutSessionImplToJson(this);
  }
}

abstract class _WorkoutSession implements WorkoutSession {
  const factory _WorkoutSession({
    final String? id,
    @JsonKey(name: 'plan_id') final String? planId,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'session_type') final String? sessionType,
    @JsonKey(name: 'session_variant') final String? sessionVariant,
    @JsonKey(name: 'week_number') final int? weekNumber,
    @JsonKey(name: 'day_of_week') final int? dayOfWeek,
    @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
    final List<Exercise> exercises,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$WorkoutSessionImpl;

  factory _WorkoutSession.fromJson(Map<String, dynamic> json) =
      _$WorkoutSessionImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'plan_id')
  String? get planId;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'session_type')
  String? get sessionType;
  @override
  @JsonKey(name: 'session_variant')
  String? get sessionVariant;
  @override
  @JsonKey(name: 'week_number')
  int? get weekNumber;
  @override
  @JsonKey(name: 'day_of_week')
  int? get dayOfWeek;
  @override
  @JsonKey(fromJson: exerciseListFromJson, toJson: exerciseListToJson)
  List<Exercise> get exercises;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of WorkoutSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutSessionImplCopyWith<_$WorkoutSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
