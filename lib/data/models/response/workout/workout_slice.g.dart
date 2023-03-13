// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_slice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkoutSlice _$WorkoutSliceFromJson(Map<String, dynamic> json) => WorkoutSlice(
      count: json['count'] as int,
      next: json['next'] as String? ?? '',
      previous: json['previous'] as String? ?? '',
      results: (json['results'] as List<dynamic>)
          .map((e) => Workout.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WorkoutSliceToJson(WorkoutSlice instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
    };
