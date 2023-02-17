import 'package:json_annotation/json_annotation.dart';

enum AdminWorkoutSortingEnum {
  @JsonValue('+plan_start_time')
  planStartTimeAsc,
  @JsonValue('-plan_start_time')
  planStartTimeDesc,
  @JsonValue('+plan_end_time')
  planEndTimeAsc,
  @JsonValue('-plan_end_time')
  planEndTimeDesc,
}
