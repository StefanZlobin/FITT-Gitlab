import 'package:fitt/domain/entities/workout/workout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'workout_slice.g.dart';

@JsonSerializable()
class WorkoutSlice {
  WorkoutSlice({
    required this.count,
    this.next = '',
    this.previous = '',
    required this.results,
  });

  final int count;
  final String next;
  final String previous;
  final List<Workout> results;

  factory WorkoutSlice.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSliceFromJson(json);
}
