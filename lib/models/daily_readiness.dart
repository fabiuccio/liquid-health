import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/json/json_converters.dart';
import '../core/json/json_map.dart';

part 'daily_readiness.freezed.dart';
part 'daily_readiness.g.dart';

/// Row in `daily_readiness`.
@freezed
class DailyReadiness with _$DailyReadiness {
  const factory DailyReadiness({
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
    @JsonKey(name: 'ai_flags') @JsonMapConverter() JsonMap? aiFlags,
    String? source,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _DailyReadiness;

  factory DailyReadiness.fromJson(Map<String, dynamic> json) =>
      _$DailyReadinessFromJson(json);
}
