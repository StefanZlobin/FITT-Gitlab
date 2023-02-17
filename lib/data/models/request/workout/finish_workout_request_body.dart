import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'finish_workout_request_body.g.dart';

@JsonSerializable()
class FinishWorkoutRequestBody {
  const FinishWorkoutRequestBody(this.workout);
  final Workout workout;

  Map<String, dynamic> toJson() => _$FinishWorkoutRequestBodyToJson(this);
}
