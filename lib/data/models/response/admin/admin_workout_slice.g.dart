// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_workout_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminWorkoutSlice _$AdminWorkoutSliceFromJson(Map<String, dynamic> json) =>
    AdminWorkoutSlice(
      count: json['count'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => AdminWorkout.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$AdminWorkoutSliceToJson(AdminWorkoutSlice instance) =>
    <String, dynamic>{
      'count': instance.count,
      'results': instance.results,
      'next': instance.next,
      'previous': instance.previous,
    };
