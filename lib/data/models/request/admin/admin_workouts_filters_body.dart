import 'package:fitt/core/enum/admin_workout_sorting_enum.dart';
import 'package:fitt/core/enum/workout_phase_enum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_workouts_filters_body.g.dart';

@JsonSerializable()
class AdminWorkoutsFiltersRequestBody {
  AdminWorkoutsFiltersRequestBody({
    this.clubIds,
    this.startDateFrom,
    this.startDateTo,
    this.endDateFrom,
    this.endDateTo,
    this.phase,
    this.sortBy,
  });

  @JsonKey(name: 'club_ids')
  final List<String>? clubIds;
  @JsonKey(name: 'start_time_gte')
  final DateTime? startDateFrom;
  @JsonKey(name: 'start_time_lte')
  final DateTime? startDateTo;
  @JsonKey(name: 'end_time_gte')
  final DateTime? endDateFrom;
  @JsonKey(name: 'end_time_lte')
  final DateTime? endDateTo;
  @JsonKey(name: 'phases')
  final WorkoutPhaseEnum? phase;
  @JsonKey(name: 'ordering')
  final AdminWorkoutSortingEnum? sortBy;

  factory AdminWorkoutsFiltersRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AdminWorkoutsFiltersRequestBodyFromJson(json);
  Map<String, dynamic> toJson() =>
      _$AdminWorkoutsFiltersRequestBodyToJson(this);
}
