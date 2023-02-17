// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_workouts_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWorkoutsRequestBody _$GetWorkoutsRequestBodyFromJson(
        Map<String, dynamic> json) =>
    GetWorkoutsRequestBody(
      limit: json['limit'] as int? ?? -1,
      offset: json['offset'] as int? ?? 0,
      workoutPhase: json['phase'] as String,
      workoutSorting: json['ordering'] as String,
    );

Map<String, dynamic> _$GetWorkoutsRequestBodyToJson(
        GetWorkoutsRequestBody instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'phase': instance.workoutPhase,
      'ordering': instance.workoutSorting,
    };
