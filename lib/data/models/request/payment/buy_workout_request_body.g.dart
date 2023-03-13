// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_workout_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyWorkoutRequestBody _$BuyWorkoutRequestBodyFromJson(Map<String, dynamic> json) => BuyWorkoutRequestBody(
      activity: json['activity_id'] as String,
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
      price: json['price'] as int,
    );

Map<String, dynamic> _$BuyWorkoutRequestBodyToJson(BuyWorkoutRequestBody instance) => <String, dynamic>{
      'activity_id': instance.activity,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'price': toCent(instance.price),
    };
