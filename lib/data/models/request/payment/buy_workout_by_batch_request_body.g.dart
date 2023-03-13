// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_workout_by_batch_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyWorkoutByBatchRequestBody _$BuyWorkoutByBatchRequestBodyFromJson(Map<String, dynamic> json) =>
    BuyWorkoutByBatchRequestBody(
      activity: json['activity_id'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$BuyWorkoutByBatchRequestBodyToJson(BuyWorkoutByBatchRequestBody instance) => <String, dynamic>{
      'activity_id': instance.activity,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };
