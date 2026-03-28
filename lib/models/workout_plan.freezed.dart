// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

WorkoutPlan _$WorkoutPlanFromJson(Map<String, dynamic> json) {
  return _WorkoutPlan.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlan {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'generated_at')
  DateTime? get generatedAt => throw _privateConstructorUsedError;
  @JsonKey(
    name: 'week_start_date',
    fromJson: dateOnlyFromJson,
    toJson: dateOnlyToJson,
  )
  DateTime? get weekStartDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'plan_json')
  @JsonMapConverter()
  Map<String, Object?>? get planJson => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
    WorkoutPlan value,
    $Res Function(WorkoutPlan) then,
  ) = _$WorkoutPlanCopyWithImpl<$Res, WorkoutPlan>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'generated_at') DateTime? generatedAt,
    @JsonKey(
      name: 'week_start_date',
      fromJson: dateOnlyFromJson,
      toJson: dateOnlyToJson,
    )
    DateTime? weekStartDate,
    @JsonKey(name: 'plan_json')
    @JsonMapConverter()
    Map<String, Object?>? planJson,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$WorkoutPlanCopyWithImpl<$Res, $Val extends WorkoutPlan>
    implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? generatedAt = freezed,
    Object? weekStartDate = freezed,
    Object? planJson = freezed,
    Object? isActive = null,
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
            generatedAt: freezed == generatedAt
                ? _value.generatedAt
                : generatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            weekStartDate: freezed == weekStartDate
                ? _value.weekStartDate
                : weekStartDate // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            planJson: freezed == planJson
                ? _value.planJson
                : planJson // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
            isActive: null == isActive
                ? _value.isActive
                : isActive // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$WorkoutPlanImplCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$$WorkoutPlanImplCopyWith(
    _$WorkoutPlanImpl value,
    $Res Function(_$WorkoutPlanImpl) then,
  ) = __$$WorkoutPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'generated_at') DateTime? generatedAt,
    @JsonKey(
      name: 'week_start_date',
      fromJson: dateOnlyFromJson,
      toJson: dateOnlyToJson,
    )
    DateTime? weekStartDate,
    @JsonKey(name: 'plan_json')
    @JsonMapConverter()
    Map<String, Object?>? planJson,
    @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$WorkoutPlanImplCopyWithImpl<$Res>
    extends _$WorkoutPlanCopyWithImpl<$Res, _$WorkoutPlanImpl>
    implements _$$WorkoutPlanImplCopyWith<$Res> {
  __$$WorkoutPlanImplCopyWithImpl(
    _$WorkoutPlanImpl _value,
    $Res Function(_$WorkoutPlanImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? generatedAt = freezed,
    Object? weekStartDate = freezed,
    Object? planJson = freezed,
    Object? isActive = null,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$WorkoutPlanImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String?,
        generatedAt: freezed == generatedAt
            ? _value.generatedAt
            : generatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        weekStartDate: freezed == weekStartDate
            ? _value.weekStartDate
            : weekStartDate // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        planJson: freezed == planJson
            ? _value._planJson
            : planJson // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
        isActive: null == isActive
            ? _value.isActive
            : isActive // ignore: cast_nullable_to_non_nullable
                  as bool,
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
class _$WorkoutPlanImpl implements _WorkoutPlan {
  const _$WorkoutPlanImpl({
    this.id,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(name: 'generated_at') this.generatedAt,
    @JsonKey(
      name: 'week_start_date',
      fromJson: dateOnlyFromJson,
      toJson: dateOnlyToJson,
    )
    this.weekStartDate,
    @JsonKey(name: 'plan_json')
    @JsonMapConverter()
    final Map<String, Object?>? planJson,
    @JsonKey(name: 'is_active') this.isActive = true,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _planJson = planJson;

  factory _$WorkoutPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPlanImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(name: 'generated_at')
  final DateTime? generatedAt;
  @override
  @JsonKey(
    name: 'week_start_date',
    fromJson: dateOnlyFromJson,
    toJson: dateOnlyToJson,
  )
  final DateTime? weekStartDate;
  final Map<String, Object?>? _planJson;
  @override
  @JsonKey(name: 'plan_json')
  @JsonMapConverter()
  Map<String, Object?>? get planJson {
    final value = _planJson;
    if (value == null) return null;
    if (_planJson is EqualUnmodifiableMapView) return _planJson;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'is_active')
  final bool isActive;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, userId: $userId, generatedAt: $generatedAt, weekStartDate: $weekStartDate, planJson: $planJson, isActive: $isActive, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.weekStartDate, weekStartDate) ||
                other.weekStartDate == weekStartDate) &&
            const DeepCollectionEquality().equals(other._planJson, _planJson) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    userId,
    generatedAt,
    weekStartDate,
    const DeepCollectionEquality().hash(_planJson),
    isActive,
    createdAt,
  );

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      __$$WorkoutPlanImplCopyWithImpl<_$WorkoutPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPlanImplToJson(this);
  }
}

abstract class _WorkoutPlan implements WorkoutPlan {
  const factory _WorkoutPlan({
    final String? id,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(name: 'generated_at') final DateTime? generatedAt,
    @JsonKey(
      name: 'week_start_date',
      fromJson: dateOnlyFromJson,
      toJson: dateOnlyToJson,
    )
    final DateTime? weekStartDate,
    @JsonKey(name: 'plan_json')
    @JsonMapConverter()
    final Map<String, Object?>? planJson,
    @JsonKey(name: 'is_active') final bool isActive,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$WorkoutPlanImpl;

  factory _WorkoutPlan.fromJson(Map<String, dynamic> json) =
      _$WorkoutPlanImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(name: 'generated_at')
  DateTime? get generatedAt;
  @override
  @JsonKey(
    name: 'week_start_date',
    fromJson: dateOnlyFromJson,
    toJson: dateOnlyToJson,
  )
  DateTime? get weekStartDate;
  @override
  @JsonKey(name: 'plan_json')
  @JsonMapConverter()
  Map<String, Object?>? get planJson;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
