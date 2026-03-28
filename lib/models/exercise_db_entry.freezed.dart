// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_db_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ExerciseDbEntry _$ExerciseDbEntryFromJson(Map<String, dynamic> json) {
  return _ExerciseDbEntry.fromJson(json);
}

/// @nodoc
mixin _$ExerciseDbEntry {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bodyPart')
  String get bodyPart => throw _privateConstructorUsedError;
  String get equipment => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifUrl')
  String get gifUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get difficulty => throw _privateConstructorUsedError;
  List<String> get instructions => throw _privateConstructorUsedError;
  @JsonKey(name: 'secondaryMuscles')
  List<String> get secondaryMuscles => throw _privateConstructorUsedError;

  /// Serializes this ExerciseDbEntry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExerciseDbEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExerciseDbEntryCopyWith<ExerciseDbEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDbEntryCopyWith<$Res> {
  factory $ExerciseDbEntryCopyWith(
    ExerciseDbEntry value,
    $Res Function(ExerciseDbEntry) then,
  ) = _$ExerciseDbEntryCopyWithImpl<$Res, ExerciseDbEntry>;
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'bodyPart') String bodyPart,
    String equipment,
    String target,
    @JsonKey(name: 'gifUrl') String gifUrl,
    String description,
    String difficulty,
    List<String> instructions,
    @JsonKey(name: 'secondaryMuscles') List<String> secondaryMuscles,
  });
}

/// @nodoc
class _$ExerciseDbEntryCopyWithImpl<$Res, $Val extends ExerciseDbEntry>
    implements $ExerciseDbEntryCopyWith<$Res> {
  _$ExerciseDbEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExerciseDbEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = null,
    Object? equipment = null,
    Object? target = null,
    Object? gifUrl = null,
    Object? description = null,
    Object? difficulty = null,
    Object? instructions = null,
    Object? secondaryMuscles = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            bodyPart: null == bodyPart
                ? _value.bodyPart
                : bodyPart // ignore: cast_nullable_to_non_nullable
                      as String,
            equipment: null == equipment
                ? _value.equipment
                : equipment // ignore: cast_nullable_to_non_nullable
                      as String,
            target: null == target
                ? _value.target
                : target // ignore: cast_nullable_to_non_nullable
                      as String,
            gifUrl: null == gifUrl
                ? _value.gifUrl
                : gifUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            difficulty: null == difficulty
                ? _value.difficulty
                : difficulty // ignore: cast_nullable_to_non_nullable
                      as String,
            instructions: null == instructions
                ? _value.instructions
                : instructions // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            secondaryMuscles: null == secondaryMuscles
                ? _value.secondaryMuscles
                : secondaryMuscles // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ExerciseDbEntryImplCopyWith<$Res>
    implements $ExerciseDbEntryCopyWith<$Res> {
  factory _$$ExerciseDbEntryImplCopyWith(
    _$ExerciseDbEntryImpl value,
    $Res Function(_$ExerciseDbEntryImpl) then,
  ) = __$$ExerciseDbEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String name,
    @JsonKey(name: 'bodyPart') String bodyPart,
    String equipment,
    String target,
    @JsonKey(name: 'gifUrl') String gifUrl,
    String description,
    String difficulty,
    List<String> instructions,
    @JsonKey(name: 'secondaryMuscles') List<String> secondaryMuscles,
  });
}

/// @nodoc
class __$$ExerciseDbEntryImplCopyWithImpl<$Res>
    extends _$ExerciseDbEntryCopyWithImpl<$Res, _$ExerciseDbEntryImpl>
    implements _$$ExerciseDbEntryImplCopyWith<$Res> {
  __$$ExerciseDbEntryImplCopyWithImpl(
    _$ExerciseDbEntryImpl _value,
    $Res Function(_$ExerciseDbEntryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ExerciseDbEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bodyPart = null,
    Object? equipment = null,
    Object? target = null,
    Object? gifUrl = null,
    Object? description = null,
    Object? difficulty = null,
    Object? instructions = null,
    Object? secondaryMuscles = null,
  }) {
    return _then(
      _$ExerciseDbEntryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        bodyPart: null == bodyPart
            ? _value.bodyPart
            : bodyPart // ignore: cast_nullable_to_non_nullable
                  as String,
        equipment: null == equipment
            ? _value.equipment
            : equipment // ignore: cast_nullable_to_non_nullable
                  as String,
        target: null == target
            ? _value.target
            : target // ignore: cast_nullable_to_non_nullable
                  as String,
        gifUrl: null == gifUrl
            ? _value.gifUrl
            : gifUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        difficulty: null == difficulty
            ? _value.difficulty
            : difficulty // ignore: cast_nullable_to_non_nullable
                  as String,
        instructions: null == instructions
            ? _value._instructions
            : instructions // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        secondaryMuscles: null == secondaryMuscles
            ? _value._secondaryMuscles
            : secondaryMuscles // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseDbEntryImpl implements _ExerciseDbEntry {
  const _$ExerciseDbEntryImpl({
    required this.id,
    required this.name,
    @JsonKey(name: 'bodyPart') required this.bodyPart,
    required this.equipment,
    required this.target,
    @JsonKey(name: 'gifUrl') required this.gifUrl,
    this.description = '',
    this.difficulty = '',
    final List<String> instructions = const <String>[],
    @JsonKey(name: 'secondaryMuscles')
    final List<String> secondaryMuscles = const <String>[],
  }) : _instructions = instructions,
       _secondaryMuscles = secondaryMuscles;

  factory _$ExerciseDbEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseDbEntryImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'bodyPart')
  final String bodyPart;
  @override
  final String equipment;
  @override
  final String target;
  @override
  @JsonKey(name: 'gifUrl')
  final String gifUrl;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String difficulty;
  final List<String> _instructions;
  @override
  @JsonKey()
  List<String> get instructions {
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_instructions);
  }

  final List<String> _secondaryMuscles;
  @override
  @JsonKey(name: 'secondaryMuscles')
  List<String> get secondaryMuscles {
    if (_secondaryMuscles is EqualUnmodifiableListView)
      return _secondaryMuscles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_secondaryMuscles);
  }

  @override
  String toString() {
    return 'ExerciseDbEntry(id: $id, name: $name, bodyPart: $bodyPart, equipment: $equipment, target: $target, gifUrl: $gifUrl, description: $description, difficulty: $difficulty, instructions: $instructions, secondaryMuscles: $secondaryMuscles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseDbEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bodyPart, bodyPart) ||
                other.bodyPart == bodyPart) &&
            (identical(other.equipment, equipment) ||
                other.equipment == equipment) &&
            (identical(other.target, target) || other.target == target) &&
            (identical(other.gifUrl, gifUrl) || other.gifUrl == gifUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality().equals(
              other._instructions,
              _instructions,
            ) &&
            const DeepCollectionEquality().equals(
              other._secondaryMuscles,
              _secondaryMuscles,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    bodyPart,
    equipment,
    target,
    gifUrl,
    description,
    difficulty,
    const DeepCollectionEquality().hash(_instructions),
    const DeepCollectionEquality().hash(_secondaryMuscles),
  );

  /// Create a copy of ExerciseDbEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseDbEntryImplCopyWith<_$ExerciseDbEntryImpl> get copyWith =>
      __$$ExerciseDbEntryImplCopyWithImpl<_$ExerciseDbEntryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseDbEntryImplToJson(this);
  }
}

abstract class _ExerciseDbEntry implements ExerciseDbEntry {
  const factory _ExerciseDbEntry({
    required final String id,
    required final String name,
    @JsonKey(name: 'bodyPart') required final String bodyPart,
    required final String equipment,
    required final String target,
    @JsonKey(name: 'gifUrl') required final String gifUrl,
    final String description,
    final String difficulty,
    final List<String> instructions,
    @JsonKey(name: 'secondaryMuscles') final List<String> secondaryMuscles,
  }) = _$ExerciseDbEntryImpl;

  factory _ExerciseDbEntry.fromJson(Map<String, dynamic> json) =
      _$ExerciseDbEntryImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'bodyPart')
  String get bodyPart;
  @override
  String get equipment;
  @override
  String get target;
  @override
  @JsonKey(name: 'gifUrl')
  String get gifUrl;
  @override
  String get description;
  @override
  String get difficulty;
  @override
  List<String> get instructions;
  @override
  @JsonKey(name: 'secondaryMuscles')
  List<String> get secondaryMuscles;

  /// Create a copy of ExerciseDbEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExerciseDbEntryImplCopyWith<_$ExerciseDbEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
