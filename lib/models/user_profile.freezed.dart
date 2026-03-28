// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'primary_goal')
  String? get primaryGoal => throw _privateConstructorUsedError;
  @JsonKey(name: 'aesthetic_goal')
  String? get aestheticGoal => throw _privateConstructorUsedError;
  String? get timeline => throw _privateConstructorUsedError;
  @JsonKey(name: 'days_per_week')
  int? get daysPerWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_of_day')
  String? get timeOfDay => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_length_mins')
  int? get workoutLengthMins => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'equipment_inventory',
    fromJson: stringListFromJson,
    toJson: stringListToJson,
  )
  List<String> get equipmentInventory => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm')
  double? get heightCm => throw _privateConstructorUsedError;
  String? get sex => throw _privateConstructorUsedError;
  @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
  List<String> get injuries => throw _privateConstructorUsedError;
  @JsonKey(name: 'medical_notes')
  String? get medicalNotes => throw _privateConstructorUsedError;
  @JsonKey(name: 'experience_level')
  String? get experienceLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_quality_baseline')
  String? get sleepQualityBaseline => throw _privateConstructorUsedError;
  @JsonKey(name: 'stress_baseline')
  String? get stressBaseline => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_wearable')
  bool? get hasWearable => throw _privateConstructorUsedError;
  @JsonKey(name: 'wearable_type')
  String? get wearableType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
    UserProfile value,
    $Res Function(UserProfile) then,
  ) = _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'primary_goal') String? primaryGoal,
    @JsonKey(name: 'aesthetic_goal') String? aestheticGoal,
    String? timeline,
    @JsonKey(name: 'days_per_week') int? daysPerWeek,
    @JsonKey(name: 'time_of_day') String? timeOfDay,
    @JsonKey(name: 'workout_length_mins') int? workoutLengthMins,
    String? location,
    @JsonKey(
      name: 'equipment_inventory',
      fromJson: stringListFromJson,
      toJson: stringListToJson,
    )
    List<String> equipmentInventory,
    int? age,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'height_cm') double? heightCm,
    String? sex,
    @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
    List<String> injuries,
    @JsonKey(name: 'medical_notes') String? medicalNotes,
    @JsonKey(name: 'experience_level') String? experienceLevel,
    @JsonKey(name: 'sleep_quality_baseline') String? sleepQualityBaseline,
    @JsonKey(name: 'stress_baseline') String? stressBaseline,
    @JsonKey(name: 'has_wearable') bool? hasWearable,
    @JsonKey(name: 'wearable_type') String? wearableType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? primaryGoal = freezed,
    Object? aestheticGoal = freezed,
    Object? timeline = freezed,
    Object? daysPerWeek = freezed,
    Object? timeOfDay = freezed,
    Object? workoutLengthMins = freezed,
    Object? location = freezed,
    Object? equipmentInventory = null,
    Object? age = freezed,
    Object? weightKg = freezed,
    Object? heightCm = freezed,
    Object? sex = freezed,
    Object? injuries = null,
    Object? medicalNotes = freezed,
    Object? experienceLevel = freezed,
    Object? sleepQualityBaseline = freezed,
    Object? stressBaseline = freezed,
    Object? hasWearable = freezed,
    Object? wearableType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String?,
            primaryGoal: freezed == primaryGoal
                ? _value.primaryGoal
                : primaryGoal // ignore: cast_nullable_to_non_nullable
                      as String?,
            aestheticGoal: freezed == aestheticGoal
                ? _value.aestheticGoal
                : aestheticGoal // ignore: cast_nullable_to_non_nullable
                      as String?,
            timeline: freezed == timeline
                ? _value.timeline
                : timeline // ignore: cast_nullable_to_non_nullable
                      as String?,
            daysPerWeek: freezed == daysPerWeek
                ? _value.daysPerWeek
                : daysPerWeek // ignore: cast_nullable_to_non_nullable
                      as int?,
            timeOfDay: freezed == timeOfDay
                ? _value.timeOfDay
                : timeOfDay // ignore: cast_nullable_to_non_nullable
                      as String?,
            workoutLengthMins: freezed == workoutLengthMins
                ? _value.workoutLengthMins
                : workoutLengthMins // ignore: cast_nullable_to_non_nullable
                      as int?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            equipmentInventory: null == equipmentInventory
                ? _value.equipmentInventory
                : equipmentInventory // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            age: freezed == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as int?,
            weightKg: freezed == weightKg
                ? _value.weightKg
                : weightKg // ignore: cast_nullable_to_non_nullable
                      as double?,
            heightCm: freezed == heightCm
                ? _value.heightCm
                : heightCm // ignore: cast_nullable_to_non_nullable
                      as double?,
            sex: freezed == sex
                ? _value.sex
                : sex // ignore: cast_nullable_to_non_nullable
                      as String?,
            injuries: null == injuries
                ? _value.injuries
                : injuries // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            medicalNotes: freezed == medicalNotes
                ? _value.medicalNotes
                : medicalNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
            experienceLevel: freezed == experienceLevel
                ? _value.experienceLevel
                : experienceLevel // ignore: cast_nullable_to_non_nullable
                      as String?,
            sleepQualityBaseline: freezed == sleepQualityBaseline
                ? _value.sleepQualityBaseline
                : sleepQualityBaseline // ignore: cast_nullable_to_non_nullable
                      as String?,
            stressBaseline: freezed == stressBaseline
                ? _value.stressBaseline
                : stressBaseline // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasWearable: freezed == hasWearable
                ? _value.hasWearable
                : hasWearable // ignore: cast_nullable_to_non_nullable
                      as bool?,
            wearableType: freezed == wearableType
                ? _value.wearableType
                : wearableType // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
    _$UserProfileImpl value,
    $Res Function(_$UserProfileImpl) then,
  ) = __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'primary_goal') String? primaryGoal,
    @JsonKey(name: 'aesthetic_goal') String? aestheticGoal,
    String? timeline,
    @JsonKey(name: 'days_per_week') int? daysPerWeek,
    @JsonKey(name: 'time_of_day') String? timeOfDay,
    @JsonKey(name: 'workout_length_mins') int? workoutLengthMins,
    String? location,
    @JsonKey(
      name: 'equipment_inventory',
      fromJson: stringListFromJson,
      toJson: stringListToJson,
    )
    List<String> equipmentInventory,
    int? age,
    @JsonKey(name: 'weight_kg') double? weightKg,
    @JsonKey(name: 'height_cm') double? heightCm,
    String? sex,
    @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
    List<String> injuries,
    @JsonKey(name: 'medical_notes') String? medicalNotes,
    @JsonKey(name: 'experience_level') String? experienceLevel,
    @JsonKey(name: 'sleep_quality_baseline') String? sleepQualityBaseline,
    @JsonKey(name: 'stress_baseline') String? stressBaseline,
    @JsonKey(name: 'has_wearable') bool? hasWearable,
    @JsonKey(name: 'wearable_type') String? wearableType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  });
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
    _$UserProfileImpl _value,
    $Res Function(_$UserProfileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? primaryGoal = freezed,
    Object? aestheticGoal = freezed,
    Object? timeline = freezed,
    Object? daysPerWeek = freezed,
    Object? timeOfDay = freezed,
    Object? workoutLengthMins = freezed,
    Object? location = freezed,
    Object? equipmentInventory = null,
    Object? age = freezed,
    Object? weightKg = freezed,
    Object? heightCm = freezed,
    Object? sex = freezed,
    Object? injuries = null,
    Object? medicalNotes = freezed,
    Object? experienceLevel = freezed,
    Object? sleepQualityBaseline = freezed,
    Object? stressBaseline = freezed,
    Object? hasWearable = freezed,
    Object? wearableType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$UserProfileImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        primaryGoal: freezed == primaryGoal
            ? _value.primaryGoal
            : primaryGoal // ignore: cast_nullable_to_non_nullable
                  as String?,
        aestheticGoal: freezed == aestheticGoal
            ? _value.aestheticGoal
            : aestheticGoal // ignore: cast_nullable_to_non_nullable
                  as String?,
        timeline: freezed == timeline
            ? _value.timeline
            : timeline // ignore: cast_nullable_to_non_nullable
                  as String?,
        daysPerWeek: freezed == daysPerWeek
            ? _value.daysPerWeek
            : daysPerWeek // ignore: cast_nullable_to_non_nullable
                  as int?,
        timeOfDay: freezed == timeOfDay
            ? _value.timeOfDay
            : timeOfDay // ignore: cast_nullable_to_non_nullable
                  as String?,
        workoutLengthMins: freezed == workoutLengthMins
            ? _value.workoutLengthMins
            : workoutLengthMins // ignore: cast_nullable_to_non_nullable
                  as int?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        equipmentInventory: null == equipmentInventory
            ? _value._equipmentInventory
            : equipmentInventory // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        age: freezed == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as int?,
        weightKg: freezed == weightKg
            ? _value.weightKg
            : weightKg // ignore: cast_nullable_to_non_nullable
                  as double?,
        heightCm: freezed == heightCm
            ? _value.heightCm
            : heightCm // ignore: cast_nullable_to_non_nullable
                  as double?,
        sex: freezed == sex
            ? _value.sex
            : sex // ignore: cast_nullable_to_non_nullable
                  as String?,
        injuries: null == injuries
            ? _value._injuries
            : injuries // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        medicalNotes: freezed == medicalNotes
            ? _value.medicalNotes
            : medicalNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
        experienceLevel: freezed == experienceLevel
            ? _value.experienceLevel
            : experienceLevel // ignore: cast_nullable_to_non_nullable
                  as String?,
        sleepQualityBaseline: freezed == sleepQualityBaseline
            ? _value.sleepQualityBaseline
            : sleepQualityBaseline // ignore: cast_nullable_to_non_nullable
                  as String?,
        stressBaseline: freezed == stressBaseline
            ? _value.stressBaseline
            : stressBaseline // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasWearable: freezed == hasWearable
            ? _value.hasWearable
            : hasWearable // ignore: cast_nullable_to_non_nullable
                  as bool?,
        wearableType: freezed == wearableType
            ? _value.wearableType
            : wearableType // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl({
    this.id,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'primary_goal') this.primaryGoal,
    @JsonKey(name: 'aesthetic_goal') this.aestheticGoal,
    this.timeline,
    @JsonKey(name: 'days_per_week') this.daysPerWeek,
    @JsonKey(name: 'time_of_day') this.timeOfDay,
    @JsonKey(name: 'workout_length_mins') this.workoutLengthMins,
    this.location,
    @JsonKey(
      name: 'equipment_inventory',
      fromJson: stringListFromJson,
      toJson: stringListToJson,
    )
    final List<String> equipmentInventory = const <String>[],
    this.age,
    @JsonKey(name: 'weight_kg') this.weightKg,
    @JsonKey(name: 'height_cm') this.heightCm,
    this.sex,
    @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
    final List<String> injuries = const <String>[],
    @JsonKey(name: 'medical_notes') this.medicalNotes,
    @JsonKey(name: 'experience_level') this.experienceLevel,
    @JsonKey(name: 'sleep_quality_baseline') this.sleepQualityBaseline,
    @JsonKey(name: 'stress_baseline') this.stressBaseline,
    @JsonKey(name: 'has_wearable') this.hasWearable,
    @JsonKey(name: 'wearable_type') this.wearableType,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'updated_at') this.updatedAt,
  }) : _equipmentInventory = equipmentInventory,
       _injuries = injuries;

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'primary_goal')
  final String? primaryGoal;
  @override
  @JsonKey(name: 'aesthetic_goal')
  final String? aestheticGoal;
  @override
  final String? timeline;
  @override
  @JsonKey(name: 'days_per_week')
  final int? daysPerWeek;
  @override
  @JsonKey(name: 'time_of_day')
  final String? timeOfDay;
  @override
  @JsonKey(name: 'workout_length_mins')
  final int? workoutLengthMins;
  @override
  final String? location;
  final List<String> _equipmentInventory;
  @override
  @JsonKey(
    name: 'equipment_inventory',
    fromJson: stringListFromJson,
    toJson: stringListToJson,
  )
  List<String> get equipmentInventory {
    if (_equipmentInventory is EqualUnmodifiableListView)
      return _equipmentInventory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipmentInventory);
  }

  @override
  final int? age;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  @JsonKey(name: 'height_cm')
  final double? heightCm;
  @override
  final String? sex;
  final List<String> _injuries;
  @override
  @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
  List<String> get injuries {
    if (_injuries is EqualUnmodifiableListView) return _injuries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_injuries);
  }

  @override
  @JsonKey(name: 'medical_notes')
  final String? medicalNotes;
  @override
  @JsonKey(name: 'experience_level')
  final String? experienceLevel;
  @override
  @JsonKey(name: 'sleep_quality_baseline')
  final String? sleepQualityBaseline;
  @override
  @JsonKey(name: 'stress_baseline')
  final String? stressBaseline;
  @override
  @JsonKey(name: 'has_wearable')
  final bool? hasWearable;
  @override
  @JsonKey(name: 'wearable_type')
  final String? wearableType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'UserProfile(id: $id, userId: $userId, primaryGoal: $primaryGoal, aestheticGoal: $aestheticGoal, timeline: $timeline, daysPerWeek: $daysPerWeek, timeOfDay: $timeOfDay, workoutLengthMins: $workoutLengthMins, location: $location, equipmentInventory: $equipmentInventory, age: $age, weightKg: $weightKg, heightCm: $heightCm, sex: $sex, injuries: $injuries, medicalNotes: $medicalNotes, experienceLevel: $experienceLevel, sleepQualityBaseline: $sleepQualityBaseline, stressBaseline: $stressBaseline, hasWearable: $hasWearable, wearableType: $wearableType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.primaryGoal, primaryGoal) ||
                other.primaryGoal == primaryGoal) &&
            (identical(other.aestheticGoal, aestheticGoal) ||
                other.aestheticGoal == aestheticGoal) &&
            (identical(other.timeline, timeline) ||
                other.timeline == timeline) &&
            (identical(other.daysPerWeek, daysPerWeek) ||
                other.daysPerWeek == daysPerWeek) &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.workoutLengthMins, workoutLengthMins) ||
                other.workoutLengthMins == workoutLengthMins) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(
              other._equipmentInventory,
              _equipmentInventory,
            ) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            const DeepCollectionEquality().equals(other._injuries, _injuries) &&
            (identical(other.medicalNotes, medicalNotes) ||
                other.medicalNotes == medicalNotes) &&
            (identical(other.experienceLevel, experienceLevel) ||
                other.experienceLevel == experienceLevel) &&
            (identical(other.sleepQualityBaseline, sleepQualityBaseline) ||
                other.sleepQualityBaseline == sleepQualityBaseline) &&
            (identical(other.stressBaseline, stressBaseline) ||
                other.stressBaseline == stressBaseline) &&
            (identical(other.hasWearable, hasWearable) ||
                other.hasWearable == hasWearable) &&
            (identical(other.wearableType, wearableType) ||
                other.wearableType == wearableType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    userId,
    primaryGoal,
    aestheticGoal,
    timeline,
    daysPerWeek,
    timeOfDay,
    workoutLengthMins,
    location,
    const DeepCollectionEquality().hash(_equipmentInventory),
    age,
    weightKg,
    heightCm,
    sex,
    const DeepCollectionEquality().hash(_injuries),
    medicalNotes,
    experienceLevel,
    sleepQualityBaseline,
    stressBaseline,
    hasWearable,
    wearableType,
    createdAt,
    updatedAt,
  ]);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(this);
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile({
    final String? id,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'primary_goal') final String? primaryGoal,
    @JsonKey(name: 'aesthetic_goal') final String? aestheticGoal,
    final String? timeline,
    @JsonKey(name: 'days_per_week') final int? daysPerWeek,
    @JsonKey(name: 'time_of_day') final String? timeOfDay,
    @JsonKey(name: 'workout_length_mins') final int? workoutLengthMins,
    final String? location,
    @JsonKey(
      name: 'equipment_inventory',
      fromJson: stringListFromJson,
      toJson: stringListToJson,
    )
    final List<String> equipmentInventory,
    final int? age,
    @JsonKey(name: 'weight_kg') final double? weightKg,
    @JsonKey(name: 'height_cm') final double? heightCm,
    final String? sex,
    @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
    final List<String> injuries,
    @JsonKey(name: 'medical_notes') final String? medicalNotes,
    @JsonKey(name: 'experience_level') final String? experienceLevel,
    @JsonKey(name: 'sleep_quality_baseline') final String? sleepQualityBaseline,
    @JsonKey(name: 'stress_baseline') final String? stressBaseline,
    @JsonKey(name: 'has_wearable') final bool? hasWearable,
    @JsonKey(name: 'wearable_type') final String? wearableType,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
    @JsonKey(name: 'updated_at') final DateTime? updatedAt,
  }) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'primary_goal')
  String? get primaryGoal;
  @override
  @JsonKey(name: 'aesthetic_goal')
  String? get aestheticGoal;
  @override
  String? get timeline;
  @override
  @JsonKey(name: 'days_per_week')
  int? get daysPerWeek;
  @override
  @JsonKey(name: 'time_of_day')
  String? get timeOfDay;
  @override
  @JsonKey(name: 'workout_length_mins')
  int? get workoutLengthMins;
  @override
  String? get location;
  @override
  @JsonKey(
    name: 'equipment_inventory',
    fromJson: stringListFromJson,
    toJson: stringListToJson,
  )
  List<String> get equipmentInventory;
  @override
  int? get age;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  @JsonKey(name: 'height_cm')
  double? get heightCm;
  @override
  String? get sex;
  @override
  @JsonKey(fromJson: stringListFromJson, toJson: stringListToJson)
  List<String> get injuries;
  @override
  @JsonKey(name: 'medical_notes')
  String? get medicalNotes;
  @override
  @JsonKey(name: 'experience_level')
  String? get experienceLevel;
  @override
  @JsonKey(name: 'sleep_quality_baseline')
  String? get sleepQualityBaseline;
  @override
  @JsonKey(name: 'stress_baseline')
  String? get stressBaseline;
  @override
  @JsonKey(name: 'has_wearable')
  bool? get hasWearable;
  @override
  @JsonKey(name: 'wearable_type')
  String? get wearableType;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
