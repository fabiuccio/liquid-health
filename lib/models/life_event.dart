import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/json/json_converters.dart';
import '../core/json/json_map.dart';

part 'life_event.freezed.dart';
part 'life_event.g.dart';

/// Row in `life_events`.
@freezed
class LifeEvent with _$LifeEvent {
  const factory LifeEvent({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(fromJson: dateOnlyFromJson, toJson: dateOnlyToJson) DateTime? date,
    @JsonKey(name: 'event_type') String? eventType,
    String? description,
    @JsonKey(name: 'ai_recommendation') @JsonMapConverter() JsonMap? aiRecommendation,
    @Default(false) bool accepted,
    @JsonKey(name: 'revised_week') @JsonMapConverter() JsonMap? revisedWeek,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _LifeEvent;

  factory LifeEvent.fromJson(Map<String, dynamic> json) =>
      _$LifeEventFromJson(json);
}
