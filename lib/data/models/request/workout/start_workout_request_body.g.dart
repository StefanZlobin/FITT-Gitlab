// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_workout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StartWorkoutRequestBody _$StartWorkoutRequestBodyFromJson(Map<String, dynamic> json) => StartWorkoutRequestBody(
      Workout.fromJson(json['workout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StartWorkoutRequestBodyToJson(StartWorkoutRequestBody instance) => <String, dynamic>{
      'workout': instance.workout,
    };
