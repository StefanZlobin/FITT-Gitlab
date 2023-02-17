import 'package:json_annotation/json_annotation.dart';

part 'buy_workout_by_batch_request_body.g.dart';

@JsonSerializable()
class BuyWorkoutByBatchRequestBody {
  BuyWorkoutByBatchRequestBody({
    required this.activity,
    required this.startTime,
    required this.endTime,
  });

  @JsonKey(name: 'activity_id')
  final String activity;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;

  Map<String, dynamic> toJson() => _$BuyWorkoutByBatchRequestBodyToJson(this);
}
