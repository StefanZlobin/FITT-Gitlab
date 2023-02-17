import 'package:fitt/core/utils/functions/serialization.dart';
import 'package:json_annotation/json_annotation.dart';

part 'buy_workout_request_body.g.dart';

@JsonSerializable()
class BuyWorkoutRequestBody {
  BuyWorkoutRequestBody({
    required this.activity,
    required this.startTime,
    required this.endTime,
    required this.price,
  });

  @JsonKey(name: 'activity_id')
  final String activity;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  @JsonKey(toJson: toCent)
  final int price;

  Map<String, dynamic> toJson() => _$BuyWorkoutRequestBodyToJson(this);
}
