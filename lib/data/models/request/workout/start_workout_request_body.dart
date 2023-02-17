import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'start_workout_request_body.g.dart';

@JsonSerializable()
class StartWorkoutRequestBody {
  const StartWorkoutRequestBody(this.workout);
  final Workout workout;

  Map<String, dynamic> toJson() => _$StartWorkoutRequestBodyToJson(this);
}
