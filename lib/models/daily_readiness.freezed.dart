// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_readiness.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DailyReadiness _$DailyReadinessFromJson(Map<String, dynamic> json) {
  return _DailyReadiness.fromJson(json);
}

/// @nodoc
mixin _$DailyReadiness {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_hours')
  double? get sleepHours => throw _privateConstructorUsedError;
  @JsonKey(name: 'sleep_quality')
  String? get sleepQuality => throw _privateConstructorUsedError;
  @JsonKey(name: 'resting_hr')
  int? get restingHr => throw _privateConstructorUsedError;
  int? get hrv => throw _privateConstructorUsedError;
  int? get steps => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;
  @JsonKey(name: 'readiness_score')
  String? get readinessScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_flags')
  @JsonMapConverter()
  Map<String, Object?>? get aiFlags => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this DailyReadiness to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyReadiness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyReadinessCopyWith<DailyReadiness> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyReadinessCopyWith<$Res> {
  factory $DailyReadinessCopyWith(
    DailyReadiness value,
    $Res Function(DailyReadiness) then,
  ) = _$DailyReadinessCopyWithImpl<$Res, DailyReadiness>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'sleep_hours') double? sleepHours,
    @JsonKey(name: 'sleep_quality') String? sleepQuality,
    @JsonKey(name: 'resting_hr') int? restingHr,
    int? hrv,
    int? steps,
    String? mood,
    @JsonKey(name: 'readiness_score') String? readinessScore,
    @JsonKey(name: 'ai_flags')
    @JsonMapConverter()
    Map<String, Object?>? aiFlags,
    String? source,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$DailyReadinessCopyWithImpl<$Res, $Val extends DailyReadiness>
    implements $DailyReadinessCopyWith<$Res> {
  _$DailyReadinessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyReadiness
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? sleepHours = freezed,
    Object? sleepQuality = freezed,
    Object? restingHr = freezed,
    Object? hrv = freezed,
    Object? steps = freezed,
    Object? mood = freezed,
    Object? readinessScore = freezed,
    Object? aiFlags = freezed,
    Object? source = freezed,
    Object? createdAt = freezed,
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
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            sleepHours: freezed == sleepHours
                ? _value.sleepHours
                : sleepHours // ignore: cast_nullable_to_non_nullable
                      as double?,
            sleepQuality: freezed == sleepQuality
                ? _value.sleepQuality
                : sleepQuality // ignore: cast_nullable_to_non_nullable
                      as String?,
            restingHr: freezed == restingHr
                ? _value.restingHr
                : restingHr // ignore: cast_nullable_to_non_nullable
                      as int?,
            hrv: freezed == hrv
                ? _value.hrv
                : hrv // ignore: cast_nullable_to_non_nullable
                      as int?,
            steps: freezed == steps
                ? _value.steps
                : steps // ignore: cast_nullable_to_non_nullable
                      as int?,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
            readinessScore: freezed == readinessScore
                ? _value.readinessScore
                : readinessScore // ignore: cast_nullable_to_non_nullable
                      as String?,
            aiFlags: freezed == aiFlags
                ? _value.aiFlags
                : aiFlags // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
            source: freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DailyReadinessImplCopyWith<$Res>
    implements $DailyReadinessCopyWith<$Res> {
  factory _$$DailyReadinessImplCopyWith(
    _$DailyReadinessImpl value,
    $Res Function(_$DailyReadinessImpl) then,
  ) = __$$DailyReadinessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'sleep_hours') double? sleepHours,
    @JsonKey(name: 'sleep_quality') String? sleepQuality,
    @JsonKey(name: 'resting_hr') int? restingHr,
    int? hrv,
    int? steps,
    String? mood,
    @JsonKey(name: 'readiness_score') String? readinessScore,
    @JsonKey(name: 'ai_flags')
    @JsonMapConverter()
    Map<String, Object?>? aiFlags,
    String? source,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$DailyReadinessImplCopyWithImpl<$Res>
    extends _$DailyReadinessCopyWithImpl<$Res, _$DailyReadinessImpl>
    implements _$$DailyReadinessImplCopyWith<$Res> {
  __$$DailyReadinessImplCopyWithImpl(
    _$DailyReadinessImpl _value,
    $Res Function(_$DailyReadinessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailyReadiness
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? sleepHours = freezed,
    Object? sleepQuality = freezed,
    Object? restingHr = freezed,
    Object? hrv = freezed,
    Object? steps = freezed,
    Object? mood = freezed,
    Object? readinessScore = freezed,
    Object? aiFlags = freezed,
    Object? source = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$DailyReadinessImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        date: freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        sleepHours: freezed == sleepHours
            ? _value.sleepHours
            : sleepHours // ignore: cast_nullable_to_non_nullable
                  as double?,
        sleepQuality: freezed == sleepQuality
            ? _value.sleepQuality
            : sleepQuality // ignore: cast_nullable_to_non_nullable
                  as String?,
        restingHr: freezed == restingHr
            ? _value.restingHr
            : restingHr // ignore: cast_nullable_to_non_nullable
                  as int?,
        hrv: freezed == hrv
            ? _value.hrv
            : hrv // ignore: cast_nullable_to_non_nullable
                  as int?,
        steps: freezed == steps
            ? _value.steps
            : steps // ignore: cast_nullable_to_non_nullable
                  as int?,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
        readinessScore: freezed == readinessScore
            ? _value.readinessScore
            : readinessScore // ignore: cast_nullable_to_non_nullable
                  as String?,
        aiFlags: freezed == aiFlags
            ? _value._aiFlags
            : aiFlags // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
        source: freezed == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
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
class _$DailyReadinessImpl implements _DailyReadiness {
  const _$DailyReadinessImpl({
    this.id,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) this.date,
    @JsonKey(name: 'sleep_hours') this.sleepHours,
    @JsonKey(name: 'sleep_quality') this.sleepQuality,
    @JsonKey(name: 'resting_hr') this.restingHr,
    this.hrv,
    this.steps,
    this.mood,
    @JsonKey(name: 'readiness_score') this.readinessScore,
    @JsonKey(name: 'ai_flags')
    @JsonMapConverter()
    final Map<String, Object?>? aiFlags,
    this.source,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _aiFlags = aiFlags;

  factory _$DailyReadinessImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyReadinessImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  final DateTime? date;
  @override
  @JsonKey(name: 'sleep_hours')
  final double? sleepHours;
  @override
  @JsonKey(name: 'sleep_quality')
  final String? sleepQuality;
  @override
  @JsonKey(name: 'resting_hr')
  final int? restingHr;
  @override
  final int? hrv;
  @override
  final int? steps;
  @override
  final String? mood;
  @override
  @JsonKey(name: 'readiness_score')
  final String? readinessScore;
  final Map<String, Object?>? _aiFlags;
  @override
  @JsonKey(name: 'ai_flags')
  @JsonMapConverter()
  Map<String, Object?>? get aiFlags {
    final value = _aiFlags;
    if (value == null) return null;
    if (_aiFlags is EqualUnmodifiableMapView) return _aiFlags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? source;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'DailyReadiness(id: $id, userId: $userId, date: $date, sleepHours: $sleepHours, sleepQuality: $sleepQuality, restingHr: $restingHr, hrv: $hrv, steps: $steps, mood: $mood, readinessScore: $readinessScore, aiFlags: $aiFlags, source: $source, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyReadinessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.sleepHours, sleepHours) ||
                other.sleepHours == sleepHours) &&
            (identical(other.sleepQuality, sleepQuality) ||
                other.sleepQuality == sleepQuality) &&
            (identical(other.restingHr, restingHr) ||
                other.restingHr == restingHr) &&
            (identical(other.hrv, hrv) || other.hrv == hrv) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.readinessScore, readinessScore) ||
                other.readinessScore == readinessScore) &&
            const DeepCollectionEquality().equals(other._aiFlags, _aiFlags) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    date,
    sleepHours,
    sleepQuality,
    restingHr,
    hrv,
    steps,
    mood,
    readinessScore,
    const DeepCollectionEquality().hash(_aiFlags),
    source,
    createdAt,
  );

  /// Create a copy of DailyReadiness
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyReadinessImplCopyWith<_$DailyReadinessImpl> get copyWith =>
      __$$DailyReadinessImplCopyWithImpl<_$DailyReadinessImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyReadinessImplToJson(this);
  }
}

abstract class _DailyReadiness implements DailyReadiness {
  const factory _DailyReadiness({
    final String? id,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
    final DateTime? date,
    @JsonKey(name: 'sleep_hours') final double? sleepHours,
    @JsonKey(name: 'sleep_quality') final String? sleepQuality,
    @JsonKey(name: 'resting_hr') final int? restingHr,
    final int? hrv,
    final int? steps,
    final String? mood,
    @JsonKey(name: 'readiness_score') final String? readinessScore,
    @JsonKey(name: 'ai_flags')
    @JsonMapConverter()
    final Map<String, Object?>? aiFlags,
    final String? source,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$DailyReadinessImpl;

  factory _DailyReadiness.fromJson(Map<String, dynamic> json) =
      _$DailyReadinessImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date;
  @override
  @JsonKey(name: 'sleep_hours')
  double? get sleepHours;
  @override
  @JsonKey(name: 'sleep_quality')
  String? get sleepQuality;
  @override
  @JsonKey(name: 'resting_hr')
  int? get restingHr;
  @override
  int? get hrv;
  @override
  int? get steps;
  @override
  String? get mood;
  @override
  @JsonKey(name: 'readiness_score')
  String? get readinessScore;
  @override
  @JsonKey(name: 'ai_flags')
  @JsonMapConverter()
  Map<String, Object?>? get aiFlags;
  @override
  String? get source;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of DailyReadiness
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyReadinessImplCopyWith<_$DailyReadinessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
