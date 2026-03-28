import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/json/json_converters.dart';
import '../core/json/json_map.dart';

part 'workout_plan.freezed.dart';
part 'workout_plan.g.dart';

/// Row in `workout_plans`.
@freezed
class WorkoutPlan with _$WorkoutPlan {
  const factory WorkoutPlan({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'generated_at') DateTime? generatedAt,
    @JsonKey(
      name: 'week_start_date',
      fromJson: dateOnlyFromJson,
      toJson: dateOnlyToJson,
    )
    DateTime? weekStartDate,
    @JsonKey(name: 'plan_json') @JsonMapConverter() JsonMap? planJson,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _WorkoutPlan;

  factory WorkoutPlan.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanFromJson(json);
}
