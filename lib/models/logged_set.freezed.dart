// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logged_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoggedSet _$LoggedSetFromJson(Map<String, dynamic> json) {
  return _LoggedSet.fromJson(json);
}

/// @nodoc
mixin _$LoggedSet {
  double? get weight => throw _privateConstructorUsedError;
  int? get reps => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  /// Serializes this LoggedSet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoggedSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoggedSetCopyWith<LoggedSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedSetCopyWith<$Res> {
  factory $LoggedSetCopyWith(LoggedSet value, $Res Function(LoggedSet) then) =
      _$LoggedSetCopyWithImpl<$Res, LoggedSet>;
  @useResult
  $Res call({double? weight, int? reps, bool done});
}

/// @nodoc
class _$LoggedSetCopyWithImpl<$Res, $Val extends LoggedSet>
    implements $LoggedSetCopyWith<$Res> {
  _$LoggedSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoggedSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? reps = freezed,
    Object? done = null,
  }) {
    return _then(
      _value.copyWith(
            weight: freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as double?,
            reps: freezed == reps
                ? _value.reps
                : reps // ignore: cast_nullable_to_non_nullable
                      as int?,
            done: null == done
                ? _value.done
                : done // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoggedSetImplCopyWith<$Res>
    implements $LoggedSetCopyWith<$Res> {
  factory _$$LoggedSetImplCopyWith(
    _$LoggedSetImpl value,
    $Res Function(_$LoggedSetImpl) then,
  ) = __$$LoggedSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? weight, int? reps, bool done});
}

/// @nodoc
class __$$LoggedSetImplCopyWithImpl<$Res>
    extends _$LoggedSetCopyWithImpl<$Res, _$LoggedSetImpl>
    implements _$$LoggedSetImplCopyWith<$Res> {
  __$$LoggedSetImplCopyWithImpl(
    _$LoggedSetImpl _value,
    $Res Function(_$LoggedSetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoggedSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? reps = freezed,
    Object? done = null,
  }) {
    return _then(
      _$LoggedSetImpl(
        weight: freezed == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as double?,
        reps: freezed == reps
            ? _value.reps
            : reps // ignore: cast_nullable_to_non_nullable
                  as int?,
        done: null == done
            ? _value.done
            : done // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggedSetImpl implements _LoggedSet {
  const _$LoggedSetImpl({this.weight, this.reps, this.done = false});

  factory _$LoggedSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoggedSetImplFromJson(json);

  @override
  final double? weight;
  @override
  final int? reps;
  @override
  @JsonKey()
  final bool done;

  @override
  String toString() {
    return 'LoggedSet(weight: $weight, reps: $reps, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedSetImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, weight, reps, done);

  /// Create a copy of LoggedSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedSetImplCopyWith<_$LoggedSetImpl> get copyWith =>
      __$$LoggedSetImplCopyWithImpl<_$LoggedSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggedSetImplToJson(this);
  }
}

abstract class _LoggedSet implements LoggedSet {
  const factory _LoggedSet({
    final double? weight,
    final int? reps,
    final bool done,
  }) = _$LoggedSetImpl;

  factory _LoggedSet.fromJson(Map<String, dynamic> json) =
      _$LoggedSetImpl.fromJson;

  @override
  double? get weight;
  @override
  int? get reps;
  @override
  bool get done;

  /// Create a copy of LoggedSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedSetImplCopyWith<_$LoggedSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
