import 'package:fitt/features/workouts/domain/entities/workout/workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cancel_workout_request_body.g.dart';

@JsonSerializable()
class CancelWorkoutRequestBody {
  const CancelWorkoutRequestBody(this.workout);
  final Workout workout;

  Map<String, dynamic> toJson() => _$CancelWorkoutRequestBodyToJson(this);
}
