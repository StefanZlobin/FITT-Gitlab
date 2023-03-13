// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finish_workout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinishWorkoutRequestBody _$FinishWorkoutRequestBodyFromJson(Map<String, dynamic> json) => FinishWorkoutRequestBody(
      Workout.fromJson(json['workout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinishWorkoutRequestBodyToJson(FinishWorkoutRequestBody instance) => <String, dynamic>{
      'workout': instance.workout,
    };
