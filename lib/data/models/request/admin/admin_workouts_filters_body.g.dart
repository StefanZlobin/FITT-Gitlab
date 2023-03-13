// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_workouts_filters_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminWorkoutsFiltersRequestBody _$AdminWorkoutsFiltersRequestBodyFromJson(Map<String, dynamic> json) =>
    AdminWorkoutsFiltersRequestBody(
      clubIds: (json['club_ids'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDateFrom: json['start_time_gte'] == null ? null : DateTime.parse(json['start_time_gte'] as String),
      startDateTo: json['start_time_lte'] == null ? null : DateTime.parse(json['start_time_lte'] as String),
      endDateFrom: json['end_time_gte'] == null ? null : DateTime.parse(json['end_time_gte'] as String),
      endDateTo: json['end_time_lte'] == null ? null : DateTime.parse(json['end_time_lte'] as String),
      phase: $enumDecodeNullable(_$WorkoutPhaseEnumEnumMap, json['phases']),
      sortBy: $enumDecodeNullable(_$AdminWorkoutSortingEnumEnumMap, json['ordering']),
    );

Map<String, dynamic> _$AdminWorkoutsFiltersRequestBodyToJson(AdminWorkoutsFiltersRequestBody instance) =>
    <String, dynamic>{
      'club_ids': instance.clubIds,
      'start_time_gte': instance.startDateFrom?.toIso8601String(),
      'start_time_lte': instance.startDateTo?.toIso8601String(),
      'end_time_gte': instance.endDateFrom?.toIso8601String(),
      'end_time_lte': instance.endDateTo?.toIso8601String(),
      'phases': _$WorkoutPhaseEnumEnumMap[instance.phase],
      'ordering': _$AdminWorkoutSortingEnumEnumMap[instance.sortBy],
    };

const _$WorkoutPhaseEnumEnumMap = {
  WorkoutPhaseEnum.planned: 'PLANNED',
  WorkoutPhaseEnum.inProcess: 'IN_PROCESS',
  WorkoutPhaseEnum.done: 'DONE',
};

const _$AdminWorkoutSortingEnumEnumMap = {
  AdminWorkoutSortingEnum.planStartTimeAsc: '+plan_start_time',
  AdminWorkoutSortingEnum.planStartTimeDesc: '-plan_start_time',
  AdminWorkoutSortingEnum.planEndTimeAsc: '+plan_end_time',
  AdminWorkoutSortingEnum.planEndTimeDesc: '-plan_end_time',
};
