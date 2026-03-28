// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'life_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LifeEvent _$LifeEventFromJson(Map<String, dynamic> json) {
  return _LifeEvent.fromJson(json);
}

/// @nodoc
mixin _$LifeEvent {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'event_type')
  String? get eventType => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_recommendation')
  @JsonMapConverter()
  Map<String, Object?>? get aiRecommendation =>
      throw _privateConstructorUsedError;
  bool get accepted => throw _privateConstructorUsedError;
  @JsonKey(name: 'revised_week')
  @JsonMapConverter()
  Map<String, Object?>? get revisedWeek => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this LifeEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LifeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LifeEventCopyWith<LifeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LifeEventCopyWith<$Res> {
  factory $LifeEventCopyWith(LifeEvent value, $Res Function(LifeEvent) then) =
      _$LifeEventCopyWithImpl<$Res, LifeEvent>;
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'event_type') String? eventType,
    String? description,
    @JsonKey(name: 'ai_recommendation')
    @JsonMapConverter()
    Map<String, Object?>? aiRecommendation,
    bool accepted,
    @JsonKey(name: 'revised_week')
    @JsonMapConverter()
    Map<String, Object?>? revisedWeek,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class _$LifeEventCopyWithImpl<$Res, $Val extends LifeEvent>
    implements $LifeEventCopyWith<$Res> {
  _$LifeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LifeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? eventType = freezed,
    Object? description = freezed,
    Object? aiRecommendation = freezed,
    Object? accepted = null,
    Object? revisedWeek = freezed,
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
            eventType: freezed == eventType
                ? _value.eventType
                : eventType // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            aiRecommendation: freezed == aiRecommendation
                ? _value.aiRecommendation
                : aiRecommendation // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
            accepted: null == accepted
                ? _value.accepted
                : accepted // ignore: cast_nullable_to_non_nullable
                      as bool,
            revisedWeek: freezed == revisedWeek
                ? _value.revisedWeek
                : revisedWeek // ignore: cast_nullable_to_non_nullable
                      as Map<String, Object?>?,
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
abstract class _$$LifeEventImplCopyWith<$Res>
    implements $LifeEventCopyWith<$Res> {
  factory _$$LifeEventImplCopyWith(
    _$LifeEventImpl value,
    $Res Function(_$LifeEventImpl) then,
  ) = __$$LifeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'event_type') String? eventType,
    String? description,
    @JsonKey(name: 'ai_recommendation')
    @JsonMapConverter()
    Map<String, Object?>? aiRecommendation,
    bool accepted,
    @JsonKey(name: 'revised_week')
    @JsonMapConverter()
    Map<String, Object?>? revisedWeek,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  });
}

/// @nodoc
class __$$LifeEventImplCopyWithImpl<$Res>
    extends _$LifeEventCopyWithImpl<$Res, _$LifeEventImpl>
    implements _$$LifeEventImplCopyWith<$Res> {
  __$$LifeEventImplCopyWithImpl(
    _$LifeEventImpl _value,
    $Res Function(_$LifeEventImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LifeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? date = freezed,
    Object? eventType = freezed,
    Object? description = freezed,
    Object? aiRecommendation = freezed,
    Object? accepted = null,
    Object? revisedWeek = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$LifeEventImpl(
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
        eventType: freezed == eventType
            ? _value.eventType
            : eventType // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        aiRecommendation: freezed == aiRecommendation
            ? _value._aiRecommendation
            : aiRecommendation // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
        accepted: null == accepted
            ? _value.accepted
            : accepted // ignore: cast_nullable_to_non_nullable
                  as bool,
        revisedWeek: freezed == revisedWeek
            ? _value._revisedWeek
            : revisedWeek // ignore: cast_nullable_to_non_nullable
                  as Map<String, Object?>?,
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
class _$LifeEventImpl implements _LifeEvent {
  const _$LifeEventImpl({
    this.id,
    @JsonKey(name: 'user_id') this.userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) this.date,
    @JsonKey(name: 'event_type') this.eventType,
    this.description,
    @JsonKey(name: 'ai_recommendation')
    @JsonMapConverter()
    final Map<String, Object?>? aiRecommendation,
    this.accepted = false,
    @JsonKey(name: 'revised_week')
    @JsonMapConverter()
    final Map<String, Object?>? revisedWeek,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : _aiRecommendation = aiRecommendation,
       _revisedWeek = revisedWeek;

  factory _$LifeEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$LifeEventImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  final DateTime? date;
  @override
  @JsonKey(name: 'event_type')
  final String? eventType;
  @override
  final String? description;
  final Map<String, Object?>? _aiRecommendation;
  @override
  @JsonKey(name: 'ai_recommendation')
  @JsonMapConverter()
  Map<String, Object?>? get aiRecommendation {
    final value = _aiRecommendation;
    if (value == null) return null;
    if (_aiRecommendation is EqualUnmodifiableMapView) return _aiRecommendation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool accepted;
  final Map<String, Object?>? _revisedWeek;
  @override
  @JsonKey(name: 'revised_week')
  @JsonMapConverter()
  Map<String, Object?>? get revisedWeek {
    final value = _revisedWeek;
    if (value == null) return null;
    if (_revisedWeek is EqualUnmodifiableMapView) return _revisedWeek;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'LifeEvent(id: $id, userId: $userId, date: $date, eventType: $eventType, description: $description, aiRecommendation: $aiRecommendation, accepted: $accepted, revisedWeek: $revisedWeek, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LifeEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(
              other._aiRecommendation,
              _aiRecommendation,
            ) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            const DeepCollectionEquality().equals(
              other._revisedWeek,
              _revisedWeek,
            ) &&
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
    eventType,
    description,
    const DeepCollectionEquality().hash(_aiRecommendation),
    accepted,
    const DeepCollectionEquality().hash(_revisedWeek),
    createdAt,
  );

  /// Create a copy of LifeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LifeEventImplCopyWith<_$LifeEventImpl> get copyWith =>
      __$$LifeEventImplCopyWithImpl<_$LifeEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LifeEventImplToJson(this);
  }
}

abstract class _LifeEvent implements LifeEvent {
  const factory _LifeEvent({
    final String? id,
    @JsonKey(name: 'user_id') final String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
    final DateTime? date,
    @JsonKey(name: 'event_type') final String? eventType,
    final String? description,
    @JsonKey(name: 'ai_recommendation')
    @JsonMapConverter()
    final Map<String, Object?>? aiRecommendation,
    final bool accepted,
    @JsonKey(name: 'revised_week')
    @JsonMapConverter()
    final Map<String, Object?>? revisedWeek,
    @JsonKey(name: 'created_at') final DateTime? createdAt,
  }) = _$LifeEventImpl;

  factory _LifeEvent.fromJson(Map<String, dynamic> json) =
      _$LifeEventImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
  @override
  @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson)
  DateTime? get date;
  @override
  @JsonKey(name: 'event_type')
  String? get eventType;
  @override
  String? get description;
  @override
  @JsonKey(name: 'ai_recommendation')
  @JsonMapConverter()
  Map<String, Object?>? get aiRecommendation;
  @override
  bool get accepted;
  @override
  @JsonKey(name: 'revised_week')
  @JsonMapConverter()
  Map<String, Object?>? get revisedWeek;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of LifeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LifeEventImplCopyWith<_$LifeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
