// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logged_exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoggedExercise _$LoggedExerciseFromJson(Map<String, dynamic> json) {
  return _LoggedExercise.fromJson(json);
}

/// @nodoc
mixin _$LoggedExercise {
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
  List<LoggedSet> get sets => throw _privateConstructorUsedError;

  /// Serializes this LoggedExercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoggedExercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoggedExerciseCopyWith<LoggedExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedExerciseCopyWith<$Res> {
  factory $LoggedExerciseCopyWith(
    LoggedExercise value,
    $Res Function(LoggedExercise) then,
  ) = _$LoggedExerciseCopyWithImpl<$Res, LoggedExercise>;
  @useResult
  $Res call({
    String? name,
    @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
    List<LoggedSet> sets,
  });
}

/// @nodoc
class _$LoggedExerciseCopyWithImpl<$Res, $Val extends LoggedExercise>
    implements $LoggedExerciseCopyWith<$Res> {
  _$LoggedExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoggedExercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? sets = null}) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            sets: null == sets
                ? _value.sets
                : sets // ignore: cast_nullable_to_non_nullable
                      as List<LoggedSet>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoggedExerciseImplCopyWith<$Res>
    implements $LoggedExerciseCopyWith<$Res> {
  factory _$$LoggedExerciseImplCopyWith(
    _$LoggedExerciseImpl value,
    $Res Function(_$LoggedExerciseImpl) then,
  ) = __$$LoggedExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
    List<LoggedSet> sets,
  });
}

/// @nodoc
class __$$LoggedExerciseImplCopyWithImpl<$Res>
    extends _$LoggedExerciseCopyWithImpl<$Res, _$LoggedExerciseImpl>
    implements _$$LoggedExerciseImplCopyWith<$Res> {
  __$$LoggedExerciseImplCopyWithImpl(
    _$LoggedExerciseImpl _value,
    $Res Function(_$LoggedExerciseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoggedExercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = freezed, Object? sets = null}) {
    return _then(
      _$LoggedExerciseImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        sets: null == sets
            ? _value._sets
            : sets // ignore: cast_nullable_to_non_nullable
                  as List<LoggedSet>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggedExerciseImpl implements _LoggedExercise {
  const _$LoggedExerciseImpl({
    this.name,
    @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
    final List<LoggedSet> sets = const <LoggedSet>[],
  }) : _sets = sets;

  factory _$LoggedExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoggedExerciseImplFromJson(json);

  @override
  final String? name;
  final List<LoggedSet> _sets;
  @override
  @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
  List<LoggedSet> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  String toString() {
    return 'LoggedExercise(name: $name, sets: $sets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedExerciseImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._sets, _sets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    const DeepCollectionEquality().hash(_sets),
  );

  /// Create a copy of LoggedExercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedExerciseImplCopyWith<_$LoggedExerciseImpl> get copyWith =>
      __$$LoggedExerciseImplCopyWithImpl<_$LoggedExerciseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggedExerciseImplToJson(this);
  }
}

abstract class _LoggedExercise implements LoggedExercise {
  const factory _LoggedExercise({
    final String? name,
    @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
    final List<LoggedSet> sets,
  }) = _$LoggedExerciseImpl;

  factory _LoggedExercise.fromJson(Map<String, dynamic> json) =
      _$LoggedExerciseImpl.fromJson;

  @override
  String? get name;
  @override
  @JsonKey(fromJson: loggedSetListFromJson, toJson: loggedSetListToJson)
  List<LoggedSet> get sets;

  /// Create a copy of LoggedExercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedExerciseImplCopyWith<_$LoggedExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
