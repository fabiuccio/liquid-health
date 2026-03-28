// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String? get name => throw _privateConstructorUsedError;
  int? get sets => throw _privateConstructorUsedError;
  String? get reps => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: 'pe_note')
  String? get peNote => throw _privateConstructorUsedError;
  @JsonKey(name: 'injury_flag')
  bool? get injuryFlag => throw _privateConstructorUsedError;
  @JsonKey(name: 'equipment_type')
  String? get equipmentType => throw _privateConstructorUsedError;

  /// Serializes this Exercise to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call({
    String? name,
    int? sets,
    String? reps,
    double? weight,
    String? notes,
    @JsonKey(name: 'pe_note') String? peNote,
    @JsonKey(name: 'injury_flag') bool? injuryFlag,
    @JsonKey(name: 'equipment_type') String? equipmentType,
  });
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sets = freezed,
    Object? reps = freezed,
    Object? weight = freezed,
    Object? notes = freezed,
    Object? peNote = freezed,
    Object? injuryFlag = freezed,
    Object? equipmentType = freezed,
  }) {
    return _then(
      _value.copyWith(
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            sets: freezed == sets
                ? _value.sets
                : sets // ignore: cast_nullable_to_non_nullable
                      as int?,
            reps: freezed == reps
                ? _value.reps
                : reps // ignore: cast_nullable_to_non_nullable
                      as String?,
            weight: freezed == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as double?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as String?,
            peNote: freezed == peNote
                ? _value.peNote
                : peNote // ignore: cast_nullable_to_non_nullable
                      as String?,
            injuryFlag: freezed == injuryFlag
                ? _value.injuryFlag
                : injuryFlag // ignore: cast_nullable_to_non_nullable
                      as bool?,
            equipmentType: freezed == equipmentType
                ? _value.equipmentType
                : equipmentType // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
    _$ExerciseImpl value,
    $Res Function(_$ExerciseImpl) then,
  ) = __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? name,
    int? sets,
    String? reps,
    double? weight,
    String? notes,
    @JsonKey(name: 'pe_note') String? peNote,
    @JsonKey(name: 'injury_flag') bool? injuryFlag,
    @JsonKey(name: 'equipment_type') String? equipmentType,
  });
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
    _$ExerciseImpl _value,
    $Res Function(_$ExerciseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? sets = freezed,
    Object? reps = freezed,
    Object? weight = freezed,
    Object? notes = freezed,
    Object? peNote = freezed,
    Object? injuryFlag = freezed,
    Object? equipmentType = freezed,
  }) {
    return _then(
      _$ExerciseImpl(
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        sets: freezed == sets
            ? _value.sets
            : sets // ignore: cast_nullable_to_non_nullable
                  as int?,
        reps: freezed == reps
            ? _value.reps
            : reps // ignore: cast_nullable_to_non_nullable
                  as String?,
        weight: freezed == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as double?,
        notes: freezed == notes
            ? _value.notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as String?,
        peNote: freezed == peNote
            ? _value.peNote
            : peNote // ignore: cast_nullable_to_non_nullable
                  as String?,
        injuryFlag: freezed == injuryFlag
            ? _value.injuryFlag
            : injuryFlag // ignore: cast_nullable_to_non_nullable
                  as bool?,
        equipmentType: freezed == equipmentType
            ? _value.equipmentType
            : equipmentType // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl({
    this.name,
    this.sets,
    this.reps,
    this.weight,
    this.notes,
    @JsonKey(name: 'pe_note') this.peNote,
    @JsonKey(name: 'injury_flag') this.injuryFlag,
    @JsonKey(name: 'equipment_type') this.equipmentType,
  });

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String? name;
  @override
  final int? sets;
  @override
  final String? reps;
  @override
  final double? weight;
  @override
  final String? notes;
  @override
  @JsonKey(name: 'pe_note')
  final String? peNote;
  @override
  @JsonKey(name: 'injury_flag')
  final bool? injuryFlag;
  @override
  @JsonKey(name: 'equipment_type')
  final String? equipmentType;

  @override
  String toString() {
    return 'Exercise(name: $name, sets: $sets, reps: $reps, weight: $weight, notes: $notes, peNote: $peNote, injuryFlag: $injuryFlag, equipmentType: $equipmentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.reps, reps) || other.reps == reps) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.peNote, peNote) || other.peNote == peNote) &&
            (identical(other.injuryFlag, injuryFlag) ||
                other.injuryFlag == injuryFlag) &&
            (identical(other.equipmentType, equipmentType) ||
                other.equipmentType == equipmentType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    sets,
    reps,
    weight,
    notes,
    peNote,
    injuryFlag,
    equipmentType,
  );

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(this);
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise({
    final String? name,
    final int? sets,
    final String? reps,
    final double? weight,
    final String? notes,
    @JsonKey(name: 'pe_note') final String? peNote,
    @JsonKey(name: 'injury_flag') final bool? injuryFlag,
    @JsonKey(name: 'equipment_type') final String? equipmentType,
  }) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String? get name;
  @override
  int? get sets;
  @override
  String? get reps;
  @override
  double? get weight;
  @override
  String? get notes;
  @override
  @JsonKey(name: 'pe_note')
  String? get peNote;
  @override
  @JsonKey(name: 'injury_flag')
  bool? get injuryFlag;
  @override
  @JsonKey(name: 'equipment_type')
  String? get equipmentType;

  /// Create a copy of Exercise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
