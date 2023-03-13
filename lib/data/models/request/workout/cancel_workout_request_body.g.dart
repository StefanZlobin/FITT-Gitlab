// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_workout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelWorkoutRequestBody _$CancelWorkoutRequestBodyFromJson(Map<String, dynamic> json) => CancelWorkoutRequestBody(
      Workout.fromJson(json['workout'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CancelWorkoutRequestBodyToJson(CancelWorkoutRequestBody instance) => <String, dynamic>{
      'workout': instance.workout,
    };
